<?php
	session_start();
	include("../connect/conn.php");

	$sql = "select item_no,SHIRNK SHRINK,BLISTER,INNER,MEDIUM,OUTER,BERAT_INNER,TOLERANSI_PLUS,TOLERANSI_MINUS,ISI_INNER from ztb_itf_code";
	$data_sql = oci_parse($connect, $sql);
	oci_execute($data_sql);
	

	$data = oci_parse($connect, $sql);
	oci_execute($data);

	$items = array();
	$rowno=0;
	while($row = oci_fetch_object($data)){
	array_push($items, $row);
	$rowno++;
	}
	$result["rows"] = $items;
	echo json_encode($result);	
	
?>