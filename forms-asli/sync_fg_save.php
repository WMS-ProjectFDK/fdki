<?php
session_start();
if (isset($_SESSION['id_wms'])){
	include("../connect/conn.php");

	$qry = "update ztb_wh_kanban_trans_fg a set a.flag = 1 where a.flag = 0 and
		exists (select * from production_income where slip_no=a.slip_no) ";
	$result = oci_parse($connect, $qry);
  	oci_execute($result);
  	
}else{
	echo json_encode(array('errorMsg'=>'Session Expired'));
}
?>