<?php
	header("Content-type: application/json");
	include("../../connect/conn.php");
	$arrData = array();
	$arrNo = 0;

	$ty_gel = isset($_REQUEST['ty_gel']) ? strval($_REQUEST['ty_gel']) : '';
	$no_tag = isset($_REQUEST['no_tag']) ? strval($_REQUEST['no_tag']) : '';
	$typ_zn = isset($_REQUEST['typ_zn']) ? strval($_REQUEST['typ_zn']) : '';

	$jum_adukan = "select count(*) jumlah_adukan from ztb_assy_anode_gel 
		where to_date(to_char(date_prod, 'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss') between 
		(select to_date(to_char(sysdate, 'yyyy-mm-dd')||' 07:00:00', 'yyyy-mm-dd hh24:mi:ss') from dual) AND
		(select to_date(to_char(sysdate+1, 'yyyy-mm-dd')||' 07:00:00', 'yyyy-mm-dd hh24:mi:ss') from dual)";
	$data_jum = oci_parse($connect, $jum_adukan);
	oci_execute($data_jum);
	$row_jum=oci_fetch_object($data_jum);
	$jumlah_aduk = $row_jum->JUMLAH_ADUKAN;

	$cek = "select count(*) as j from
		(
		select a.id, a.density from ztb_assy_anode_gel a
		inner join ztb_assy_anode_gel_sts b on a.no_tag = b.no_tag AND a.type_gel= b.type_gel
		where a.no_tag=$no_tag AND a.type_gel='$ty_gel' AND a.type_zn='$typ_zn'
		AND a.assy_line is null AND date_use is null
		)";
	$data_cek = oci_parse($connect, $cek);
	oci_execute($data_cek);
	$row_cek=oci_fetch_array($data_cek);

	if($row_cek[0] == 0){
		$arrData[$arrNo] = array(
			'id'=>'ERROR',
			'density'=>'ANODE GEL SUDAH DI SCAN',
			'jum'=>$jumlah_aduk

		);
	}else{
		$sql = "select a.id, a.density from ztb_assy_anode_gel a
			inner join ztb_assy_anode_gel_sts b on a.no_tag = b.no_tag AND a.type_gel= b.type_gel
			where a.no_tag=$no_tag AND a.type_gel='$ty_gel' AND a.type_zn='$typ_zn'
			AND a.assy_line is null AND date_use is null";
		$result = oci_parse($connect, $sql);
		oci_execute($result);
		
		while ($row=oci_fetch_array($result)){
			$arrData[$arrNo] = array(
				"id"=>rtrim($row[0]), 
				"density"=>rtrim($row[1]),
				"jum"=>$jumlah_aduk
			);
			$arrNo++;
		}	
	}
	echo json_encode($arrData);
?>