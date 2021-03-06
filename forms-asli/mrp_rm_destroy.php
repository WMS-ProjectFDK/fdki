<?php
session_start();
if (isset($_SESSION['id_wms'])){
	include("../connect/conn.php");
	$prf = htmlspecialchars($_REQUEST['prf_no']);
	$item = htmlspecialchars($_REQUEST['item']);

	$cek = "select count(*) JUM_PRF from prf_details where prf_no='$prf' and item_no = $item";
	$data = oci_parse($connect, $cek);
	oci_execute($data);
	$dt = oci_fetch_object($data);

	if(intval($dt->JUM_PRF) == 0){
		//delete total
		$del = "delete from prf_header where prf_no='".$prf."'";
		$data_del = oci_parse($connect, $del);
		oci_execute($data_del);

		$del2 = "delete from prf_details where prf_no='".$prf."'";
		$data_del2 = oci_parse($connect, $del2);
		oci_execute($data_del2);
	}else{
		//delete hanya item tsb
		$del2 = "delete from prf_details where prf_no='".$prf."' and item_no = $item ";
		$data_del2 = oci_parse($connect, $del2);
		oci_execute($data_del2);
	}

	$sql = "BEGIN ZSP_MRP_MATERIAL_ITEM(:V_ITEM_NO); END;";
	$stmt1 = oci_parse($connect, $sql);
	oci_bind_by_name($stmt1, ':V_ITEM_NO', $item);
	$res1 = oci_execute($stmt1);

	$sqlx = "BEGIN ZSP_MRP_PRF(:V_ITEM_NO,:V_PRF_NO); END;";
	$stmt2 = oci_parse($connect, $sqlx);
	oci_bind_by_name($stmt2, ':V_ITEM_NO', $item);
	oci_bind_by_name($stmt2, ':V_PRF_NO', $prf);
	$res2 = oci_execute($stmt2);

	echo json_encode(array('successMsg'=>'success'));
}else{
	echo json_encode(array('errorMsg'=>'Session Expired'));
}
?>