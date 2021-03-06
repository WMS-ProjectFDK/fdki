<?php
header('Content-Type: text/plain; charset="UTF-8"');
error_reporting(0);
session_start();
include("../connect/conn.php");

if (isset($_SESSION['id_wms'])){
	$data = isset($_REQUEST['data']) ? strval($_REQUEST['data']) : '';
	$dt = json_decode(json_encode($data));
	$str = preg_replace('/\\\\\"/',"\"", $dt);
	$queries = json_decode($str);
	$user = $_SESSION['id_wms'];
	$msg = '';

	foreach($queries as $query){
		$pl_sts = $query->pl_sts;
		$pl_rowid = $query->pl_rowid;
		$pl_start = $query->pl_start;
		$pl_end = $query->pl_end;
		$pl_qty = $query->pl_qty;
		$pl_carton = $query->pl_carton;
		$pl_carton_non_full = $query->pl_carton_non_full;
		$pl_gw = $query->pl_gw;
		$pl_nw = $query->pl_nw;
		$pl_msm = $query->pl_msm;
		$pl_pallet = $query->pl_pallet;

		if ($pl_sts == 'NEW') {
			$field  = "so_no,"       	 ; $value  = "so_no,"				;
			$field .= "item_no,"     	 ; $value .= "item_no,"     		;
			$field .= "line_no,"         ; $value .= "line_no,"        		;
			$field .= "qty,"             ; $value .= "$pl_qty,"            	;
			$field .= "status,"          ; $value .= "status,"         		;
			$field .= "wo_no,"     		 ; $value .= "wo_no,"     			;
			$field .= "gw,"              ; $value .= "$pl_gw,"             	;
			$field .= "nw,"       		 ; $value .= "$pl_nw,"       		;
			$field .= "pallet,"          ; $value .= "$pl_pallet,"         	;
			$field .= "msm,"           	 ; $value .= "$pl_msm,"           	;
			$field .= "carton,"          ; $value .= "$pl_carton,"         	;
			$field .= "carton_non_full," ; $value .= "$pl_carton_non_full,"	;
			$field .= "remarks,"         ; $value .= "remarks,"        		;
			$field .= "answer_no,"       ; $value .= "answer_no,"      		;
			$field .= "start_box,"       ; $value .= "$pl_start,"      		;
			$field .= "end_box,"         ; $value .= "$pl_end,"        		;
			$field .= "box_pcs"          ; $value .= "box_pcs"         		;
			chop($field_dtl) ;             chop(d_dtl) ;

			$ins = "insert into ztb_shipping_ins ($field) select $value from ztb_shipping_ins where rowid='$pl_rowid' ";
			$data_ins = oci_parse($connect, $ins);
			oci_execute($data_ins);
			$pesan = oci_error($data_ins);
			$msg = $pesan['message'];

			if($msg != ''){
				$msg .= " New Packing list Process Error : $ins";
				break;
			}
		}else{
			$upd = "update ztb_shipping_ins set 
					qty=$pl_qty, 
					gw=$pl_gw, 
					nw=$pl_nw, 
					pallet=$pl_pallet,
					msm=$pl_msm, 
					carton=$pl_carton, 
					carton_non_full=$pl_carton_non_full, 
					start_box=$pl_start, 
					end_box=$pl_end
				where rowid = '$pl_rowid' ";
			$data_upd = oci_parse($connect, $upd);
			oci_execute($data_upd);
			$pesan = oci_error($data_upd);
			$msg = $pesan['message'];

			if($msg != ''){
				$msg .= " update Packing list Process Error : $upd";
				break;
			}
		}
	}
}else{
	$msg .= 'Session Expired';
}

if($msg != ''){
	echo json_encode($msg);
}else{
	echo json_encode('success');
}
?>