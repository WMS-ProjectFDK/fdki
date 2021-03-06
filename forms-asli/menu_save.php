<?php
session_start();
if (isset($_SESSION['id_wms'])){
	$parent = htmlspecialchars($_REQUEST['menu_parent']);
	$kode_menu = htmlspecialchars($_REQUEST['kode_menu']);
	$nama_menu  = htmlspecialchars($_REQUEST['nama_menu']);
	$link  = htmlspecialchars($_REQUEST['link']);

	$split_parent = split('-',$parent);
	$parent_id = $split_parent[0];
	$parent_name = $split_parent[1];

	$userentry = $_SESSION['id_wms'];

	include("../connect/conn.php");

	$cek = "select count(*) as j from ztb_menu where id_menu='$kode_menu'";
	$data_cek = oci_parse($connect, $cek);
	oci_execute($data_cek);
	$dt_cek = oci_fetch_object($data_cek);

	if(($dt_cek->J)=='0'){
		$sql_equ = "insert into ztb_menu (menu_parent,
							 	  menu_name,
							 	  link,
							 	  last_update,
							 	  update_by,
							 	  id_parent,
							 	  id_menu)
						values('$parent_name',
							   '$nama_menu', 
							   '$link',  
							   TO_DATE('".date('Y-m-d')."','yyyy-mm-dd'),
							   '$userentry',
							   '$parent_id',
							   '$kode_menu')";
		$data_equ = oci_parse($connect, $sql_equ);
		oci_execute($data_equ);
		if ($data_equ){
			echo json_encode("Success");
		} else {
			echo json_encode(array('errorMsg'=>'Dupplicate Name'));
		}
	}else{
		echo json_encode(array('errorMsg'=>'MENU ID Already Exist'));
	}
}else{
	echo json_encode(array('errorMsg'=>'Session Expired'));
}
?>