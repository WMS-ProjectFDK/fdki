<?php
include("../connect/conn2.php");
session_start();
require_once('___loginvalidation.php');
$user_name = $_SESSION['id_wms'];
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GENERATE PO</title>
<link rel="icon" type="image/png" href="../favicon.png">
<script language="javascript">
		function confirmLogOut(){
		var is_confirmed;
		is_confirmed = window.confirm("End current session?");
		return is_confirmed;
		}
</script> 
<link rel="stylesheet" type="text/css" href="../plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../themes/icon.css" />
<link rel="stylesheet" type="text/css" href="../themes/color.css" />
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../js/datagrid-filter.js"></script>
<script type="text/javascript" src="../js/datagrid-detailview.js"></script>
<script type="text/javascript" src="../js/jquery.edatagrid.js"></script>
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
<?php include ('../ico_logout.php'); ?>
	<table id="dg" title="GENERATE PO SPAREPARTS" class="easyui-datagrid" style="width:100%;height:490px;" url="spareparts_generate_po_get.php" toolbar="#toolbar" fitcolumns="true" rownumbers="true"></table>

	<div id="toolbar">
		<div class="fitem">
			<a href="spareparts_generate_po_excel.php" style="width:200px;display:inline-block;float:left;" class="easyui-linkbutton c2">
				<i class="fa fa-table" aria-hidden="true"></i> Download Format Excel
			</a>
			<form id="upd" method="post" enctype="multipart/form-data">
				<a href="javascript:void(0)" style="width:200px;display:inline-block;margin-left: 5px;" class="easyui-linkbutton c2" type="submit" onclick="uploaddata()">
					<i class="fa fa-upload" aria-hidden="true"></i> Upload
				</a>
				<input class="easyui-filebox" name="fileexcel" id="fileexcel" style="width:500px;">
			</form>	
		</div>
	</div>

	<script type="text/javascript">
		var url;
		function uploaddata() {
		$('#upd').form('submit',{
			url: 'spareparts_generate_po_upload.php',
			onSubmit: function(){
				return $(this).form('validate');
			},
			success: function(result){
				$.messager.alert('SAFETY STOCK',result,'info');
				//alert(result);
		 		$('#fileexcel').filebox('clear');
				$('#dg').datagrid('reload');
				}
			});
		}
		
		$(function(){
			$('#dg').datagrid({
			    columns:[[
				    {field:'COMPANY_CODE', hidden: true},
				    {field:'COMPANY', halign:'center', align:'left', title:'SUPPLIER',width:150},
				    {field:'ITEM_NO', hidden: true},
				    {field:'DESCRIPTION', halign:'center', title:'DESCRIPTION',width:200},
				    {field:'UOM_Q', hidden: true},
				    {field:'UNIT', halign:'center', align:'center', title:'UoM',width:40},
				    {field:'QTY', halign:'center', align:'right', title:'QTY',width:70},
				    {field:'U_PRICE', halign:'center', align:'right', title:'PRICE',width:100},
				    {field:'PDAYS', hidden: true},
				    {field:'PDESC', halign:'center', align:'left', title:'PAYMENT TERMS',width:150}
			    ]]
		    });
			var dg = $('#dg').datagrid();
			dg.datagrid('enableFilter');
		});
	</script>
</body>
</html>