<?php
session_start();
include("../connect/conn.php");
header("Content-type: application/json");

$date_prod = isset($_REQUEST['date_prod']) ? strval($_REQUEST['date_prod']) : '';
$Line = isset($_REQUEST['Line']) ? strval($_REQUEST['Line']) : '';
$cell_type = isset($_REQUEST['cell_type']) ? strval($_REQUEST['cell_type']) : '';
$sts = isset($_REQUEST['sts']) ? strval($_REQUEST['sts']) : '';

$date = split('-',$date_prod);

$Hari = intval($date[2]);
$Bulan = intval($date[1]);
$Tahun = intval($date[0]);

if ($cell_type!=''){
	$cell = "a.cell_type='$cell_type' and ";
}else{
	$cell = "";
}

$string = "where  a.tanggal='$Hari' and  a.bulan='$Bulan' and  a.tahun='$Tahun' and replace(a.assy_line,'#','-') = '$Line' and $cell USED=1";

$sql_h = "select a.*, ceil(a.qty/b.qty_box) as JumlahBox,ceil(qty/ b.qty_total)+2 as JumlahPallet, b.qty_total, b.qty_box_pallet, b.qty_box from ztb_assy_plan a 
inner join ztb_assy_set_pallet b on a.assy_line = b.assy_line $string ";

$result = oci_parse($connect, $sql_h);
oci_execute($result);

$arrData = array();		$arrID = array();
$noid = '';
$arrNo = 0;		$rowno=0;

if($sts != 'LEBIH'){
	while ($data=oci_fetch_object($result)){
		$tgl = $data->TANGGAL."/".$data->BULAN."/".$data->TAHUN;
		$jmlperPallet = intval($data->JUMLAHPALLET);
		$qtyperpallet = $data->QTY_TOTAL;
		$qty = $data->QTY;
		$qty_b = $data->QTY_BOX;
		$no_plt=1;

		for ($i=1; $i<=$jmlperPallet; $i++) {
			if($qty > 0){
				$t = floatval($qty-$qtyperpallet);
				$ins = "insert into ztb_assy_print(asyline, cell_type, date_prod, pallet, qty, id_plan,box, upto_date)
					VALUES ('".$data->ASSY_LINE."', '".$data->CELL_TYPE."', to_date('".$date_prod."','YYYY-MM-DD'), ".$i.", ".$qtyperpallet.", '".$data->ID_PLAN."', ".$data->QTY_BOX_PALLET.", '".date('Y-m-d H:i:s')."' )";
				$data_in = oci_parse($connect, $ins);
				oci_execute($data_in);

				$qry = "select max(id) as id_print from ztb_assy_print where id_plan='".$data->ID_PLAN."' and pallet= ".$i." ";
				$data_cek = oci_parse($connect, $qry);
				oci_execute($data_cek);	
				$dt = oci_fetch_object($data_cek);
				array_push($arrID, $dt->ID_PRINT);
			}else{
				$ins = "insert into ztb_assy_print(asyline, cell_type, date_prod, pallet, qty, id_plan,box, upto_date)
					VALUES ('".$data->ASSY_LINE."', '0', to_date('".$date_prod."','YYYY-MM-DD'), ".$i.", ".$data->QTY_TOTAL.", 'LEBIH', ".$data->QTY_BOX_PALLET.", '".date('Y-m-d H:i:s')."' )";
				$data_in = oci_parse($connect, $ins);
				oci_execute($data_in);

				$qry = "select max(id) as id_print from ztb_assy_print where id_plan='LEBIH' and pallet= ".$i." ";
				$data_cek = oci_parse($connect, $qry);
				oci_execute($data_cek);	
				$dt = oci_fetch_object($data_cek);
				array_push($arrID, $dt->ID_PRINT);
			}

			$qty = $t;
			$rowno++;
		}
	}
}else{
	$repl_line = str_replace("-", "#", $Line);
	$rowno = 1;
	$sql = "select * from ztb_assy_set_pallet where assy_line='$repl_line'";
	$data = oci_parse($connect, $sql);
	oci_execute($data);	
	$row = oci_fetch_object($data);

	for ($i=1; $i <=9 ; $i++) { 
		$ins = "insert into ztb_assy_print(asyline, cell_type, date_prod, pallet, qty, id_plan,box, upto_date)
			select '$repl_line', '0', sysdate, ".$i.", ".$row->QTY_TOTAL.", 'LEBIH', ".$row->QTY_BOX.", '".date('Y-m-d H:i:s')."' from dual";
		$data_in = oci_parse($connect, $ins);
		oci_execute($data_in);

		$qry = "select max(id) as id_print from ztb_assy_print where id_plan='LEBIH' and pallet= ".$i." ";
		$data_cek = oci_parse($connect, $qry);
		oci_execute($data_cek);	
		$dt = oci_fetch_object($data_cek);
		array_push($arrID, $dt->ID_PRINT);
	}
}


if($rowno != 0){
	$noid = implode("-",$arrID);
	$arrData[$arrNo] = array("kode"=>$noid);
}else{
	$arrData[$arrNo] = array("kode"=>'FAILED');
}
echo json_encode($arrData);
?>