<?php 
//error_reporting(0);
include("../connect/conn.php");
session_start();
date_default_timezone_set('Asia/Jakarta');
$user_name = $_SESSION['id_wms'];
$nama_user = $_SESSION['name_wms'];

$si = isset($_REQUEST['si']) ? strval($_REQUEST['si']) : '';
$do = isset($_REQUEST['do']) ? strval($_REQUEST['do']) : '';
$si_sts = isset($_REQUEST['si_sts']) ? strval($_REQUEST['si_sts']) : '';
$print_mark = isset($_REQUEST['print_mark']) ? strval($_REQUEST['print_mark']) : '';

$result = array();


if($si_sts == 'final_si'){
	$sql_con = "select count( distinct case when container_no is null then '0' else container_no end)  || 'x' || containers  ContainerJum
		from ztb_shipping_detail where ppbe_no = 
		(select distinct crs_remark from answer a inner join indication b on a.answer_no = b.answer_no where b.inv_no='$do')
		group by containers";
}else{
	$sql_con = "select count( distinct container_no)  || 'x' || containers  ContainerJum
		from ztb_shipping_detail where ppbe_no = '$do'
		group by containers ";	
}

if($si_sts == 'final_si'){
	$sql_h = "select distinct a.*,b.*,c.*, cs.description as desc_size, cm.description as desc_method
		, --LIST_COLLECT(ans.SI_NO, ', ') 
		b.cust_si_no as si_no_fix,
		replace(sdoc_bl.doc_detail,chr(10),'<br>') doc_detail_bl,
	    replace(sdoc_co.doc_detail,chr(10),'<br>') doc_detail_co,
	    replace(sdoc_iv.doc_detail,chr(10),'<br>') doc_detail_iv,
	    replace(sdoc_bl.doc_name,chr(10),'<br>') doc_name_bl,
	    replace(sdoc_co.doc_name,chr(10),'<br>') doc_name_co,
	    replace(sdoc_iv.doc_name,chr(10),'<br>') doc_name_iv,
		case when b.shipping_type <> 'LCL' then '' else rtrim(replace(b.special_info,chr(10),'<br>'),'|') end as special_info,
		b.notify_name_2 ||'<br/>  '|| b.notify_addr1_2||'<br/>'|| b.notify_addr2_2||'<br/>'|| b.notify_addr3_2||'<br/>'||b.notify_tel_2||'<br/>'|| b.notify_fax_2||'<br/>'||b.notify_attn_2 NOTIFY_NAME_2, 
		rtrim(replace(a.ship_name,chr(10),'<br>'),'|') as ship_name, ans.crs_remark
		from do_header a
	  	inner join si_header b on a.si_no=b.si_no
	  	left outer join (select si_no,doc_detail,doc_name from si_doc where doc_type='BL')sdoc_bl on sdoc_bl.si_no = b.si_no
        left outer join (select si_no,doc_detail,doc_name from si_doc where doc_type='CO')sdoc_co on sdoc_co.si_no = b.si_no
        left outer join (select si_no,doc_detail,doc_name from si_doc where doc_type='IV')sdoc_iv on sdoc_iv.si_no = b.si_no
	  	inner join forwarder_letter c on a.do_no = c.do_no
	  	left join cargo_size cs on c.cargo_size1 = cs.size_type
		left join cargo_method cm on c.cargo_type1 = cm.method_type
		left outer join answer ans on b.si_no = ans.si_no
		where a.do_no='$do' ";

	$qry = "select aa.do_no, etd, eta, port_loading, final_destination, dod2.description, --aa.panjang_pallet, aa.lebar_pallet,
		sum(ceil(carton)) as carton,
		sum(ceil(pallet)) as pallet,
		sum(qty) as qty,
		sum(round(gw,2)) as gw, uom_gw,
		sum(round(nw,2)) as nw, uom_nw,
		sum(msm) as msm from (
		select doh.do_no, doh.etd, doh.eta, doh.port_loading, doh.final_destination, dod.answer_no1, dod.item_no, dod.description, 
    	--zti.panjang_pallet, lebar_pallet, 
    	plh.qty, zsi.carton, zsi.pallet, 
    	plh.gross as gw, un2.unit_pl as uom_gw, plh.net as nw, un1.unit_pl as uom_nw, plh.measurement as msm
		from do_header doh
		inner join do_details dod on doh.do_no = dod.do_no
		left join do_pl_header plh on dod.do_no = plh.do_no and dod.line_no = plh.pl_line_no
   	 	left join ztb_shipping_ins zsi on dod.answer_no1 = zsi.answer_no
		left outer join ztb_item zti on dod.item_no= zti.item_no
		left join unit un1 on plh.net_uom = un1.unit_code
    	left join unit un2 on plh.gross_uom = un2.unit_code
		where doh.do_no='$do'
		) aa
		left outer join (select do_no, description from do_details where do_no='$do'
		and description is not null) dod2 on aa.do_no = dod2.do_no
		group by aa.do_no, eta, etd, port_loading, final_destination, dod2.description, --aa.panjang_pallet, aa.lebar_pallet,
		uom_nw, uom_gw";

	$qry_pallet = "select distinct 'Pallet Dimension : '|| panjang_pallet ||' x '|| lebar_pallet || '<br>' as pallet
		from ztb_item where item_no in (select distinct  item_no from do_details where do_no='$do')";

	$qry_remark = "select rtrim(replace(marks,chr(10),'<br/>'),'|') as remark from do_marks where do_no='$do' order by mark_no asc";

	$sts_doc = 'F I N A L&nbsp;&nbsp;&nbsp;&nbsp;S I';
	$inv_no = $do;
	
}else{
	$sql_h = "select distinct ans.crs_remark as description, sih.shipper_name, sih.shipper_addr1, sih.shipper_addr2,
		sih.consignee_name, sih.consignee_addr1, sih.consignee_addr2, sih.consignee_addr3||'<br />'||sih.consignee_tel ||'<br />'||sih.consignee_FAX consignee_addr3, '' as booking_no, '' as si_no_fix,
		sih.notify_name, sih.notify_addr1, sih.notify_addr2, sih.notify_addr3, sih.notify_tel, sih.notify_fax,
		sih.forwarder_name, sih.forwarder_tel, sih.forwarder_fax, sih.forwarder_attn, 
		rtrim(replace(ans.vessel,chr(10),'<br>'),'|') as ship_name, sih.load_port, sih.emkl_name, sih.emkl_tel, sih.emkl_fax, sih.emkl_attn, sysdate as do_date,
		sih.shipping_type as desc_method, sih.disch_port, sih.final_dest, sih.cust_si_no as SI_NO_FIX, 
		payment_type, payment_remark, sih.shipping_type, zsd.containers, zsd.jum, case when shipping_type <> 'LCL' then '' else rtrim(replace(sih.special_info,chr(10),'<br>'),'|') end as special_info,
		sih.notify_name_2 ||'<br />  '|| sih.notify_addr1_2||'<br />'|| sih.notify_addr2_2||'<br />'|| sih.notify_addr3_2||'<br />'||sih.notify_tel_2||'<br />'|| sih.notify_fax_2||'<br/>'||sih.notify_attn_2 NOTIFY_NAME_2,
		'<br />  '|| replace(sdoc_bl.doc_detail,chr(10),'<br>&nbsp;&nbsp;&nbsp;') doc_detail_bl,
		'<br />  '|| replace(sdoc_co.doc_detail,chr(10),'<br>&nbsp;&nbsp;&nbsp;') doc_detail_co,
    	'<br />  '|| replace(sdoc_iv.doc_detail,chr(10),'<br>&nbsp;&nbsp;&nbsp;') doc_detail_iv,
    	'<br />  '|| replace(sdoc_bl.doc_name,chr(10),'<br>&nbsp;&nbsp;&nbsp;') doc_name_bl,
		'<br />  '|| replace(sdoc_co.doc_name,chr(10),'<br>&nbsp;&nbsp;&nbsp;') doc_name_co,
    	'<br />  '|| replace(sdoc_iv.doc_name,chr(10),'<br>&nbsp;&nbsp;&nbsp;') doc_name_iv
		from answer ans
		inner join si_header sih on ans.si_no = sih.si_no
		left outer join (select si_no,doc_detail,doc_name from si_doc where doc_type='BL')sdoc_bl on sdoc_bl.si_no = sih.si_no
    	left outer join (select si_no,doc_detail,doc_name from si_doc where doc_type='CO')sdoc_co on sdoc_co.si_no = sih.si_no
    	left outer join (select si_no,doc_detail,doc_name from si_doc where doc_type='IV')sdoc_iv on sdoc_iv.si_no = sih.si_no
		left join (select ppbe_no, containers, ceil(sum(container_value)) as jum from ztb_shipping_detail group by ppbe_no, containers) zsd 
        on ans.crs_remark = zsd.ppbe_no
		where ans.crs_remark='$do' ";

	$qry = "select do_no, etd, eta, max(stuffy_date) stuffy_date, port_loading, final_destination, description, --panjang_pallet, lebar_pallet,
		sum(ceil(carton)) as carton,
		sum(ceil(pallet)) as pallet,
		sum(qty) as qty,
		sum(round(gw,2)) as gw, uom_gw,
		sum(round(nw,2)) as nw, uom_nw,
		sum(msm) as msm from (
			select '-' as do_no, ans.ETD, ans.ETA, sih.load_port as port_loading, sih.final_dest as final_destination, ans.stuffy_date,
			replace(sih.goods_name,'  ','<br/>&nbsp;&nbsp;&nbsp;')  as description, --panjang_pallet, lebar_pallet, 
			zsi.carton, zsi.pallet, zsi.qty, 
			zsi.gw, 30 as gross_uom, un2.unit_pl as uom_gw, zsi.nw, 30 as net_uom, un1.unit_pl as uom_nw, zsi.msm 
			from answer ans
			inner join si_header sih on ans.si_no = sih.si_no
			inner join ztb_shipping_ins zsi on ans.answer_no = zsi.answer_no
			left outer join ztb_item zti on ans.item_no= zti.item_no
			left join unit un1 on 30 = un1.unit_code
			left join unit un2 on 30 = un2.unit_code
			where ans.crs_remark='$do'
			)
		group by do_no, eta, etd, port_loading, final_destination, description, --panjang_pallet, lebar_pallet,
		uom_nw, uom_gw";

	$qry_pallet = "select distinct 'Pallet Dimension : '|| panjang_pallet ||' x '|| lebar_pallet || '<br>' as pallet
		from ztb_item where item_no in (select item_no from answer where crs_remark='$do')";

	$sts_doc = '';
	$inv_no = '&nbsp;&nbsp;&nbsp;/FILR/'.date('y');
	
	$qry_remark = " select pallet_mark_1 ||'<br />'||
		pallet_mark_2 ||'<br />'||
		pallet_mark_3 ||'<br />'||
		pallet_mark_4 ||'<br />'||
		pallet_mark_5 ||'<br />'||
		pallet_mark_6 ||'<br />'||
		pallet_mark_7 remark
		from answer ans
		inner join so_details sd on ans.so_no = sd.so_no and ans.so_line_no = sd.line_no
		where crs_remark='$do'
		";
}

$ArrREmark = array();		$ArrPallet = array();
$Arrcontainer = array();
$rowno_remark = 0;
$remarkNya = '';

$head = oci_parse($connect, $sql_h);
oci_execute($head);
$dt_h = oci_fetch_object($head);

$result = oci_parse($connect, $qry);
oci_execute($result);

$row_pallet = oci_parse($connect, $qry_pallet);
oci_execute($row_pallet);

$row_remark = oci_parse($connect, $qry_remark);
oci_execute($row_remark);

$row_container = oci_parse($connect, $sql_con);
oci_execute($row_container);

while($data_container = oci_fetch_object($row_container)){
		array_push($Arrcontainer,$data_container->CONTAINERJUM);
	}

for ($ii=0; $ii < count($Arrcontainer) ; $ii++) { 
		$container .=  ''.$Arrcontainer[$ii].' <br> &nbsp;&nbsp; ';
}



if($si_sts == 'final_si'){
	while($data_pallet = oci_fetch_object($row_pallet)){
		array_push($ArrPallet,$data_pallet->PALLET);
	}

	for ($ii=0; $ii < count($ArrPallet) ; $ii++) { 
		$palletNya .= "&nbsp;&nbsp;&nbsp;<span style='font-size:9px'>".$ArrPallet[$ii]."</span>";
	}

	$ppbe_no = $dt_h->DESCRIPTION;
	while($data_remark = oci_fetch_object($row_remark)){
		array_push($ArrREmark,$data_remark->REMARK);
	}

	for ($i=0; $i < count($ArrREmark) ; $i++) { 
		$remarkNya .= '<span style="font-size:9px;">'.$ArrREmark[$i].'</span><br><br>';
	}
	if ($i > 2) {
		$remarkNya ="<span style='font-size:9px'>Please see attachment.</span>";
	}

	$book_no = $dt_h->BOOKING_NO;
	//$notify = $dt_h->PBY." ".$dt_h->PDAYS." ".$dt_h->PDESC;
	$notify = $dt_h->NOTIFY_NAME.'<br>'.$dt_h->NOTIFY_ADDR1.'<br>'.$dt_h->NOTIFY_ADDR2.'<br>'.$dt_h->NOTIFY_ADDR3.'<br>'.$dt_h->NOTIFY_TEL.'<br>'.$dt_h->NOTIFY_FAX."<br>".$dt_h->NOTIFY_ATTN;
	$notify2 = $dt_h->NOTIFY_NAME_2;
	if ($dt_h->DESC_METHOD == 'FCL'){
		$truck = "&nbsp;&nbsp;&nbsp;".$dt_h->DESC_METHOD."<br/>&nbsp;&nbsp;&nbsp;".$container."<br/>&nbsp;&nbsp;&nbsp;CONTAINER GRADE A<br/>&nbsp;&nbsp;&nbsp;SEAL BOTTLE<br/>&nbsp;&nbsp;&nbsp;HAVE VENTILATION<br/><br/>";

		$ket_z = "<td colspan=4 style='font-size:9px;border:0px solid #ffffff;' align='right'><b>CONTAINER GRADE A</b></td>";
	}else{
		$truck = "&nbsp;&nbsp;&nbsp;".$dt_h->DESC_METHOD."<br/><br/><br/>";
		$ket_z = "<td colspan=4 style='font-size:9px;border:0px solid #ffffff;' align='right'></td>";
	}

}else{
	while($data_pallet = oci_fetch_object($row_pallet)){
		array_push($ArrPallet,$data_pallet->PALLET);
	}

	while($data_remark = oci_fetch_object($row_remark)){
		array_push($ArrREmark,$data_remark->REMARK);
	}

	for ($ii=0; $ii < count($ArrPallet) ; $ii++) { 
		$palletNya .= "&nbsp;&nbsp;&nbsp;<span style='font-size:9px'>".$ArrPallet[$ii]."</span>";
	}


	if ($print_mark == 'true'){
		for ($i=0; $i < count($ArrREmark) ; $i++) { 
				$remarkNya .= "<span style='font-size:9px'>".$ArrREmark[$i] ."</span><br><br>";			
		}

		if ($i > 2 ) {
			$remarkNya ="<span style='font-size:9px'>Please see attachment.</span>";
		}
	}

	$ppbe_no = $dt_h->DESCRIPTION;
	$book_no = 'TBA';

	$notify = $dt_h->NOTIFY_NAME.'<br>'.$dt_h->NOTIFY_ADDR1.'<br>'.$dt_h->NOTIFY_ADDR2.'<br>'.$dt_h->NOTIFY_ADDR3.'<br>'.$dt_h->NOTIFY_TEL.' - '.$dt_h->NOTIFY_FAX."<br>".$dt_h->NOTIFY_ATTN;
	$notify2 = $dt_h->NOTIFY_NAME_2;

	if ($dt_h->DESC_METHOD == 'FCL'){
		$truck = "&nbsp;&nbsp;&nbsp;".$dt_h->DESC_METHOD."<br/>&nbsp;&nbsp;&nbsp;".$container."<br/>&nbsp;&nbsp;&nbsp;CONTAINER GRADE A<br/>&nbsp;&nbsp;&nbsp;SEAL BOTTLE<br/>&nbsp;&nbsp;&nbsp;HAVE VENTILATION<br/><br/>";
		$ket_z = "<td colspan=4 style='font-size:9px;border:0px solid #ffffff;' align='right'><b>CONTAINER GRADE A</b></td>";
	}else{
		$truck = "&nbsp;&nbsp;&nbsp;".$dt_h->DESC_METHOD."<br/><br/><br/>";
		$ket_z = "<td colspan=4 style='font-size:9px;border:0px solid #ffffff;' align='right'></td>";
	}
	
}

if($dt_h->PAYMENT_TYPE == 'Collect'){
	$coll = '(X) COLLECT &nbsp;&nbsp;&nbsp;TERM : '.$dt_h->PAYMENT_REMARK;
	$prep = '(&nbsp;&nbsp;&nbsp;) PREPAID';
}elseif ($dt_h->PAYMENT_TYPE == 'Prepaid'){
	$coll = '(&nbsp;&nbsp;&nbsp;) COLLECT &nbsp;&nbsp;&nbsp;'.$dt_h->PAYMENT_REMARK;
	$prep = '(X) PREPAID';
}else{
	$coll = '(&nbsp;&nbsp;&nbsp;) COLLECT &nbsp;&nbsp;&nbsp;'.$dt_h->PAYMENT_REMARK;
	$prep = '(&nbsp;&nbsp;&nbsp;) PREPAID';
}


if ($dt_h->SHIPPING_TYPE == 'FCL'){
	$shipp_A = "(X) FCL with ventilator";
	$shipp_B = "(&nbsp;&nbsp;&nbsp;) by air";
}elseif($dt_h->SHIPPING_TYPE == 'LCL'){
	$shipp_A = "(X) LCL";
	$shipp_B = "(&nbsp;&nbsp;&nbsp;) by air";
}else{
	$shipp_A = "(&nbsp;&nbsp;&nbsp;) FCL/LCL";
	$shipp_B = "(X) by air";
}

$ex = explode(',', $dt_h->SI_NO_FIX);
$SI_Nya = '';
for ($i=1; $i <= count($ex); $i++) { 
	if($i%3 == 0){
		$SI_Nya .= $ex[$i-1].',<br>';
	}else{
		if($i == count($ex)){
			$SI_Nya .=$ex[$i-1];
		}else{
			$SI_Nya .=$ex[$i-1].',';	
		}
	}
}

$date=date("d M y / H:i:s",time());
$date2=date('d M Y',time());
$content = "	
	<style>
		table {
			border-collapse: collapse;
			padding:4px;
			font-size:11px;
		}
		table, th, td {
			border: 1px solid #d0d0d0;	
		}
		th {
			//background-color: #4bd2fe;
			color: black;
		}
		.brd {
			border:none;
		}
	</style>
	<page>
		<div style='position:absolute;margin-top:0px;'>
			<img src='../images/logo-print4.png' alt='#' style='width:300px;height: 70px'/><br/>
		</div>	

		<div style='margin-top:0;margin-left:620px;font-size:9px'>
			<p align='' >Bekasi, ".$date."<br>Print By : ".$nama_user."</p>
		</div>
		".$ket."

	<page_footer>
		<div style='width:100%;text-align:right;margin-bottom:100%;font-size:9px;'>page [[page_cu]] of [[page_nb]]</div>
		<div style='width:50%;text-align:left; font-size:9px;margin-bottom:100%;'>
			<p style='font-size:12px;'>FM-19-PEI-003</p>
		</div>
    </page_footer>
	
	<div style='margin-top:20px;margin-bottom:100%;position:absolute;'>
		<h3 align='center'>SHIPPING INSTRUCTION</h3>
		<table align='center' style='width:100%;font-size:12px;'>
			<tr>
				<td valign='top' style='font-size:10px;width:300px;height:25px;'>
					<table>
			            <tr>
			              <td style='font-size:11px;border:0px solid #ffffff;'><b>SHIPPER</b></td>
			              <td style='font-size:11px;border:0px solid #ffffff;'>:</td>
			              <td style='width:330px;font-size:11px;border:0px solid #ffffff;'></td>
			            </tr>
			            <tr>
			            	<td colspan=3 style='font-size:11px;border:0px solid #ffffff;'>".$dt_h->SHIPPER_NAME."<br/>
			            																   ".$dt_h->SHIPPER_ADDR1."<br/>
			            																   ".$dt_h->SHIPPER_ADDR2."
			            	</td>
			            </tr>
			        </table>
			    </td>
				<td style='border:0px solid #ffffff;'></td>
				<td valign='top' style='border:0px solid #ffffff;font-size:10px;width:350px;height:25px;'>
					<table>
			            <tr>
			              <td style='font-size:11px;border:0px solid #ffffff;'><b>INV NO.</b></td>
			              <td style='font-size:11px;border:0px solid #ffffff;'>:</td>
			              <td style='width:250px;font-size:11px;border:0px solid #ffffff;'>".$inv_no."</td>
			            </tr>
			            <tr>
			              <td style='font-size:11px;border:0px solid #ffffff;'><b>PPBE</b></td>
			              <td style='font-size:11px;border:0px solid #ffffff;'>:</td>
			              <td style='width:50px;font-size:11px;border:0px solid #ffffff;'>".$ppbe_no."</td>
			            </tr>
			        </table>
				</td>
			</tr>
			<tr>
				<td valign='top' style='font-size:10px;width:300px;height:25px;'>
					<table>
			            <tr>
			              <td style='border:0px solid #ffffff;'><b>CONSIGNEE</b></td>
			              <td style='border:0px solid #ffffff;'>:</td>
			              <td style='border:0px solid #ffffff;width:300px;'></td>
			            </tr>
			            <tr>
			              <td colspan=3 style='border:0px solid #ffffff;'>".$dt_h->CONSIGNEE_NAME."<br/>
			              												  ".$dt_h->CONSIGNEE_ADDR1."<br/>
			              												  ".$dt_h->CONSIGNEE_ADDR2."<br/>
			              												  ".$dt_h->CONSIGNEE_ADDR3."<br/>
			              												  ".$dt_h->CONSIGNEE_TEL."
			              </td>
			            </tr>
			        </table>
				</td>
				<td style='border:0px solid #ffffff;'></td>
				<td valign='top' style='border-right:0px solid #ffffff;font-size:10px;width:350px;height:25px;'>
					<table>
			            <tr>
			              <td style='border:0px solid #ffffff;'><b>BOOKING NO.</b></td>
			              <td style='border:0px solid #ffffff;'>:</td>
			              <td style='border:0px solid #ffffff;'>".$book_no."</td>
			            </tr>
			            <tr>
			              <td style='border:5px solid #ffffff;'><b>SI NO.</b></td>
			              <td style='border:5px solid #ffffff;'>:</td>
			              <td style='border:5px solid #ffffff;'>".$SI_Nya."</td>
			            </tr>
			        </table>
				</td>
			</tr>
			<tr>
				<td valign='top' style='font-size:10px;width:300px;height:65px;'>
					<table>

			            <tr>
			              <td style='border:0px solid #ffffff;width:160px;'><b>Notify Party :</b></td>
			              <td style='border:0px solid #ffffff;width:2px;'><b></b></td>
			              <td style='border:0px solid #ffffff;width:160px;'><b>Notify Party (2) :</b></td>
			            </tr>
			            <tr>
			              <td style='width:160px;border:0px solid #ffffff;'>".$notify."</td>
			              <td style='width:2px;border:0px solid #ffffff;'></td>
			              <td style='width:160px;border:0px solid #ffffff;'>".$notify2."</td>
			            </tr>
			        </table>
				</td>
				<td style='border:0px solid #ffffff;'></td>
				<td colspan=3 style='border-right:5px solid #ffffff;' align='center'>
					<b>STATUS DOCUMENT :<br>BOOKING S/I</b>
					<br/><span style='font-size:26px;color:red'><b>".$sts_doc."</b></span>
				</td>
			</tr>
			<tr>
				<td valign='top' style='font-size:10px;width:175px;height:25px;'>
					<table>
			            <tr>
			              <td style='border:0px solid #ffffff;width:160px'><b>PRE-CARRIEGE BY :</b></td>
			              <td style='border:0px solid #ffffff;width:2px;'></td>
			              <td style='border:0px solid #ffffff;width:160px;'><b>Place of Receipt/Date :</b></td>
			            </tr>
			            <tr>
			              <td style='height: 20px;border:0px solid #ffffff;width:160px;'><b></b></td>
			              <td style='height: 20px;border:0px solid #ffffff;width:2px;'></td>
			              <td style='height: 20px;border:0px solid #ffffff;width:160px;'>JAKARTA, INDONESIA</td>
			            </tr>
			        </table>
				</td>
				<td style='border:0px solid #ffffff;'></td>
				<td rowspan=2 valign='top' style='border:0px solid #ffffff;font-size:10px;width:350px;height:25px;'>
					<b>FORWARDER :</b><br/>".$dt_h->FORWARDER_NAME."<br/>
					TEL : ".$dt_h->FORWARDER_TEL." FAX : ".$dt_h->FORWARDER_FAX."<br/>
					ATTN : ".$dt_h->FORWARDER_ATTN."<br/>
				</td>
			</tr>

			<tr>
				<td valign='top' style='font-size:10px;width:300px;height:25px;'>
					<table>
			            <tr>
			              <td style='border:0px solid #ffffff;width:160px;'><b>Ocean Vessel By :</b></td>
			              <td style='border:0px solid #ffffff;width:2px;'></td>
			              <td style='border:0px solid #ffffff;width:160px;'><b>Port Of Loading :</b></td>
			            </tr>
			            <tr>
			              <td style='height: 10px;border:0px solid #ffffff;width:160px;'>".$dt_h->SHIP_NAME."</td>
			              <td style='height: 10px;border:0px solid #ffffff;width:2px;'></td>
			              <td style='height: 10px;border:0px solid #ffffff;width:160px;'>".$dt_h->LOAD_PORT."</td>
			            </tr>
			        </table>
				</td>
			</tr>
			<tr>
				<td valign='top' style='font-size:10px;width:300px;height:25px;'>
					<table>
			            <tr>
			              <td style='border:0px solid #ffffff;width:160px;'><b>Port Of Discharge :</b></td>
			              <td style='border:0px solid #ffffff;width:2px;'></td>
			              <td style='border:0px solid #ffffff;width:160px;'><b>Place Of Delivery :</b></td>
			            </tr>
			            <tr>
			              <td style='height: 20px;border:0px solid #ffffff;width:160px;'>".$dt_h->DISCH_PORT."</td>
			              <td style='height: 20px;border:0px solid #ffffff;width:2px;'></td>
			              <td style='height: 20px;border:0px solid #ffffff;width:160px;'>".$dt_h->FINAL_DEST."</td>
			            </tr>
			        </table>
				</td>
				<td style='border:0px solid #ffffff;'></td>
				<td valign='top' style='border:0px solid #ffffff;font-size:10px;width:350px;height:25px;'>
					<b>EMKL : </b><br/>".$dt_h->EMKL_NAME."<br/>
					TEL : ".$dt_h->EMKL_TEL." FAX : ".$dt_h->EMKL_FAX."<br/>
					ATTN : ".$dt_h->EMKL_ATTN."<br/>
				</td>
			</tr>
		</table>
		<table align='center'>";
$nourut = 1;
$content .= "
	<thead>
		<tr>
			<th valign='middle' align='center' style='font-size:10px;width:113px;height:25px;'>Container No.<br/>Seal No, Marks&Nos</th>
			<th valign='middle' align='center' style='font-size:10px;width:90px;height:25px;'>Quantity&Kind<br/>Of Packages</th>
			<th valign='middle' align='center' style='font-size:10px;width:350px;height:25px;'>Description Of Goods</th>
			<th valign='middle' align='center' style='font-size:10px;width:180px;height:25px;'>Measurement (CBM)<br/>Gross Weight(kg)</th>
		</tr>
	</thead>";
$total=0;
while ($data=oci_fetch_object($result)){
	
	if($si_sts == 'final_si'){
		$et = "&nbsp;&nbsp;&nbsp;STUFFING : ".$dt_h->DO_DATE."<br>&nbsp;&nbsp;&nbsp;ETD ".$data->PORT_LOADING." : ".$data->ETD."<br>&nbsp;&nbsp;&nbsp;ETA ".$data->FINAL_DESTINATION." : ".$data->ETA."<br><br>&nbsp;&nbsp;&nbsp;";
	}else{
		$et = "&nbsp;&nbsp;&nbsp;STUFFING : ".$data->STUFFY_DATE."<br>&nbsp;&nbsp;&nbsp;ETD : ".$data->ETD."<br>&nbsp;&nbsp;&nbsp;ETA : ".$data->ETA."<br><br>&nbsp;&nbsp;&nbsp; ";
	}
	$content .= "
		<tr>
			<td valign='middle' align='left' style='font-size:10px;height:25px;width:113px;'>".$remarkNya."</td>
			<td valign='middle' align='center' style='font-size:10px;height:25px;width:90px;'>
				".number_format($data->CARTON)."&nbsp;CARTON<br/>".$data->PALLET."&nbsp;PALLET
			</td>
			<td valign='middle' style='font-size:10px;height:25px;width:350px;'>
				&nbsp;&nbsp;&nbsp;".number_format($data->QTY)."&nbsp;PIECES &nbsp;".$dt_h->DOC_DETAIL_CO."&nbsp; OF<br/>&nbsp;&nbsp;&nbsp;".$data->DESCRIPTION."
				<br/>
				&nbsp;&nbsp;&nbsp;".$dt_h->DOC_DETAIL_BL."
				<br/>
				<br/><br/>
				".$et."
				<br/>
				<p style:'font-size: 9px;'><b>".$dt_h->DOC_DETAIL_IV."</b></p>
			</td>
			<td valign='middle' style='font-size:10px;height:25px;width:180px;'><br/><br/><br/>
				&nbsp;&nbsp;&nbsp;GW&nbsp;&nbsp;:&nbsp;".number_format($data->GW,2)."&nbsp;&nbsp;&nbsp;".$data->UOM_GW."<br/>
				&nbsp;&nbsp;&nbsp;NW&nbsp;&nbsp;:&nbsp;".number_format($data->NW,2)."&nbsp;&nbsp;&nbsp;".$data->UOM_NW."<br/>
				&nbsp;&nbsp;&nbsp;MSM&nbsp;&nbsp;&nbsp;:&nbsp;".number_format($data->MSM,3)."&nbsp;&nbsp;&nbsp;CBM<br/><br/><br/>
				".$truck."
				".$palletNya."
			</td>
		</tr>";
	$total += $data->AMT_O;
	$nourut++;
}

	$content .= "
		<tr>
			".$height_rmk."
		</tr>";

$content .= "
			".$tot."
		</table>
		<table>
			<tr>
				".$ket_z."
			</tr>
			<tr>
				<td style='font-size:10px;border:0px solid #ffffff;'> PAYMENT</td>
				<td style='font-size:10px;border:0px solid #ffffff;'>:</td>
				<td style='font-size:10px;border:0px solid #ffffff;'>".$prep."</td>
				<td style='font-size:10px;border:0px solid #ffffff;'>".$coll."</td>
			</tr>
			<tr>
				<td style='font-size:10px;border:0px solid #ffffff;'> SHIPPING METHOD</td>
				<td style='font-size:10px;border:0px solid #ffffff;'>:</td>
				<td style='font-size:10px;border:0px solid #ffffff;'>".$shipp_A."</td>
				<td style='font-size:10px;border:0px solid #ffffff;'>".$shipp_B."</td>
			</tr>
			<tr>
				<td style='font-size:10px;border:0px solid #ffffff;'> REQUIREMENT <br>OF SHIPPING DOCUMENT</td>
				<td style='font-size:10px;border:0px solid #ffffff;' valign='middle'>:</td>
				<td style='font-size:10px;border:0px solid #ffffff;' valign='middle'>".$dt_h->DOC_NAME_BL."</td>
			</tr>
			<tr>
				<td style='font-size:10px;border:0px solid #ffffff;'> NOTE</td>
				<td style='font-size:10px;border:0px solid #ffffff;'>:</td>
				<td colspan=2 style='font-size:10px;border:0px solid #ffffff;'><b>1)THIS BOOKING S/I IS ATTENDED ONLY FOR SHIPMENT BOOKING(CONTAINER, SPACE),<br>
								&nbsp;&nbsp;&nbsp;WE'LL SEND YOU FINAL S/I ONCE THE ABOVE SHIPMENT DATA IS COMPLETE.<br>
							  2)PLEASE CONTACT US IF YOU HAVEN'T RECEIVED THE FINAL S/I FROM US BEFORE<br>
							  	&nbsp;&nbsp;&nbsp;INTENDED S/I CUT OFF.</b>
				</td> 
			</tr>
			<tr>
				<td style='font-size:10px;border:0px solid #ffffff;' colspan=3></td>
				<td style='font-size:10px;border:0px solid #ffffff;height:10px;' valign='bottom' align='center'></td>
			</tr>
			<tr>
				<td style='font-size:10px;border:0px solid #ffffff;' colspan=3></td>
				<td style='font-size:10px;border:0px solid #ffffff;height:20px;' valign='bottom' align='center'>Bekasi, ".$date2."</td>
			</tr>
			<tr>
				<td style='font-size:10px;border:0px solid #ffffff;' colspan=3></td>
				<td style='font-size:10px;border:0px solid #ffffff;height:50px;' valign='bottom' align='center'>Purchasing & Export-Import Manager</td>
			</tr>
		</table>
		<p style='font-size:10px;'>".$dt_h->SPECIAL_INFO."</p>
	</div>
</page>";

require_once(dirname(__FILE__).'/../class/html2pdf/html2pdf.class.php');
$html2pdf = new HTML2PDF('P','A4','en');
$html2pdf->WriteHTML($content);
$html2pdf->Output('PO-'.$po.'.pdf');
//echo  $content;
?>