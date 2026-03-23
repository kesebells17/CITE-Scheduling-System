<?php
require 'php/db.php';
$thirtyDaysAgo = date('Y-m-d', strtotime('-30 days'));
$sql = "UPDATE appointments a 
        JOIN available_slots av ON a.slot_id = av.slot_id 
        SET a.is_archived = 0 
        WHERE av.slot_date >= ? 
        AND a.is_archived = 1 
        AND a.status IN ('Completed', 'Needs Follow-Up')";

$stmt = $db->prepare($sql);
$stmt->bind_param('s', $thirtyDaysAgo);
$stmt->execute();
echo "Restored " . $stmt->affected_rows . " consultation records to the active view.";
$db->close();
?>
