<?php
	session_start();
	$id_kanban = $_SESSION['id_kanban'];

	include("../../connect/conn.php");

	$sql = "select a.id, a.id_plan, a.id_print, a.ASSY_LINE, a.CELL_TYPE, a.PALLET, a.TANGGAL_PRODUKSI, a.QTY_ACT_PERPALLET, a.QTY_ACT_PERBOX, 
		a.START_DATE, nvl(a.END_DATE, 'BELUM<br/>SELESAI') as END_DATE from ztb_assy_kanban a
		where a.worker_id1='$id_kanban' and rownum <= 3
		order by id desc";
		//and id=(select max(id) from ztb_assy_kanban where worker_id1='$id_kanban')";
	$data = oci_parse($connect, $sql);
	oci_execute($data);

	$items = array();
	$rowno=0;
	while($row = oci_fetch_object($data)){
		array_push($items, $row);
		$qty_act_p = $items[$rowno]->QTY_ACT_PERPALLET;
		$items[$rowno]->QTY_ACT_PERPALLET = number_format($qty_act_p);

		$qty_act_b = $items[$rowno]->QTY_ACT_PERBOX;
		$items[$rowno]->QTY_ACT_PERBOX = number_format($qty_act_b);

		$a = $items[$rowno]->START_DATE;
		$items[$rowno]->START_DATE = str_replace(' ', '<br/>', $a);

		$z = $items[$rowno]->END_DATE;
		if ($z == 'BELUM<br/>SELESAI'){
			$items[$rowno]->END_DATE = '<span style="color:red;font-size:11px;"><b>'.$z.'</b></span>';
		}else{
			$items[$rowno]->END_DATE = str_replace(' ', '<br/>', $z);	
		}
		
		$rowno++;
	}
	$result["rows"] = $items;
	echo json_encode($result);
?>