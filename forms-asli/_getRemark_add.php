<?php
	session_start();
	$result = array();
	include("../connect/conn.php");
	$type = isset($_REQUEST['type']) ? strval($_REQUEST['type']) : '';
	$rowno=0;

	$rs = "select remark_type,remark_description from remarks where 1=1 and remark_type = '$type' order by remark_type";
	$data = oci_parse($connect, $rs);
	oci_execute($data);
	$items = array();
	while($row = oci_fetch_object($data)) {
		array_push($items, $row);
		$rowno++;
	}
	$result["rows"] = $items;
	echo json_encode($result);
?>