<?php
session_start();
if (isset($_SESSION['id_wms'])){
	include("../connect/conn.php");

	$po_sts = htmlspecialchars($_REQUEST['po_sts']);
	$po_supp = htmlspecialchars($_REQUEST['po_supp']);
	$po_pterm = htmlspecialchars($_REQUEST['po_pterm']);
	$po_curr = htmlspecialchars($_REQUEST['po_curr']);
	$po_rate = htmlspecialchars($_REQUEST['po_rate']);
	$po_country = htmlspecialchars($_REQUEST['po_country']);
	$po_attn = htmlspecialchars($_REQUEST['po_attn']);
	$po_shipto = htmlspecialchars($_REQUEST['po_shipto']);
	$po_tterm = htmlspecialchars($_REQUEST['po_tterm']);
	$po_no = htmlspecialchars($_REQUEST['po_no']);
	$po_line = htmlspecialchars($_REQUEST['po_line']);
	$po_date = htmlspecialchars($_REQUEST['po_date']);
	$po_di_type = htmlspecialchars($_REQUEST['po_di_type']);
	$po_trans = htmlspecialchars($_REQUEST['po_trans']);
	$po_remark = htmlspecialchars($_REQUEST['po_remark']);
	$po_ship_mark = htmlspecialchars($_REQUEST['po_ship_mark']);
	$po_item = htmlspecialchars($_REQUEST['po_item']);
	$po_unit = htmlspecialchars($_REQUEST['po_unit']);
	$po_orign = htmlspecialchars($_REQUEST['po_orign']);
	$po_price = htmlspecialchars($_REQUEST['po_price']);
	$po_curr_item = htmlspecialchars($_REQUEST['po_curr_item']);
	$po_qty = htmlspecialchars($_REQUEST['po_qty']);
	$po_eta = htmlspecialchars($_REQUEST['po_eta']);
	$po_prf = htmlspecialchars($_REQUEST['po_prf']);
	$po_prf_line = htmlspecialchars($_REQUEST['po_prf_line']);
	$po_dt_code = htmlspecialchars($_REQUEST['po_dt_code']);
	$amt_o = htmlspecialchars($_REQUEST['amt_o']);
	$amt_l = htmlspecialchars($_REQUEST['amt_l']);

	$now=date('Y-m-d H:i:s');
	$user = $_SESSION['id_wms'];
	$now2=date('Y-m-d');

	if($po_prf == '' and $po_prf_line == ''){
		$prf='-';
		$prf_line='0';
	}else{
		$prf=$po_prf;
		$prf_line=$po_prf_line;
	}

	$split_payterm = split('-', $po_pterm);
	$pday = $split_payterm[0];
	$pdes = $split_payterm[1];

	if($po_sts == 'HEADER'){
		// insert ke po_header
		$field_po  = "supplier_code,"  ; 	$value_po  = "'$po_supp',"						 ;
		$field_po .= "po_no,"          ; 	$value_po .= "'$po_no',"						 ;
		$field_po .= "po_date,"        ; 	$value_po .= "TO_DATE('$po_date','yyyy-mm-dd')," ;
		$field_po .= "curr_code,"      ; 	$value_po .= "$po_curr,"						 ;
		$field_po .= "ex_rate,"   	   ; 	$value_po .= "$po_rate,"						 ;
		$field_po .= "tterm,"          ; 	$value_po .= "'$po_tterm',"						 ;
		$field_po .= "pdays,"          ; 	$value_po .= "$pday,"							 ;
		$field_po .= "pdesc,"          ; 	$value_po .= "'$pdes',"							 ;
		$field_po .= "req,"      	   ; 	$value_po .= "'$user',"							 ;
		$field_po .= "remark1,"        ; 	$value_po .= "'$po_remark',"					 ;
		$field_po .= "marks1,"         ; 	$value_po .= "'$po_ship_mark',"					 ;
		$field_po .= "amt_o,"          ; 	$value_po .= "$amt_o,"							 ;
		$field_po .= "amt_l,"          ; 	$value_po .= "$amt_l,"							 ;
		$field_po .= "attn,"      	   ; 	$value_po .= "'$po_attn',"						 ;
		$field_po .= "person_code,"    ; 	$value_po .= "'$user',"							 ;
		$field_po .= "pby,"            ; 	$value_po .= "'$po_tterm',"						 ;
		$field_po .= "upto_date,"      ; 	$value_po .= "TO_DATE('$now2','yyyy-mm-dd'),"	 ;
		$field_po .= "reg_date,"       ; 	$value_po .= "TO_DATE('$now2','yyyy-mm-dd'),"	 ;
		$field_po .= "section_code,"   ; 	$value_po .= "100,"								 ;
		$field_po .= "shipto_code,"    ; 	$value_po .= "$po_shipto,"						 ;
		$field_po .= "transport,"      ; 	$value_po .= "$po_trans,"						 ;
		$field_po .= "di_output_type"  ; 	$value_po .= "$po_di_type"						 ;
		chop($field_po) ;              		chop($value_po) ;

		$ins1  = "insert into po_header ($field_po) 
			select $value_po from dual where not exists (select * from po_header where po_no='$po_no')";
		echo $ins1;
		$data_ins1 = oci_parse($connect, $ins1);
		oci_execute($data_ins1);
		//echo $ins1."<br/>";	
	}else{
		//INSERT DETAILS 
		$field_dtl  = "po_no,"              ; $value_dtl  = "'$po_no',"								;
		$field_dtl .= "line_no,"            ; $value_dtl .= "$po_line,"								;
		$field_dtl .= "prf_no,"             ; $value_dtl .= "'$prf',"								;
		$field_dtl .= "prf_line_no,"        ; $value_dtl .= "$prf_line,"							;
		$field_dtl .= "item_no,"            ; $value_dtl .= "$po_item,"								;
		$field_dtl .= "origin_code,"        ; $value_dtl .= "'$po_orign',"							;
		$field_dtl .= "qty,"                ; $value_dtl .= "$po_qty,"								;
		$field_dtl .= "uom_q,"              ; $value_dtl .= "'$po_unit',"							;
		$field_dtl .= "u_price,"            ; $value_dtl .= "$po_price,"							;
		$field_dtl .= "amt_o,"            	; $value_dtl .= "$amt_o,"								;
		$field_dtl .= "amt_l,"            	; $value_dtl .= "$amt_l,"								;
		$field_dtl .= "eta,"            	; $value_dtl .= "to_date('$po_eta','yyyy-mm-dd'),"		;
		$field_dtl .= "schedule,"           ; $value_dtl .= "to_date('$po_eta','yyyy-mm-dd'),"		;
		$field_dtl .= "gr_qty,"             ; $value_dtl .= "0,"									;
		$field_dtl .= "sh_qty,"             ; $value_dtl .= "0,"									;
		$field_dtl .= "pret_qty,"           ; $value_dtl .= "0,"									;
		$field_dtl .= "bal_qty,"            ; $value_dtl .= "$po_qty,"								;
		$field_dtl .= "upto_date,"          ; $value_dtl .= "TO_DATE('$now2','yyyy-mm-dd'),"		;
		$field_dtl .= "reg_date,"           ; $value_dtl .= "TO_DATE('$now2','yyyy-mm-dd'),"		;
		$field_dtl .= "carved_stamp"        ; $value_dtl .= "'$po_dt_code'"							;
		chop($field_dtl) ;                 	chop($value_dtl) ;

		$ins2 = "insert into po_details ($field_dtl) 
			select $value_dtl from dual where not exists (select * from po_details where po_no='$po_no' and line_no=$po_line)" ;
		$data_ins2 = oci_parse($connect, $ins2);
		oci_execute($data_ins2);
		//echo $ins2;	

		$upd = "update PRF_DETAILS set REMAINDER_QTY = QTY - $po_qty, UPTO_DATE = sysdate
			 	where PRF_NO = '$prf' and LINE_NO = $prf_line";
		$data_upd = oci_parse($connect, $upd);
		oci_execute($data_upd);
		echo $upd;	
	}
	
	echo json_encode(array('successMsg'=>'success'));
}else{
	echo json_encode(array('errorMsg'=>'Session Expired'));
}
?>