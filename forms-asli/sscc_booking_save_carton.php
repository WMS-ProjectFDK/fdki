<?php
header('Content-Type: text/plain; charset="UTF-8"');
error_reporting(0);
session_start();
include("../connect/conn.php");
include ("sscc_func.php");

if (isset($_SESSION['id_wms'])){
	$data = isset($_REQUEST['data']) ? strval($_REQUEST['data']) : '';
	$bookingHeader = isset($_REQUEST['bookingHeader']) ? strval($_REQUEST['bookingHeader']) : '';
	$containerHeader = isset($_REQUEST['containerHeader']) ? strval($_REQUEST['containerHeader']) : '';
	$response = array();
	$dt = json_decode(json_encode($data));
	$str = preg_replace('/\\\\\"/',"\"", $dt);
	$queries = json_decode($str);
	
	$sqlH = "delete from ztb_sscc where booking='$bookingHeader' and container='$containerHeader'";
	$data_H = oci_parse($connect, $sqlH);
	oci_execute($data_H);
	$pesan = oci_error($data_H);
	$msg .= $pesan['message'];

	if($msg != ''){
		$msg .= " delete process Error : $pesan";
		break;
	}

	$msg = '';
	$success = 0;	$failed = 0;
	$pallet = 0;	$carton = 0; 
	foreach($queries as $query){
		$crt_wo = trim($query->crt_wo);
		$crt_plt = $query->crt_plt;
		$crt_book = trim($query->crt_book);
		$crt_cont = trim($query->crt_cont);
		$crt_po = trim($query->crt_po);
		$crt_asin = trim($query->crt_asin);

		$sql = "select wo,z.item, start_carton+(($crt_plt-1)*pallet_ctn_number) as StartCarton, 
			total_carton, ceil(quantity/external_unit_number/pi.pallet_ctn_number) as TotalPallet,
			pi.pallet_ctn_number,external_unit_number/package_unit_number  as Units,start_carton as STRCTN 
			from ztb_amazon_wo  z
			inner join item i on z.item = i.item_no
			left outer join packing_information pi on i.pi_no = pi.pi_no 
			where wo = '$crt_wo'";
		$dataNya = oci_parse($connect, $sql);
		oci_execute($dataNya);
		$pesan = oci_error($dataNya);
		$msg .= $pesan['message'];

		if($msg != ''){
			$msg .= " query Error : $pesan";
			break;
		}else{
			// loop carton
			while ($row = oci_fetch_object($dataNya)) {
				$START = intval($row->STRCTN);
				$tot_carton = intval($row->TOTAL_CARTON);
				$finish = ($START+1)+$tot_carton;

				$FromCarton = intval($row->STARTCARTON)+1;
				$toCarton = $FromCarton	+ intval($row->PALLET_CTN_NUMBER);
				$unit = $row->UNITS;
				
				for ($i=$FromCarton; $i<$toCarton ; $i++) {
					if($i < 10){
						$n_urut = "00000".$i;
					}elseif($i>9 AND $i< 100){
						$n_urut = "0000".$i;
					}elseif($i>99 AND $i< 1000){
						$n_urut = "000".$i;
					}elseif($i>999 AND $i< 10000){
						$n_urut = "00".$i;
					}elseif($i>9999 AND $i< 100000){
						$n_urut = "0".$i;
					}elseif($i>99999 AND $i< 1000000){
						$n_urut = $i;
					}

					$n = '04976680'.substr($row->ITEM,-3,3).$n_urut;
					$sscc = '00'.sscc_kode_xls($n);

					if($i<$finish){
						$response[] = array('BOOKING' => $crt_book,
											'CONTAINER' => $crt_cont,
											'PO' => $crt_po,
											'ASIN' => $crt_asin,
											'SSCC' => $sscc,
											'UNIT' => $unit
									);

						$crt_field  = "BOOKING,"		;	$crt_value   =  "'$crt_book',"	;
						$crt_field .= "CONTAINER,"		;	$crt_value  .=  "'$crt_cont',"	;
						$crt_field .= "PO,"				;	$crt_value  .=  "'$crt_po',"	;
						$crt_field .= "ASIN,"			;	$crt_value  .=  "'$crt_asin',"	;
						$crt_field .= "SSCC,"			;	$crt_value  .=  "'$sscc',"		;
						$crt_field .= "UNIT"			;	$crt_value  .=  "'$unit'"		;
						chop($crt_field);              		chop($crt_value);
						$ins = "insert into ztb_sscc ($crt_field) select $crt_value from dual";
						$data_crt = oci_parse($connect, $ins);
						oci_execute($data_crt);
						$pesan = oci_error($data_crt);
						$msg .= $pesan['message'];

						if($ins){
							$success++;
							$carton++;
						}else{
							$failed++;
						}

						if($msg != ''){
							$msg .= " Process insert carton Error : $ins";
							break;
						}
					}
				}
			}
		}
		$pallet++;
	}

	$fp = fopen('sscc_booking_result.json', 'w');
	fwrite($fp, json_encode($response));
	fclose($fp);
							
}else{
	$msg .= 'Session Expired';
}

if($msg != ''){
	echo json_encode($msg);
}else{
	$items = array('msg' => 'success', 'success' => $success, 'failed' => $failed, 'pallet' => $pallet, 'carton' => $carton);
	echo json_encode($items);
}
?>