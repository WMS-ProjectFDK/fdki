<?php
	include("../../connect/conn.php");
	header("Content-type: application/json");
	
	$sql = "select count(*) as j from ztb_safety_stock where year='".date('Y')."' and period=".date('m')."";
	$result = oci_parse($connect, $sql);
	oci_execute($result);
	$row = oci_fetch_object($result);
	$arrData[0] = array(
		"jum"=>rtrim($row->J)
	);
	echo json_encode($arrData);
?>