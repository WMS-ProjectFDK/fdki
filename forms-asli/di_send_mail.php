<?php
error_reporting(0);
include("../connect/conn.php");
session_start();
date_default_timezone_set('Asia/Jakarta');
$user_name = $_SESSION['id_wms'];
$nama_user = $_SESSION['name_wms'];
$p = intval(date('m'));
$y = date('Y');

$result = array();

$di = isset($_REQUEST['di']) ? strval($_REQUEST['di']) : '';

$qry_company = "select a.*, b.*, to_char(a.di_date,'yyyy-mm-dd') as di_dt from di_header a inner join company b on a.shipto_code=b.company_code where a.di_no='$di'";
$data_company = oci_parse($connect, $qry_company);
oci_execute($data_company);
$dt_company = oci_fetch_object($data_company);

if(date('D')=='Fri'){
	$hari = "Monday";
	$tambah_date = strtotime('+3 day',strtotime($dt_company->DI_DT));
	$del_date = date("l, F d, Y",$tambah_date);
}else{
	$hari = "Tomorrow";
	$tambah_date = strtotime('+1 day',strtotime($dt_company->DI_DT));
	$del_date = date("l, F d, Y",$tambah_date);
}

$qry_item = "select distinct a.po_no, a.item_no, b.item, b.description, 
	case d.sts_bundle when 'Y' then 'BUNDLE' else c.unit end as unit,
	a.qty, a.data_date from di_details a
	inner join item b on a.item_no=b.item_no 
	inner join unit c on a.uom_q=c.unit_code
	inner join ztb_safety_stock d on a.item_no=d.item_no
	where a.di_no='$di' and d.period=$p and d.year='$y'
	order by b.description asc";
$data_item = oci_parse($connect, $qry_item);
oci_execute($data_item);

$date=date("d M y / H:i:s",time());
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
			<img src='../images/logo-print4.png' alt='#' style='width:210px;height: 50px'/>
		</div>	

		<div style='margin-top:0;margin-left:640px;font-size:9px'>
			<p align='' >Bekasi, ".$date."<br>Print By : ".$nama_user."</p>
			<qrcode value='".$di."' ec='Q' style=' border:none; width:40px;background-color: white; color: black;'></qrcode>
		</div>

	<page_footer>
		<div style='width:100%;text-align:right;margin-bottom:100%;font-size:9px;'>page [[page_cu]] of [[page_nb]]</div>
    </page_footer>
	<h3 align='center'>DELIVERY INSTRUCTION</h3>
	<p align='center'>No. ".$di."</p>
	
	<table>
		<tr>
			<td style='border:5px solid #ffffff;' valign='top'>TO</td>
			<td style='border:5px solid #ffffff;' valign='top'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td style='border:5px solid #ffffff;'><div style='font-size:14px;'><b>[".$dt_company->SHIPTO_CODE."] ".$dt_company->COMPANY."</b></div>
				<p>".$dt_company->ADDRESS1." ".$dt_company->ADDRESS2." ".$dt_company->ADDRESS3." ".$dt_company->ADDRESS4."</p>
			</td>
		</tr>
		<tr>
			<td style='border:5px solid #ffffff;' valign='top' colspan=3></td>
		</tr>
		<tr>
			<td style='border:5px solid #ffffff;'>FAX</td>
			<td style='border:5px solid #ffffff;'>:</td>
			<td style='border:5px solid #ffffff;'>".$dt_company->FAX_NO."</td>
		</tr>
		<tr>
			<td style='border:5px solid #ffffff;'>ATTN</td>
			<td style='border:5px solid #ffffff;'>:</td>
			<td style='border:5px solid #ffffff;'>".$dt_company->ATTN."</td>
		</tr>
	</table>
	
	<div style='margin-top:320px;position:absolute;'>	
		<p>Dear Sir / Madam <br/>
			Please deliver our buffer stock to our warehouse as follow :<br/>
		</p>
		<table>";
$nourut = 1;
$content .= "
			<thead>
				<tr>
					<th valign='middle' align='center' style='font-size:10px;width:30px;height:25px;'>NO</th>
					<th valign='middle' align='center' style='font-size:10px;width:100px;height:25px;'>PO NO.</th>
					<th valign='middle' align='center' style='font-size:10px;width:90px;height:25px;'>MATERIAL NO.</th>
					<th valign='middle' align='center' style='font-size:10px;width:300px;height:25px;'>MATERIAL NAME</th>
					<th valign='middle' align='center' style='font-size:10px;width:100px;height:25px;'>QTY</th>
					<th valign='middle' align='center' style='font-size:10px;width:80px;height:25px;'>DELIVERY DATE</th>
				</tr>
			</thead>";
		while($dt_item = oci_fetch_object($data_item)){
$content.="		<tr>
					<td valign='middle' align='center'>$nourut</td>
					<td valign='middle'>&nbsp;".$dt_item->PO_NO."</td>
					<td valign='middle' align='center'>".$dt_item->ITEM_NO."</td>
					<td valign='middle'>&nbsp;<div>".$dt_item->ITEM."</div>&nbsp;".$dt_item->DESCRIPTION."</td>
					<td valign='middle' align='right'>".number_format($dt_item->QTY)." ".$dt_item->UNIT."&nbsp;</td>
					<td valign='middle' align='center'>".$del_date."</td>
				</tr>
			";			
			$nourut++;
		}
$content .= "
		</table>
		<p style='margin-left:550px;'>yours Faithfully<br/><br/><br/><br/><br/>".$dt_company->SEC."</p>
	</div>
</page>";

require_once(dirname(__FILE__).'/../class/html2pdf/html2pdf.class.php');
$html2pdf = new HTML2PDF('P','A4','en');
$html2pdf->WriteHTML($content);

$pdfnya = $html2pdf->Output('','S');
$filename = 'delivery_instruction_'.$di.'.pdf';

/**
 * This example shows making an SMTP connection with authentication.
 */

//SMTP needs accurate times, and the PHP time zone MUST be set
//This should be done in your php.ini, but this is how to do it if you don't have access to that
date_default_timezone_set('Etc/UTC');
require_once '../class/PHPMailer/PHPMailerAutoload.php';

//Create a new PHPMailer instance
$mail = new PHPMailer;
//Tell PHPMailer to use SMTP
$mail->isSMTP();
//Enable SMTP debugging
// 0 = off (for production use)
// 1 = client messages
// 2 = client and server messages
$mail->SMTPDebug = 2;
//Ask for HTML-friendly debug output
$mail->Debugoutput = 'html';
//Set the hostname of the mail server
$mail->Host = "virus.fdk.co.jp";
//Set the SMTP port number - likely to be 25, 465 or 587
$mail->Port = 25;
//Whether to use SMTP authentication
//$mail->SMTPAuth = true;
//Username to use for SMTP authentication
$mail->Username = "do.not.reply.fdkindonesia";
//Password to use for SMTP authentication
$mail->Password = "fidonot";
//Set who the message is to be sent from
$mail->setFrom('do.not.reply.fdkindonesia@fdk.co.jp', 'FDK INDONESIA');
//Set who the message is to be sent to
/*$mail->addAddress($dt_company->E_MAIL, $dt_company->ATTN_1);*/

$mail->addAddress('ridwan@ptoaj.co.id', 'ridwan@ptoaj.co.id');
$mail->addAddress('ida@ptoaj.co.id', 'ida@ptoaj.co.id');
$mail->addAddress('enjang@ptoaj.co.id', 'enjang@ptoaj.co.id');
$mail->addAddress('sumaryana@ptoaj.co.id', 'sumaryana@ptoaj.co.id');

/* START CC */
$mail->addcc('agusman@fdk.co.jp', 'agusman@fdk.co.jp');
$mail->addcc('yoga.kristianto@fdk.co.jp', 'yoga.kristianto@fdk.co.jp');
$mail->addcc('agung.mardiansyah@fdk.co.jp', 'agung.mardiansyah@fdk.co.jp');
$mail->addcc('leslie.avanti@fdk.co.jp', 'leslie.avanti@fdk.co.jp');
$mail->addcc('agung.kurniawan@fdk.co.jp','agung.kurniawan@fdk.co.jp');
$mail->addcc('firmandita@fdk.co.jp', 'firmandita@fdk.co.jp');
$mail->addcc('anggari.nugraheni@fdk.co.jp', 'anggari.nugraheni@fdk.co.jp');
$mail->addcc('rokhani@fdk.co.jp', 'rokhani@fdk.co.jp');
$mail->addcc('toto.ari@fdk.co.jp', 'toto.ari@fdk.co.jp');
$mail->addcc('budi.setiadi@fdk.co.jp', 'budi.setiadi@fdk.co.jp');
$mail->addcc('ueng.hernama@fdk.co.jp', 'ueng.hernama@fdk.co.jp');
/* END ADD*/

//Set the subject line
$mail->Subject = 'Delivery Instruction PT. FDK INDONESIA For '.$del_date;
$mail->AddEmbeddedImage("../images/logo-print4.png", "my-attach", "../../images/logo-print4.png");

$message = '<!DOCTYPE>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <title>FDK-DELIVERY INSTRUCTION</title>
</head>
<body>
	<div style="width: 640px; font-family: Verdana, Geneva, sans-serif; font-size: 12px;">
	  <p>Dear All,</p>
	  <p>Please find the attached for delivery instruction And please send  before 11.00 wib</p>
	  <p><u>Please do not reply this email</u>. If you have any question, please contact :</p>
	  <p>1. Yoga Kristianto : yoga.kristianto@fdk.co.jp</p>
	  <p>2. Leslie Avanti : leslie.avanti@fdk.co.jp</p>
	  <p>3. Riani Ayu : riani.ayu@fdk.co.jp</p>
	  <p><br/>
	  	 Thanks and Regards,<br/>
		 <img src="cid:my-attach" width="400" height="75"/>
	  </p>
	</div>
</body>
</html>
';

$mail->msgHTML($message);

//Replace the plain text body with one created manually
$mail->AltBody = 'This is a plain-text message body';
//Attach an image file
//$mail->addAttachment('images/phpmailer_mini.png');
//$mail->AddAttachment($attachment);
//$mail->AddAttachment($path, '', $encoding = 'base64', $type = 'application/pdf');
$mail->AddStringAttachment($pdfnya,$filename,$encoding = 'base64', $type = 'application/pdf');

/*$mail->ClearAllRecipients( );*/


//send the message, check for errors
if (!$mail->send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "Message sent!";
    echo "<script>window.onload = self.close();</script>";
}