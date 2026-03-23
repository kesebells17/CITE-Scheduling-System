<?php
/**
 * Export Consultation Records to Printable/PDF format
 * Fallback to Professional HTML Print View if FPDF is missing
 */
session_start();
require_once '../php/db.php';

if (!isset($_SESSION['user_id']) || !in_array($_SESSION['usertype'], ['instructor', 'admin', 'super_admin'])) {
    die("Unauthorized access");
}

$user_type = $_SESSION['usertype'];
$user_id = intval($_SESSION['user_id']);

$instructor_id = intval($_GET['instructor_id'] ?? 0);

// Security: If instructor, they can ONLY export their own records
if ($user_type === 'instructor') {
    $instructor_id = $user_id;
}
$status = $_GET['status'] ?? '';
$date_from = $_GET['date_from'] ?? '';
$date_to = $_GET['date_to'] ?? '';

// Fetch Instructor Info if specific instructor selected
$instructor_name = "All Instructors";
if ($instructor_id > 0) {
    $stmt = $db->prepare("SELECT firstname, lastname FROM users WHERE user_id = ? AND role = 'instructor'");
    $stmt->bind_param("i", $instructor_id);
    $stmt->execute();
    $res = $stmt->get_result();
    if ($row = $res->fetch_assoc()) {
        $instructor_name = $row['firstname'] . ' ' . $row['lastname'];
    }
}

// Fetch Student Info if specific student selected
$student_id = intval($_GET['student_id'] ?? 0);
$student_name = "All Students";
if ($student_id > 0) {
    $stmt = $db->prepare("SELECT firstname, lastname FROM users WHERE user_id = ? AND role = 'student'");
    $stmt->bind_param("i", $student_id);
    $stmt->execute();
    $res = $stmt->get_result();
    if ($row = $res->fetch_assoc()) {
        $student_name = $row['firstname'] . ' ' . $row['lastname'];
    }
}

// Build Query (Similar to get_consultation_records.php)
$where = [];
$params = [];
$types = '';

if ($instructor_id > 0) {
    $where[] = "cr.instructor_id = ?";
    $params[] = $instructor_id;
    $types .= 'i';
}
if ($student_id > 0) {
    $where[] = "cr.student_id = ?";
    $params[] = $student_id;
    $types .= 'i';
}
if ($status) {
    $where[] = "cr.outcome_status = ?";
    $params[] = $status;
    $types .= 's';
}
if ($date_from) {
    $where[] = "DATE(cr.created_at) >= ?";
    $params[] = $date_from;
    $types .= 's';
}
if ($date_to) {
    $where[] = "DATE(cr.created_at) <= ?";
    $params[] = $date_to;
    $types .= 's';
}

$whereClause = count($where) > 0 ? 'WHERE ' . implode(' AND ', $where) : '';

$sql = "SELECT 
    cr.*,
    CONCAT(i.firstname, ' ', i.lastname) AS instructor_name,
    CONCAT(s.firstname, ' ', s.lastname) AS student_name,
    av.slot_date,
    CONCAT(DATE_FORMAT(av.start_time, '%H:%i'), ' - ', DATE_FORMAT(av.end_time, '%H:%i')) AS time_range
FROM consultation_records cr
JOIN users i ON cr.instructor_id = i.user_id
JOIN users s ON cr.student_id = s.user_id
JOIN appointments a ON cr.appointment_id = a.appointment_id
JOIN available_slots av ON a.slot_id = av.slot_id
$whereClause
ORDER BY cr.created_at DESC";

$stmt = $db->prepare($sql);
if ($types) {
    $stmt->bind_param($types, ...$params);
}
$stmt->execute();
$records = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

// Output Professional Printable View
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Consultation Records Report - <?php echo $instructor_name; ?></title>
    <style>
        body { font-family: 'Inter', Arial, sans-serif; color: #333; line-height: 1.6; margin: 0; padding: 40px; }
        .header { display: flex; align-items: center; justify-content: space-between; border-bottom: 2px solid #065f46; padding-bottom: 20px; margin-bottom: 30px; }
        .logo-area { display: flex; align-items: center; gap: 15px; }
        .logo-area img { height: 60px; }
        .title-area h1 { margin: 0; font-size: 20px; color: #065f46; text-transform: uppercase; }
        .title-area p { margin: 5px 0 0; font-size: 13px; color: #666; }
        
        .report-info { display: flex; justify-content: space-between; margin-bottom: 30px; background: #f8fafc; padding: 20px; border-radius: 8px; border: 1px solid #e2e8f0; }
        .info-col h3 { margin: 0 0 5px; font-size: 11px; text-transform: uppercase; color: #64748b; letter-spacing: 0.5px; }
        .info-col p { margin: 0; font-weight: 600; font-size: 14px; }

        table { width: 100%; border-collapse: collapse; margin-bottom: 30px; }
        th { background: #065f46; color: white; text-align: left; padding: 12px 10px; font-size: 12px; text-transform: uppercase; }
        td { border-bottom: 1px solid #e2e8f0; padding: 12px 10px; font-size: 13px; vertical-align: top; }
        tr:nth-child(even) { background: #fdfdfd; }
        
        .status-badge { display: inline-block; padding: 2px 8px; border-radius: 4px; font-size: 11px; font-weight: 600; }
        .status-completed { background: #dcfce7; color: #166534; }
        .status-followup { background: #fef9c3; color: #854d0e; }

        .summary-text { font-style: italic; color: #475569; font-size: 12px; }
        
        @media print {
            body { padding: 0; }
            .no-print { display: none; }
            .report-info { border: none; background: #fff; padding: 10px 0; }
        }
        
        .no-print { margin-bottom: 20px; display: flex; gap: 10px; }
        .btn { padding: 10px 20px; border-radius: 6px; border: none; cursor: pointer; font-weight: 600; font-size: 14px; transition: 0.2s; }
        .btn-print { background: #065f46; color: white; }
        .btn-print:hover { background: #047857; }
        .btn-close { background: #f1f5f9; color: #475569; text-decoration: none; display: inline-block; }
    </style>
</head>
<body>
    <div class="no-print">
        <button onclick="window.print()" class="btn btn-print"><i class="fas fa-print"></i> Print / Save as PDF</button>
        <a href="javascript:window.close()" class="btn btn-close">Close Tab</a>
    </div>

    <div class="header">
        <div class="logo-area">
            <img src="../images/citenew.png" alt="CITE">
            <div class="title-area">
                <h1>Consultation Records Report</h1>
                <p>CITE Faculty & Staff Scheduling System</p>
            </div>
        </div>
        <div style="text-align: right;">
            <p style="font-size: 12px; color: #666; margin: 0;">Report Date: <?php echo date('F d, Y'); ?></p>
            <p style="font-size: 11px; color: #999; margin: 5px 0 0;">System Generated</p>
        </div>
    </div>

    <div class="report-info">
        <div class="info-col">
            <h3>Instructor</h3>
            <p><?php echo htmlspecialchars($instructor_name); ?></p>
        </div>
        <div class="info-col">
            <h3>Student</h3>
            <p><?php echo htmlspecialchars($student_name); ?></p>
        </div>
        <div class="info-col">
            <h3>Date Range</h3>
            <p><?php 
                if ($date_from && $date_to) echo date('M d, Y', strtotime($date_from)) . ' - ' . date('M d, Y', strtotime($date_to));
                elseif ($date_from) echo 'From ' . date('M d, Y', strtotime($date_from));
                elseif ($date_to) echo 'Until ' . date('M d, Y', strtotime($date_to));
                else echo 'Full History';
            ?></p>
        </div>
        <div class="info-col">
            <h3>Outcome Filter</h3>
            <p><?php echo $status ?: 'All Status'; ?></p>
        </div>
        <div class="info-col">
            <h3>Total Records</h3>
            <p><?php echo count($records); ?></p>
        </div>
    </div>

    <table>
        <thead>
            <tr>
                <th style="width: 100px;">Date</th>
                <th style="width: 150px;">Instructor</th>
                <th style="width: 150px;">Student</th>
                <th style="width: 100px;">Outcome</th>
                <th>Discussion Summary</th>
            </tr>
        </thead>
        <tbody>
            <?php if (empty($records)): ?>
                <tr>
                    <td colspan="5" style="text-align: center; padding: 40px; color: #94a3b8;">No consultation records found matching the criteria.</td>
                </tr>
            <?php else: ?>
                <?php foreach ($records as $r): ?>
                    <tr>
                        <td>
                            <strong><?php echo $r['slot_date']; ?></strong><br>
                            <span style="font-size: 11px; color: #64748b;"><?php echo $r['time_range']; ?></span>
                        </td>
                        <td><?php echo htmlspecialchars($r['instructor_name']); ?></td>
                        <td><?php echo htmlspecialchars($r['student_name']); ?></td>
                        <td>
                            <span class="status-badge <?php echo $r['outcome_status'] === 'Completed' ? 'status-completed' : 'status-followup'; ?>">
                                <?php echo $r['outcome_status']; ?>
                            </span>
                        </td>
                        <td>
                            <div class="summary-text"><?php echo nl2br(htmlspecialchars($r['summary_of_discussion'])); ?></div>
                            <?php if ($r['action_taken']): ?>
                                <div style="margin-top: 8px; font-size: 11px;">
                                    <strong>Action:</strong> <?php echo htmlspecialchars($r['action_taken']); ?>
                                </div>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>

    <div style="margin-top: 50px; border-top: 1px solid #eee; padding-top: 20px; font-size: 11px; color: #94a3b8; text-align: center;">
        This is a system-generated report from the CITE Faculty & Staff Scheduling System. 
        PHINMA Cagayan de Oro College.
    </div>

    <script>
        // Auto-show print dialog if user wants
        // window.onload = () => { window.print(); }
    </script>
</body>
</html>
<?php
$db->close();
?>
