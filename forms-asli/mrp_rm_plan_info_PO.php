<?php
	ini_set('max_execution_time', -1);
	session_start();
	//item_no=1170117&tgl_plan=2017-11-26
	$item_no = isset($_REQUEST['item_no']) ? strval($_REQUEST['item_no']) : '';
	$tgl_plan = isset($_REQUEST['tgl_plan']) ? strval($_REQUEST['tgl_plan']) : '';

	include("../connect/conn.php");

	$cek = "select a.po_no, a.po_date, b.eta, a.curr_code, c.curr_short, a.ex_rate, b.item_no, i.item, i.description,
		b.uom_q, u.unit, b.qty, b.u_price, b.amt_o, b.amt_l, b.prf_no, b.prf_line_no
		from po_header a
		inner join po_details b on a.po_no=b.po_no
		INNER JOIN ITEM i ON b.ITEM_NO=I.ITEM_NO
		INNER JOIN UNIT u ON b.uom_q = u.unit_code
		inner join currency c on a.curr_code=c.curr_code
		where b.ITEM_NO = $item_no AND TO_CHAR(b.eta,'YYYY-MM-DD')= '$tgl_plan' " ;
	$data_cek = oci_parse($connect, $cek);
	oci_execute($data_cek);

	$items = array();
	$rowno=0;

	while($row = oci_fetch_object($data_cek)){
		array_push($items, $row);
		$Q = $items[$rowno]->QTY;
		$items[$rowno]->QTY = '<b>'.number_format($Q).'</b>';

		$o = $items[$rowno]->AMT_O;
		$items[$rowno]->AMT_O = number_format($o);

		$l = $items[$rowno]->AMT_L;
		$items[$rowno]->AMT_L = number_format($l);

		$prf = $items[$rowno]->PRF_NO;
		$prf_line = $items[$rowno]->PRF_LINE_NO;
		if($prf == '' OR is_null($prf)){
			$items[$rowno]->PRF_NO = 'NON-PRF';
		}else{
			$items[$rowno]->PRF_NO = $prf.' ('.$prf_line.')';	
		}
		
		$rowno++;
	}
	
	$result["rows"] = $items;
	echo json_encode($result);
?>