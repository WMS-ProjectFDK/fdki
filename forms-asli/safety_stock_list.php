<?php 
include("../connect/conn.php");
session_start();
require_once('___loginvalidation.php');
$user_name = $_SESSION['id_wms'];


$arrBulan = array('1' => 'JAN',
				  '2' => 'FEB',
				  '3' => 'MAR',
				  '4' => 'APR',
				  '5' => 'MAY', 
				  '6' => 'JUN',
         		  '7' => 'JUL',
         		  '8' => 'AUG',
         		  '9' => 'SEP',
         		  '10' => 'OCT',
         		  '11' => 'NOV',
         		  '12' => 'DEC');

$b1 = intval(date('m'));


$t1 = intval(date('Y'));
if($b1 == 12){
	$b2 = 1;		$b3=2;
	$t2 = $t1+1;	$t3=$t1+1;
}else{
	$b2 = $b1+1;	$b3=$b1+2;
	$t2 = $t1;		$t3=$t1;
}

//echo $arrBulan('JAN');

$bulan1 = '\'SAFETY STOCK '.date('F').'\'';
$bulan2 = '\'SAFETY STOCK '.date('F', strtotime('+1 month')).'\'';
$bulan3 = '\'SAFETY STOCK '.date('F', strtotime('+2 month')).'\'';
$q= "select tahun||bulan as period,bulan, tahun, tot, upload_time,
	case when tot=0 then 'N' else 'Y' end as ket
	from (
	SELECT aa.bulan, aa.tahun, bb.tot, bb.upload_time  FROM (
	select distinct bulan, tahun from ztb_assy_plan
	where ((bulan = $b1 and tahun=$t1) OR (bulan = $b2 and tahun=$t2) OR (bulan = $b3 and tahun=$t3))
	) aa
	left outer join
	(select bulan, tahun, upload_time, nvl(count(distinct tanggal),0) as tot from ztb_assy_plan where used=1 
	group by bulan, tahun, upload_time) bb 
	on aa.bulan=bb.bulan AND aa.tahun=bb.tahun
	) where rownum <= 3
	order by tahun
	";


$sq = "
	select substr(assy_line, 0, 4)||cell_type as Grade,sum(qty) TotalProduksi, upload_time,bulan,tahun,tot ,case when tot=0 then 'N' else 'Y' end as ket
  from ztb_assy_plan aa
  left outer join
	(select bulan bulanx, tahun tahunx, upload_time up, nvl(count(distinct tanggal),0) as tot from ztb_assy_plan where used=1 
	group by bulan, tahun, upload_time) bb 
	on aa.bulan=bb.bulanx AND aa.tahun=bb.tahunx
	where ((bulan = $b1 and tahun=$t1) OR (bulan = $b2 and tahun=$t2) OR (bulan = $b3 and tahun=$t3))  and used=1 
  group by bulan,tahun,upload_time,substr(assy_line, 0, 4)||cell_type,tot";


// $data = oci_parse($connect, $q);
// oci_execute($data);
// $rowno=0;
// $items = array();
// $sts = 1;
// while($row = oci_fetch_object($data)) {
// 	array_push($items, $row);
// 	if ($items->KET == 'N'){
// 		$sts = 0;
// 	}
// 	$rowno++;
// }
?>
<!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="content-type" content="text/plain; charset=UTF-8"/>
    <meta charset="UTF-8">
    <title>SAFETY STOCK LIST</title>
    <link rel="icon" type="image/png" href="../favicon.png">
	<script language="javascript">
 		function confirmLogOut(){
			var is_confirmed;
			is_confirmed = window.confirm("End current session?");
			return is_confirmed;
 		}
  	</script> 
    <link rel="stylesheet" type="text/css" href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../themes/color.css">
    <script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../js/datagrid-filter.js"></script>
	<style>
	*{
	font-size:12px;
	}
	body {
		font-family:verdana,helvetica,arial,sans-serif;
		padding:20px;
		font-size:12px;
		margin:0;
	}
	h2 {
		font-size:18px;
		font-weight:bold;
		margin:0;
		margin-bottom:15px;
	}
	.demo-info{
		padding:0 0 12px 0;
	}
	.demo-tip{
		display:none;
	}
	.fitem{
		padding: 3px 0px;
	}
	.board_2 {
		position: absolute;
		margin-left:725px;	
		top: 0px;
		border-style: solid;
		border-width: 0px;
	}
	</style>
    </head>
    <body>
	<?php 
	include ('../ico_logout.php'); 
	//include ('sync_get2.php'); 
	?>
	
	<div id="toolbar" style="margin-top: 5px;margin-bottom: 5px;width: 100%;">
		<br>
		<a href="javascript:void(0)" class="easyui-linkbutton c2" onclick="print_assy1()" style="width:200px;"><i class="fa fa-download" aria-hidden="true"></i> Download</a>
	</div>
	<br>
	<table id="dg1" title="SAFETY STOCK LIST" class="easyui-datagrid" toolbar="#toolbar" style="width:80%;height:auto;" rownumbers="true"></table>
	
	<script type="text/javascript">
		function myformatter(date){
			var y = date.getFullYear();
			var m = date.getMonth()+1;
			var d = date.getDate();
			return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
		}

		function myparser(s){
			if (!s) return new Date();
				var ss = (s.split('-'));
				var y = parseInt(ss[0],10);
				var m = parseInt(ss[1],10);
				var d = parseInt(ss[2],10);
				if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
				return new Date(y,m-1,d);
			} else {
				return new Date();
			}
		}

		$(function(){
			


			$('#dg1').datagrid('load', {
			Bulan: <?php Print($b1); ?>,
			tahun: <?php Print($t1); ?>
			});

			$('#dg1').datagrid( {
			url: 'safety_stock_detail_get.php',
			

			
			singleSelect: true,
			
			columns:[[
			    {field:'ITEM_NO',title:'ITEM NO', halign:'center', width:75},
			    {field:'DESCRIPTION',title:'DESCRIPTION', halign:'center', width:270},
                {field:'QTY', title: <?php Print(strtoupper($bulan1)); ?>, halign:'center',align:'right', width:130},
                {field:'THIS_INVENTORY', title: 'STOCK NOW', halign:'center',align:'right', width:130},
                {field:'PURCHASEQTY', title: 'DIFFERENCE', halign:'center',align:'right', width:130},
                {field:'PURCHASEQTY2', title: 'PURCHASE QTY', halign:'center',align:'right', width:130,hidden:true},
                {field:'QTY_2', title: <?php Print(strtoupper($bulan2)); ?>, halign:'center',align:'right', width:130},
                {field:'QTY_3', title: <?php Print(strtoupper($bulan3)); ?>, halign:'center',align:'right', width:130}
             
			]],

			// rowStyler:function(index,row){
   //      	if (row.PURCHASEQTY2>0){
   //          	return 'background-color:aqua;color:black;font-weight:bold;';
   //      		}
   //  		},	
    		
			onLoadSuccess: function (data) {

			}
			})	

			$('#dg2').datagrid('load', {
			Bulan: <?php Print($b2); ?>,
			tahun: <?php Print($t2); ?>
			
			});

			$('#dg2').datagrid( {
			
			url: 'mrp_run_detail_get.php',
			singleSelect: true,
			
			columns:[[
			    {field:'CELL_GRADE',title:'CELL & GRADE', halign:'center', width:150},
                {field:'QUANTITY', title:'QUANTITY', halign:'center',align:'right', width:150}
             
			]],
			onLoadSuccess: function (data) {

			}
			})




			$('#dg3').datagrid('load', {
			Bulan: <?php Print($b3); ?>,
			tahun: <?php Print($t3); ?>
			
			
			});

			$('#dg3').datagrid( {
			url: 'mrp_run_detail_get.php',
			
			singleSelect: true,
			
			columns:[[
			    {field:'CELL_GRADE',title:'CELL & GRADE', halign:'center', width:150},
                {field:'QUANTITY', title:'QUANTITY', halign:'center',align:'right', width:150}
             
			]],
			onLoadSuccess: function (data) {

			}
			})
		});

		var n = 0;
		

		function formatListprice(value,row,index){
		    var a = parseInt(value);
		    
		    if (a  > 0){
		        return 'color:red;';
		    } else {
		        return value ;
		    }
		}

		

		function cek_jumlah(){
			$.ajax({
				type: 'GET',
				url: 'json/json_jumlah_mrp.php',
				data: { kode:'kode' },
				success: function(data){
					n = data[0].persen;
				}
			});
		}

		function p_bar(){
			var value = $('#progress').progressbar('getValue');
            if (value < 57){
                value = n;
                $('#progress').progressbar('setValue', value);
                setTimeout(arguments.callee, 200);
            }else{
            	$.messager.alert('INFORMATION','MRP FINISH','info');
            	$('#progress').progressbar('setValue', 0);
            	$('#start_mrp').linkbutton('enable');
            	window.location.href = 'ito_state.php';
            }
		}

		function run_mrp(){
			
			if ($('#ck_cr_b1').attr("checked") && $('#ck_cr_b2').attr("checked") && $('#ck_cr_b3').attr("checked")) {
				$('#start_mrp').linkbutton('disable');
				$.post('mrp_run_get.php');
				setInterval(function(){ cek_jumlah() }, 1000);
				p_bar();
			}else{
				alert("Please Lock The Plan First !!");
			
			};

			

			
        }

        function print_assy1(){
				
				pdf_url = "?Bulan="+<?php Print($b1); ?>+
		   			  "&Tahun="+<?php Print($t1); ?>;

			
			
				window.open('safety_stock_xls.php'+pdf_url, '_blank');
			
			
		}

		function print_assy2(){
			pdf_url = "?pl_bulan="+<?php Print($b2); ?>+
		   			  "&pl_tahun="+<?php Print($t2); ?>+
		   			  "&pl_cdate="+false+
					  "&pl_aline="+1+
					  "&pl_cline="+true+
					  "&pl_cltyp="+1+
					  "&pl_cktyp="+true+
					  "&pl_revis="+
					  "&pl_crev="+true+
					  "&pl_day="+1+
					  "&pl_cday="+true+
					  "&pl_cuse="+true;

			
			
				window.open('assy_plan_xls.php'+pdf_url, '_blank');
		}

		function print_assy3(){
			pdf_url = "?pl_bulan="+<?php Print($b3); ?>+
		   			  "&pl_tahun="+<?php Print($t3); ?>+
		   			  "&pl_cdate="+false+
					  "&pl_aline="+1+
					  "&pl_cline="+true+
					  "&pl_cltyp="+1+
					  "&pl_cktyp="+true+
					  "&pl_revis="+
					  "&pl_crev="+true+
					  "&pl_day="+1+
					  "&pl_cday="+true+
					  "&pl_cuse="+true;

			
			
				window.open('assy_plan_xls.php'+pdf_url, '_blank');
		}

		function exportExcel1(){
		  
		// 	$('#dg1').datagrid('load', {
		// 	Bulan: <?php Print($b1); ?>,
		// 	tahun: <?php Print($t1); ?>
		// 	document.location='excel/examexport.php'
		// 	});
		//     // How do I include entry/batch/ here?
		 
		};




		
	</script>
    </body>
    </html>