<?php
include("../connect/conn.php");
date_default_timezone_set('Etc/UTC');
require_once '../class/PHPMailer/PHPMailerAutoload.php';
error_reporting(0);

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

$mail->addAddress('ueng.hernama@fdk.co.jp', 'ueng.hernama@fdk.co.jp');
$mail->addAddress('fifin2@fdk.co.jp', 'fifin2@fdk.co.jp');
$mail->addAddress('fauzi.budi@fdk.co.jp', 'fauzi.budi@fdk.co.jp');
$mail->addAddress('lukman@fdk.co.jp', 'lukman@fdk.co.jp');
$mail->addAddress('toto.ari@fdk.co.jp', 'toto.ari@fdk.co.jp');
$mail->addAddress('labellr@fdk.co.jp', 'labellr@fdk.co.jp');

$mail->Subject = 'KURAIRE TIDAK DI SCAN';

$var1 = $_GET['var1'];
$TOTAL=0;

if ($TOTAL==0) {
	$qry = "select wo_no,plt_no,ID from ztb_p_plan where id = '$var1' ";
	$data_qry = oci_parse($connect, $qry);
	oci_execute($data_qry);
	while ($dt_qry = oci_fetch_object($data_qry)) {
		$var2 = $dt_qry->WO_NO;
		$var3 = $dt_qry->PLT_NO;
		$var4 = $dt_qry->ID;
		$qry = "select * from production_income where slip_no = '$var4' ";
		$data_qry = oci_parse($connect, $qry);
		oci_execute($data_qry);
		while ($dt_qry = oci_fetch_object($data_qry)) {
			$TOTAL=$TOTAL + 1;
			echo  "SILAHKAN DI PROSES, PALLET " .  $var1 . " SUDAH DI SCAN."; //would output "some-string"
			$var2 = '';
			exit();
		}
	}
			
	if ($TOTAL==0 & $var2 != '') {
		echo "<div style='font-size:190%; color:#ff0000 '>PALLET " .  $var2 . " DENGAN NOMOR PALLET ". $var3 ." DAN SLIP ID DENGAN NOMOR  ". $var4 ." BELUM DI SCAN !!</div>";

		$message = '<!DOCTYPE>
				<html>
				<head>
				  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
				  <title>KURAIRE BELUM DI SCAN</title>
				  <style>
					table {
					    border-collapse: collapse;
					}

					table, td, th {
					    border: 1px solid black;
					}
				</style>
				</head>
				<body>';

		$message.= "<div style='font-size:150%; color:#ff0000 '>PALLET " .  $var2 . " DENGAN NOMOR PALLET ". $var3 ." DAN SLIP ID DENGAN NOMOR  ". $var4 ." BELUM DI SCAN !!</div>";

		$message.='
					</div>
				</body>
			    </html>';

		$mail->msgHTML($message);
		//echo $message;
		if (!$mail->send()) {
			echo "Mailer Error: " . $mail->ErrorInfo;
		}else{
			echo "Message sent!";
			echo "<script>window.onload = self.close();</script>";
		}
	}else{
		echo "PALLET TIDAK TERDAFTAR, MOHON DI SCAN SEKALI LAGI. ";
	}
}
?>