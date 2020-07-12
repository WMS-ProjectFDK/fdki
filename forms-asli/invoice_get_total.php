<?php
	include("../connect/conn.php");
	$id = isset($_REQUEST['id']) ? strval($_REQUEST['id']) : '';
	
	$sql = "

		select inv_no INVOICE,i.answer_no,i.item_no,i.qty plan,sum(pi.slip_quantity) available,case when i.qty > sum(pi.slip_quantity) then 'N' else 'Y' end stat
		from indication i
		inner join answer an on i.answer_no = an.answer_no 
		inner join production_income pi on an.work_no = pi.wo_no
		where inv_no = '$id'
		group by i.qty,i.item_no,i.answer_no,inv_no
		";
		
	$data = oci_parse($connect, $sql);
	oci_execute($data);
	$result = array();		$arrData = array();
	$total_inv = 0;		$total_pln = 0;		$total_avl = 0; $answer = ''; $stat = '';
	while ($row=oci_fetch_object($data)){
		$total_inv += $row->PLAN;
		$total_pln += $row->PLAN;
		$total_avl += $row->AVAILABLE;
		$answer = $row->ANSWER_NO;
		$stat = $row->STAT;
		if ($stat == 'Y'){
			$ins_cc = "update indication set remark = '' where answer_no = '$answer'";
			$data_cc = oci_parse($connect, $ins_cc);
			oci_execute($data_cc);
		};
		
		
	}

	if($total_avl == $total_pln){
		$arrData[0]->STS = 'Y';
	}else{
		$arrData[0]->STS = 'N';
	}

	$arrData[0]->INVOICE = number_format($total_inv);
	$arrData[0]->PLAN = number_format($total_pln);
	$arrData[0]->AVAILABLE = number_format($total_avl);

	$result["rows"] = $arrData;
	echo json_encode($result);
?>