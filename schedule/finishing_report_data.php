<?php
error_reporting(1);
ini_set('memory_limit', '-1');
set_time_limit(0);
require_once '../class/phpexcel/PHPExcel.php';
include("../connect/conn.php");
$s=0;       

$min_hari = mktime(0,0,0,date("n"),date("j")-1,date("Y"));
$kemaren = intval(date("d", $min_hari));

$now = intval(date('d')); 

$plus_hari = mktime(0,0,0,date("n"),date("j")+1,date("Y"));       
$lusa = intval(date("d", $plus_hari));

$arrBulan = array('1' => 'JANUARY', '2' => 'FEBRUARY', '3' => 'MARCH', '4' => 'APRIL', '5' => 'MAY', '6' => 'JUNE', '7' => 'JULY', '8' => 'AUGUST', '9' => 'SEPTEMBER', '10' => 'OCTOBER', '11' => 'NOVEMBER', '12' => 'DECEMBER');

if (intval(date('d')) == 1){
    $nob = intval(date('m'))-1;
    $bln = $arrBulan[$nob];
}else{
    $bln = strtoupper(date('F'));
}


$arrKolom = array('1' => 'E','2' => 'F','3' => 'G','4' => 'H','5' => 'I','6' => 'J','7' => 'K','8' => 'L','9' => 'M','10' => 'N',
                  '11' => 'O','12' => 'P','13' => 'Q','14' => 'R','15' => 'S','16' => 'T','17' => 'U','18' => 'V','19' => 'W','20' => 'X',
                  '21' => 'Y','22' => 'Z','23' => 'AA','24' => 'AB','25' => 'AC','26' => 'AD','27' => 'AE','28' => 'AF','29' => 'AG','30' => 'AH',
                  '31' => 'AI', '32' => 'AJ');

$arrKolom2 = array('1' => 'N', '2' => 'O',  '3' => 'P',  '4' => 'Q',  '5' => 'R',  '6' => 'S',  '7' => 'T',  '8' => 'U',  '9' => 'V',  '10' => 'W', 
                   '11' => 'X', '12' => 'Y',  '13' => 'Z',  '14' => 'AA', '15' => 'AB', '16' => 'AC', '17' => 'AD', '18' => 'AE', '19' => 'AF', '20' => 'AG',
                   '21' => 'AH', '22' => 'AI', '23' => 'AJ', '24' => 'AK', '25' => 'AL', '26' => 'AM', '27' => 'AN', '28' => 'AO', '29' => 'AP', '30' => 'AQ',
                   '31' => 'AR', '32' => 'AS');

$Arr_sheet = array('TOTAL ALL BATTERY','BATTERY TYPE','PACKAGING GROUP','COMPARATION','DELAY ORDER','SUMMARY','TODAY ORDER','MOVEUP ORDER');

// 1
$qry1 = "select * from (select 'TOTAL' as groupinglabel,case when Stat = 'C' Then 'OUTPUT' else 'PLAN' END as orders, 
    sum(satu) as tgl_1,sum(dua) as tgl_2, sum(tiga) as tgl_3, sum(empat) as tgl_4, sum(lima) as tgl_5, 
    sum(enam) as tgl_6, sum(tujuh) as tgl_7, sum(delapan) as tgl_8, sum(sembilan) as tgl_9, sum(sepuluh) as tgl_10,
    sum(sebelas) as tgl_11,sum(duabelas) as tgl_12, sum(tigabelas) as tgl_13, sum(empatbelas) as tgl_14, sum(limabelas) as tgl_15, 
    sum(enambelas) as tgl_16, sum(tujuhbelas) as tgl_17, sum(delapanbelas) as tgl_18, sum(sembilanbelas) as tgl_19, sum(duapuluh) as tgl_20,
    sum(duapuluhsatu) as tgl_21,sum(duapuluhdua) as tgl_22, sum(duapuluhtiga) as tgl_23, sum(duapuluhempat) as tgl_24, sum(duapuluhlima) as tgl_25, 
    sum(duapuluhenam) as tgl_26, sum(duapuluhtujuh) as tgl_27, sum(duapuluhdelapan) as tgl_28, sum(duapuluhsembilan) as tgl_29, sum(tigapuluh) as tgl_30,
    sum(tigapuluhsatu) as tgl_31, sum(total) as total
    from zvw_comparison3 where trim(BULAN) = '".$bln."' and stat in ('A','C') and groupinglabel is not null   group by Stat) order by groupinglabel";
$data1 = oci_parse($connect, $qry1);
oci_execute($data1);

$response1 = array();
$k1 = 0;
while ($row1=oci_fetch_object($data1)){
    array_push($response1, $row1);
}

$fp1 = fopen('total_all_battery.json', 'w');
fwrite($fp1, json_encode($response1));
fclose($fp1);

echo $response1;

//  2
// $qry2 = "select * from (select batery_type as groupinglabel,case when Stat = 'C' Then 'OUTPUT' else 'PLAN' END as orders, 
//         sum(satu) as tgl_1,sum(dua) as tgl_2, sum(tiga) as tgl_3, sum(empat) as tgl_4, sum(lima) as tgl_5, 
//         sum(enam) as tgl_6, sum(tujuh) as tgl_7, sum(delapan) as tgl_8, sum(sembilan) as tgl_9, sum(sepuluh) as tgl_10,
//         sum(sebelas) as tgl_11,sum(duabelas) as tgl_12, sum(tigabelas) as tgl_13, sum(empatbelas) as tgl_14, sum(limabelas) as tgl_15, 
//         sum(enambelas) as tgl_16, sum(tujuhbelas) as tgl_17, sum(delapanbelas) as tgl_18, sum(sembilanbelas) as tgl_19, sum(duapuluh) as tgl_20,
//         sum(duapuluhsatu) as tgl_21,sum(duapuluhdua) as tgl_22, sum(duapuluhtiga) as tgl_23, sum(duapuluhempat) as tgl_24, sum(duapuluhlima) as tgl_25, 
//         sum(duapuluhenam) as tgl_26, sum(duapuluhtujuh) as tgl_27, sum(duapuluhdelapan) as tgl_28, sum(duapuluhsembilan) as tgl_29, sum(tigapuluh) as tgl_30,
//         sum(tigapuluhsatu) as tgl_31, sum(total) as total
//         from zvw_comparison3 where trim(BULAN) = '".$bln."' and stat in ('A','C') and groupinglabel is not null group by Stat,batery_type order by groupinglabel)";
// $data2 = oci_parse($connect, $qry2);
// oci_execute($data2);

// $qry3 = "select * from (select groupinglabel  as groupinglabel,
//                case groupinglabel 
//                 when 'AUTO SHRINK LR03' then 1
//                 when 'AUTO SHRINK LR6' then 2
//                 when 'MULTI SHRINK' then 3
//                 when 'MANUAL SHRINK' then 4
//                 else 10 end Urut
//                 ,case when Stat = 'C' Then 'OUTPUT' else 'PLAN' END as orders, 
//         sum(satu) as tgl_1,sum(dua) as tgl_2, sum(tiga) as tgl_3, sum(empat) as tgl_4, sum(lima) as tgl_5, 
//         sum(enam) as tgl_6, sum(tujuh) as tgl_7, sum(delapan) as tgl_8, sum(sembilan) as tgl_9, sum(sepuluh) as tgl_10,
//         sum(sebelas) as tgl_11,sum(duabelas) as tgl_12, sum(tigabelas) as tgl_13, sum(empatbelas) as tgl_14, sum(limabelas) as tgl_15, 
//         sum(enambelas) as tgl_16, sum(tujuhbelas) as tgl_17, sum(delapanbelas) as tgl_18, sum(sembilanbelas) as tgl_19, sum(duapuluh) as tgl_20,
//         sum(duapuluhsatu) as tgl_21,sum(duapuluhdua) as tgl_22, sum(duapuluhtiga) as tgl_23, sum(duapuluhempat) as tgl_24, sum(duapuluhlima) as tgl_25, 
//         sum(duapuluhenam) as tgl_26, sum(duapuluhtujuh) as tgl_27, sum(duapuluhdelapan) as tgl_28, sum(duapuluhsembilan) as tgl_29, sum(tigapuluh) as tgl_30,
//         sum(tigapuluhsatu) as tgl_31, sum(total) as total
//         from zvw_comparison3 where trim(BULAN) = '".$bln."' and stat in ('A','C') and groupinglabel is not null group by Stat,groupinglabel) order by Urut,groupinglabel";
// $data3 = oci_parse($connect, $qry3);
// oci_execute($data3);

// $qry4 = "select distinct * from zvw_comparison3
//         where stat in ('A','C') and trim(bulan) = '".$bln."'
//         order by label_type, cr_date, work_order";
// $data4 = oci_parse($connect, $qry4);
// oci_execute($data4);

// $qry5 = "select * from zvw_production_delay order by package_type,cr_Date";
// $data5 = oci_parse($connect, $qry5);
// oci_execute($data5);

// $qry51 = "select * from ZVW_PRODUCTION_MOVEUP order by package_type,cr_Date";
// $data51 = oci_parse($connect, $qry51);
// oci_execute($data51);

// $qry61 = "select batery_type,sum(pln) as pln, sum(output)as output,sum(acumm) as accumulation  
//           from zvw_comparison_summary where bulan = '".$bln."' and hari <= $kemaren group by batery_type";
// $data61 = oci_parse($connect, $qry61);
// oci_execute($data61);

// $qry62 = "select label_type,sum(pln) as pln, sum(output)as output,sum(acumm) as accumulation  
//           from zvw_comparison_summary where bulan = '".$bln."' and hari <= $kemaren group by label_type";
// $data62 = oci_parse($connect, $qry62);
// oci_execute($data62);

// $qry63 = "select label_type,sum(pln) as pln, sum(output)as output,sum(acumm) as accumulation  
//           from zvw_comparison_summary where bulan = '".$bln."' and hari = $kemaren group by label_type";
// $data63 = oci_parse($connect, $qry63);
// oci_execute($data63);

// $qry7 = "select work_order, cr_date, hr.item_no, it.item, it.description, lt.label_type_name, 
//         cl.class_1 ||''|| cl.class_2 as batt_type, hr.qty, sum(mps_qty) as plan_qty
//         from mps_header hr
//         inner join mps_details dt on hr.po_line_no = dt.po_line_no and hr.po_no = dt.po_no
//         inner join item it on hr.item_no = it.item_no
//         inner join label_type lt on it.label_type = lt.label_type_code
//         inner join class cl on it.class_code = cl.class_code
//         where dt.mps_date = trim((select sysdate from dual)) 
//         group by hr.item_no,it.item,it.description, lt.label_type_name, cl.class_1, cl.class_2, work_order,hr.qty,cr_date";
// $data7 = oci_parse($connect, $qry7);
// oci_execute($data7);
?>

