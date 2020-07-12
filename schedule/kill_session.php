<?php
set_time_limit(0);
include("../connect/conn.php");
date_default_timezone_set('Asia/Jakarta');
$v = 'v$session';
$sql = "select sid,serial# from $v where username='PORDER'";
$stmt = oci_parse($connect, $sql);
$res = oci_execute($stmt);

while($dt = oci_fetch_array($stmt) ) {
	$exe = "ALTER SYSTEM KILL SESSION '$dt[0],$dt[1]' ";
	$st_exe = oci_parse($connect, $exe);
	oci_execute($st_exe);
	echo $exe;
}

echo $sql;
echo "<br/>".date("Y-m-d H:i:s").' - FINISH<br/>';
?>