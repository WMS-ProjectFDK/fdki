
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="300">
    <title>Monitoring Assembling</title>
    <link rel="icon" type="image/png" href="../../favicon.png">
    <link rel="stylesheet" type="text/css" href="../../themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="../../themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="../../themes/color.css" />
    <script type="text/javascript" src="../../js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="canvasjs.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
	
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
	.blink-replace{
		display: inline-block;
		animation: blinkingBackground 1s infinite;
	}
	@keyframes blinkingBackgroundReplace{
		50% { background-color: #FF0000;}
	}

	@keyframes blinkingBackgroundOrder{
		50% { background-color: #FFFF00;}
	}

	.blink-order-replacement{
		animation: blinkingBackgroundReplace 1s infinite;
	}

	.blink-order{
		animation: blinkingBackgroundOrder 1s infinite;
	}
	</style>
</head>
<body>
	<div class="fitem" align="center">
		<span style="display:inline-block;font-size: 25px;font-weight: bold;">REALTIME MONITORING STOP TIME ASSEMBLY LINE LR03#2</span> 
	</div>

	<div id="toolbar">
		<fieldset style="width:605px;height: 30px;border-radius:3px;float:left;">
			<div class="fitem" align="left">
				<span  style="width:130px;display:inline-block;font-size: 25px;font-weight: bold;">DATE :</span>
				<span  style="width:205px;font-size: 25px;font-weight: bold;" name="tanggal" id="tanggal1" > </span>
			</div>
			<div class="fitem" align="center"></div>	
		</fieldset>

		<fieldset style="height: 30px;border-radius:3px;margin-left:505px;">
			<div class="fitem" align="left">
				<span  style="width:130px;display:inline-block;font-size: 25px;font-weight: bold;">TIME :</span>
				<span  style="width:205px;font-size: 25px;font-weight: bold;" name="tanggal" id="waktu"> </span>
			</div>
			<div class="fitem" align="center"></div>	
		</fieldset>
	</div>

	<div id="toolbar" align="center">
		<fieldset style="width:auto;height: 30px;border-radius:3px;" id="fld">
			<span style="display:inline-block;font-size: 30px;font-weight: bold;" id="INFORMASI">INFORMASI</span> 
		</fieldset>
	</div>
		
	<div id="toolbar">
		<fieldset style="width:400px;height: 40px;border-radius:3px;float:left;text-align:center" >
			<div align="center">
				<span  style="width:400px;display:inline-block;font-size: 20px;font-weight: bold;">TOTAL WORKING TIME</span>
				<br>
				<span style="width:200px;height: 40px;font-size: 20px;text-align:center;font-weight: bold;" name="tanggal" id="jalan"> </span>
			</div>	
		</fieldset>
		<fieldset style="height: 40px;border-radius:2px;float:left;" id="fldstop">
			<div align="center">
				<span  style="width:400px;display:inline-block;font-size: 20px;font-weight: bold;">TOTAL LINE STOP (NO OUTPUT)</span>
				<br>
				<span  style="width:155px;height: 40px;font-size: 20px;text-align: center;font-weight: bold;" name="tanggal" id="stop"> </span>
			</div>	
		</fieldset>
		<fieldset style="height: 40px;border-radius:2px;margin-left:520px;" id="fldrasio">
			<div align="center">
				<span  style="width:350px;display:inline-block;font-size: 20px;font-weight: bold;">OPERATION TIME RATIO</span>
				<br>
				<span  style="width:70px;height: 40px;font-size: 20px;text-align: center;font-weight: bold;" name="tanggal" id="rasio"> </span>
			</div>	
		</fieldset>
	</div>
	<div id="toolbar" align="left">
		<fieldset style="width:auto;height: 265px;border-radius:3px;">
			<span align="center" style="display:inline-block;font-size: 20px;font-weight: bold;">PROSES DETAIL</span> 
			<div align="left">
				<span  style="width:200px;display:inline-block;font-size: 20px;font-weight: bold;">Process name :</span>
				<div style="width:127px;height: 30px;display:inline-block;text-align:center;vertical-align: middle;background-color: #00AAFF;margin-left: 0px;" id="1">
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('1')"><b>MOULD RING</b></a>
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align:center;vertical-align: middle;background-color: #00AAFF;margin-left: 2px;" id="2">
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('2')"><b>CAN SUPPLY</b></a>
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF;margin-left: 2px;" id="3"> 
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('3')"><b>MIX INSERT</b></a>
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;"  id="4">
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('4')"><b>BEADING</b></a> 
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;"  id="5">
					 <a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('5')"><b>ADHESIVE</b></a>
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;"  id="6">
				 	<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('6')"><b>SEP. INSERT</b></a>
				</div>
			</div>	
			<div align="left">
				<span  style="width:200px;display:inline-block;font-size: 20px;font-weight: bold;">Stop Time :</span>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="MOULD"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="CANSUPPLY"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="MIXINSERT"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="BEADING"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="ADHESIVE"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="SEPARATORINSERT"> </input>
			</div>
			<hr>
			<span style="display:inline-block;font-size: 20px;font-weight: bold;"></span> 
			<div align="left">
			<span  style="width:198px;display:inline-block;font-size: 20px;font-weight: bold;">Process name :</span>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;"  id="7">
				 	<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('7')"><b>ELECTROLYTE</b></a>
				 </div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;" id="8"> 
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('8')"><b>ANODE GEL</b></a>
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;" id="9"> 
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('9')"><b>JIG STOCK</b></a>
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;" id="10"> 
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('10')"><b>WEIGHT CHECK</b></a>
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;" id="11"> 
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('11')"><b>CURLING</b></a>
				</div>
				<div style="width:127px;height: 30px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF; margin-left: 2px;" id="12"> 
					<a href="#" style="font-size: 20px;text-decoration: none; color: black;" onclick="machine('12')"><b>CASING LOADER</b></a>
				</div>
			</div>	
			<div align="left">
				<span  style="width:200px;display:inline-block;font-size: 20px;font-weight: bold;">Stop Time :</span>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="ELECFILLING"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="ANODEGEL"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="JIGSTOCK"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="WEIGHTCHECKER"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="CURLING"> </input>
				<input type="text" style="width:125px;height: 30px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" id="CASINGLOAD"> </input>
			</div>
			<hr>
			<div align="left">
				<span  style="width:200px;display:inline-block;font-size: 14px;font-weight: bold;">SHIFT :</span>
				<div style="width:163px;height: 15px;display:inline-block;text-align:center;vertical-align: middle;background-color: #00AAFF;margin-left: 1.5px;" id="s1">I</div>
				<div style="width:163px;height: 15px;display:inline-block;text-align:center;vertical-align: middle;background-color: #00AAFF;margin-left: 1.5px;" id="s2">II</div>
				<div style="width:163px;height: 15px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF;margin-left: 1.5px;" id="s3">III</div>
				<div style="width:163px;height: 15px;display:inline-block;text-align: center;vertical-align: middle;background-color: #00AAFF;margin-left: 1px;" id="s4">TOTAL</div>
			</div>
			<div align="left">
				<span  style="width:202px;display:inline-block;font-size: 14px;font-weight: bold;">OUTPUT (QTY) :</span>
				<input type="text" style="width:160px;height: 30px;background-color: rgb(0,255,0);font-size: 18px;text-align: right;font-weight: bold;" id="s_1"></input>
				<input type="text" style="width:160px;height: 30px;background-color: rgb(0,255,0);font-size: 18px;text-align: right;font-weight: bold;" id="s_2"></input>
				<input type="text" style="width:160px;height: 30px;background-color: rgb(0,255,0);font-size: 18px;text-align: right;font-weight: bold;" id="s_3"></input>
				<input type="text" style="width:160px;height: 30px;background-color: rgb(0,255,0);font-size: 18px;text-align: right;font-weight: bold;" id="s_4"></input>
			</div>
		</fieldset>
	</div>
	<div id="chartContainer" style="height: 300px; width: 100%;"></div>
	<span align="center" id="demo" width="100" height="100"></span>

	<div style="height: 300px; width: 100%;">
		<h2 align="center">REPLACEMENT PART</h2>
		<table id="dg" class="easyui-datagrid" style="width:auto;height:auto;" fitColumns="true">
			<thead>
			<tr>
				<th field="machine" halign="center" width="250">PROCESS</th>
				<th field="line" halign="center" align="center" width="80">LINE</th>
				<th field="nama_part" halign="center" width="300">PART</th>
				<th field="unit_qty" halign="center" align="right" width="80">UNIT QTY</th>
				<th field="tgl_ganti" halign="center" align="center" width="100">LAST<br>REPLACEMENT</th>
				<th field="lifetime_r" halign="center" align="right" width="150">LIFE TIME (pcs)</th>
				<th field="lifetime_c" halign="center" align="right" width="150">CURRENT<br>LIFE TIME (pcs)</th>
				<th field="estimation_replacment" halign="center" align="center" width="130">ESTIMATION<br>REPLACEMENT DATE</th>
				<th field="status" halign="center" align="center" width="100" data-options="styler:cellStyler">STATUS</th>
			</tr>
			</thead>
		</table>
	</div>
	<br/>
</body>
</html>

<script type="text/javascript">
	myTimer2();

	$('#dg').datagrid({
		url : '_getPartOrder.php?line=LR03-2'
	});

	function cellStyler(value,row,index){
        if (value == 'REPLACE'){
            return 'background-color:#FF0000;color:white;';
        }else if (value == 'ORDER'){
        	return 'background-color:#FFFF00;color:black;';
        }
    }

	var totalstop = 0;
	var a = 1;			var g = 1;
	var b = 1;			var h = 1;
	var c = 1;			var i = 1;
	var d = 1;			var j = 1;
	var e = 1;			var k = 1;
	var f = 1;			var l = 1;		

	var sA = 1;			var sZ = 1;
	var mld = 0;		var loop = 1;
	var ref = 1;		var vRasio = 0;
	var myVar = setInterval(function(){myTimer()},1000);
	var myVar0 = setInterval(function(){myTimer0()},1000*60);
	var myVar2 = setInterval(function(){myTimer2()},1000*60*60);
	var myVar3 = setInterval(function(){myTimer3()},1000*60);

	function machine(mach){
		var url = '_getPartAll.php?id_machine='+mach+'&line=LR03-2';
		window.open(decodeURIComponent(url));
	}

	function myTimer0(){
		$.ajax({
			type: 'GET',
			dataType: "json",
			url: 'json_view_monitoring.php?line=LR03-2'
		});
	}

	function myTimer(){
		rows = $('#dg').datagrid('getRows');
		total = rows.length;
		
		for(var i=0; i<total; i++){
			if (rows[i].status == 'REPLACE'){
				var element = document.getElementById(rows[i].id_machine);
			  	element.classList.add("blink-order-replacement");
			}else{
				var element = document.getElementById(rows[i].id_machine);
			  	element.classList.add("blink-order");
			}
		}

	    var d = new Date();
	    var n = parseInt(d.getDate());
 		var pesan = '';	
        var data;
        var sts = 'RUNNING'
		$.ajax({
			type: 'GET',
			dataType: "json",
			url: 'result_LR03-2.json',
			data: data,
			success: function (data) {
				document.getElementById("fldstop").style.backgroundColor = "white"
				document.getElementById("fldrasio").style.backgroundColor = "white"
				document.getElementById("fldrasio").style.color = "black"
				document.getElementById("fld").style.backgroundColor = "green"
				document.getElementById("INFORMASI").style.color = "white"
				document.getElementById("fldstop").style.color = "black"
				  
				a++;		g++;
				b++;		h++;
				c++;		i++;
				d++;		j++;
				e++;		k++;
				f++;		l++;

				sA++;		sZ++;
				ref++;		loop++;
				totalstop = 0;

				var d = new Date();
				var yy = d.getFullYear();
				var mm = d.getMonth()+1;
				var dd = d.getDate();

				if (mm<10) {
					m1 = '0'+mm;
				}else{
					m1 = mm;
				}

				document.getElementById("tanggal1").innerHTML = yy+'-'+m1+'-'+dd;
		        document.getElementById("waktu").innerHTML = d.toLocaleTimeString().replace('.',':').replace('.',':');

	    		//RASIO
	    		vrasio = data[0].CEKRASIO;
	    		if (vrasio  < 60){
	    			document.getElementById("fldrasio").style.backgroundColor = "RED"
	    			document.getElementById("fldrasio").style.color = "white"
	    		}else if(vrasio >= 60 & vrasio < 75){
	    			document.getElementById("fldrasio").style.backgroundColor = "yellow"
	    			document.getElementById("fldrasio").style.color = "black"
	    		}else if(vrasio >75){
	    			document.getElementById("fldrasio").style.backgroundColor = "Green"
	    			document.getElementById("fldrasio").style.color = "white"				
	    		};

				//START & STOP
				if (data[0].S_START == 0 & data[0].S_STOP ==0) {
					sts='PERMISIBLE STOP';
					document.getElementById("fld").style.backgroundColor = "yellow"
					document.getElementById("INFORMASI").style.color = "black"
					sA=0;
				}else if (data[0].S_START == 1 & data[0].S_STOP ==1) {
					cek = fancyTimeFormat(data[0].R_STOP)
					sts='STOP (NO OUTPUT)' + ' ' + cek;
					document.getElementById("fld").style.backgroundColor = "red"
					document.getElementById("INFORMASI").style.color = "black"
					document.getElementById("fldstop").style.backgroundColor = "red"
					document.getElementById("fldstop").style.color = "white"
					totalstop ++;
				}else{
					sA=0;
				}

				//mach-1
				if(data[0].S_MOULDING == false){
				  	document.getElementById("MOULD").style.backgroundColor = "green"
				  	document.getElementById("MOULD").style.color = "black"
				  	document.getElementById("MOULD").value	= fancyTimeFormat(data[0].R_MOULDING)
				  	a=0;
				}else{
				  	document.getElementById("MOULD").style.backgroundColor = "red"
				  	document.getElementById("MOULD").style.color = "white"
				  	document.getElementById("MOULD").value = fancyTimeFormat(data[0].R_MOULDING)
				  	totalstop ++;
				}

				//mach-2
				if(data[0].S_CAN_SUPPLY == false){
				  	document.getElementById("CANSUPPLY").style.backgroundColor = "green"
				  	document.getElementById("CANSUPPLY").style.color = "black"
				  	document.getElementById("CANSUPPLY").value	= fancyTimeFormat(data[0].R_CAN_SUPPLY)
				  	b=0;
				}else{
				  	document.getElementById("CANSUPPLY").style.backgroundColor = "red"
				  	document.getElementById("CANSUPPLY").style.color = "white"
				  	document.getElementById("CANSUPPLY").value = fancyTimeFormat(data[0].R_CAN_SUPPLY)
				  	totalstop ++;
				}

				//mach-3
				if(data[0].S_MIX_INSERT == false){
				  	document.getElementById("MIXINSERT").style.backgroundColor = "green"
				  	document.getElementById("MIXINSERT").style.color = "black"
				  	document.getElementById("MIXINSERT").value = fancyTimeFormat(data[0].R_MIX_INSERT)
				  	c=0;
				}else{
				  	document.getElementById("MIXINSERT").style.backgroundColor = "red"
				  	document.getElementById("MIXINSERT").style.color = "white"
				  	document.getElementById("MIXINSERT").value = fancyTimeFormat(data[0].R_MIX_INSERT)
				  	totalstop ++;
				}		
				
				//mach-4
				if(data[0].S_BEADING == false){
				  	document.getElementById("BEADING").style.backgroundColor = "green"
				  	document.getElementById("BEADING").style.color = "black"
				  	document.getElementById("BEADING").value = fancyTimeFormat(data[0].R_BEADING)
				  	d=0;
				}else{
				  	document.getElementById("BEADING").style.backgroundColor = "red"
				  	document.getElementById("BEADING").style.color = "white"
				  	document.getElementById("BEADING").value = fancyTimeFormat(data[0].R_BEADING)
				  	totalstop ++;
				}

				//mach-5
				if(data[0].S_ADHESIVE == false){
				  	document.getElementById("ADHESIVE").style.backgroundColor = "green"
				  	document.getElementById("ADHESIVE").style.color = "black"
				  	document.getElementById("ADHESIVE").value = fancyTimeFormat(data[0].R_ADHESIVE)
				  	e=0;
				}else{
				  	document.getElementById("ADHESIVE").style.backgroundColor = "red"
				  	document.getElementById("ADHESIVE").style.color = "white"
				  	document.getElementById("ADHESIVE").value = fancyTimeFormat(data[0].R_ADHESIVE)
				  	totalstop ++;
				}

				//mach-6
				if(data[0].S_SEPARATOR == false){
				  	document.getElementById("SEPARATORINSERT").style.backgroundColor = "green"
				  	document.getElementById("SEPARATORINSERT").style.color = "black"
				  	document.getElementById("SEPARATORINSERT").value = fancyTimeFormat(data[0].R_SEPARATOR)
				  	f=0;
				}else{
				  	document.getElementById("SEPARATORINSERT").style.backgroundColor = "red"
				  	document.getElementById("SEPARATORINSERT").style.color = "white"
				  	document.getElementById("SEPARATORINSERT").value = fancyTimeFormat(data[0].R_SEPARATOR);
				  	totalstop ++;
				}

				//mach-7
				if(data[0].S_ES_FILLING == false){
				  	document.getElementById("ELECFILLING").style.backgroundColor = "green"
				  	document.getElementById("ELECFILLING").style.color = "black"
				  	document.getElementById("ELECFILLING").value = fancyTimeFormat(data[0].R_ES_FILLING)
				  	g=0;
				}else{
				  	document.getElementById("ELECFILLING").style.backgroundColor = "red"
				  	document.getElementById("ELECFILLING").style.color = "white"
				  	document.getElementById("ELECFILLING").value = fancyTimeFormat(data[0].R_ES_FILLING)
				  	totalstop ++;
				}

				//mach-8
				if(data[0].S_GEL_FILLING == false){
				  	document.getElementById("ANODEGEL").style.backgroundColor = "green"
				  	document.getElementById("ANODEGEL").style.color = "black"
				  	document.getElementById("ANODEGEL").value = fancyTimeFormat(data[0].R_GEL_FILLING)
				  	h=0;
				}else{
				  	document.getElementById("ANODEGEL").style.backgroundColor = "red"
				  	document.getElementById("ANODEGEL").style.color = "white"
				  	document.getElementById("ANODEGEL").value = fancyTimeFormat(data[0].R_GEL_FILLING)
				  	totalstop ++;
				}

				//mach-9
				if(data[0].S_JIG_STOCK == false){
				  	document.getElementById("JIGSTOCK").style.backgroundColor = "green"
				  	document.getElementById("JIGSTOCK").style.color = "black"
				  	document.getElementById("JIGSTOCK").value = fancyTimeFormat(data[0].R_JIG_STOCK)
				  	i=0;

				}else{
				  	document.getElementById("JIGSTOCK").style.backgroundColor = "red"
				  	document.getElementById("JIGSTOCK").style.color = "white"
				  	document.getElementById("JIGSTOCK").value = fancyTimeFormat(data[0].R_JIG_STOCK)
				  	totalstop ++;
				}

				//mach-10
				if(data[0].S_WEIGHT_CHECKER == false){
				  	document.getElementById("WEIGHTCHECKER").style.backgroundColor = "green"
				  	document.getElementById("WEIGHTCHECKER").style.color = "black"
				  	document.getElementById("WEIGHTCHECKER").value = fancyTimeFormat(data[0].R_WEIGHT_CHECKER)
				  	j=0;
				}else{
				  	document.getElementById("WEIGHTCHECKER").style.backgroundColor = "red"
				  	document.getElementById("WEIGHTCHECKER").style.color = "white"
				  	document.getElementById("WEIGHTCHECKER").value = fancyTimeFormat(data[0].R_WEIGHT_CHECKER)
				  	totalstop ++;
				}
				
				//mach-11
				if(data[0].S_CURLING == false){
				  	document.getElementById("CURLING").style.backgroundColor = "green"
				  	document.getElementById("CURLING").style.color = "black"
				  	document.getElementById("CURLING").value = fancyTimeFormat(data[0].R_CURLING)
				  	k=0;
				}else{
				  	document.getElementById("CURLING").style.backgroundColor = "red"
				  	document.getElementById("CURLING").style.color = "white"
				  	document.getElementById("CURLING").value = fancyTimeFormat(data[0].R_CURLING)
				  	totalstop ++;
				}

				//mach-12
				if(data[0].S_CASING_LOADER == false){
				  	document.getElementById("CASINGLOAD").style.backgroundColor = "green"
				  	document.getElementById("CASINGLOAD").style.color = "black"
				  	document.getElementById("CASINGLOAD").value = fancyTimeFormat(data[0].R_CASING_LOADER)
				  	l=0;
				}else{
				  	document.getElementById("CASINGLOAD").style.backgroundColor = "red"
				  	document.getElementById("CASINGLOAD").style.color = "white"
				  	document.getElementById("CASINGLOAD").value = fancyTimeFormat(data[0].R_CASING_LOADER)
				  	totalstop ++;
				}

				document.getElementById("jalan").innerHTML = fancyTimeFormat(data[0].CEKJALAN);
                document.getElementById("stop").innerHTML  = fancyTimeFormat(data[0].CEKSTOP);
                document.getElementById("rasio").innerHTML = data[0].CEKRASIO + '%';
                document.getElementById("INFORMASI").innerHTML = sts;

				if (ref > 300){
					if (totalstop == 0) {
						window.location.reload(true);
						ref = 0;	
					}
				}

				if (loop  > 4){
					loop = 0;
				 
					var chart = new CanvasJS.Chart("chartContainer", {
						title: {
							text: "Stop Process In LR03#2"
						},
						axisY: {
							title: "Process in Second",
						},
						data: [{
							type: "column",	
							yValueFormatString: "## Sec",
							indexLabel: "{y}",
							dataPoints: [
								{label: "MOULD", y: parseInt(data[0].T_MOULDING)},
								{label: "CAN SUPPLY", y: parseInt(data[0].T_CAN_SUPPLY)},
								{label: "MIX INSERT", y: parseInt(data[0].T_MIX_INSERT)},
								{label: "BEADING", y: parseInt(data[0].T_BEADING)},
								{label: "ADHESIVE", y: parseInt(data[0].T_ADHESIVE)},
								{label: "SEP. INSERT", y: parseInt(data[0].T_SEPARATOR)},
								{label: "ELEC FILLING", y: parseInt(data[0].T_ES_FILLING)},
								{label: "ANODE GEL", y: parseInt(data[0].T_GEL_FILLING)},
								{label: "JIG STOCK", y: parseInt(data[0].T_JIG_STOCK)},
								{label: "WEIGHT CHECKER", y: parseInt(data[0].T_WEIGHT_CHECKER)},
								{label: "CURLING", y: parseInt(data[0].T_CURLING)},
								{label: "CASING LOAD", y: parseInt(data[0].T_CASING_LOADER)}
							]
						}]
					});
				    chart.render();
				}
			}
		});

		$.ajax({
			type: 'GET',
			dataType: "json",
			url: 'json_view_output.php?line=LR03-2',
			data: data,
			success: function (data) {
				document.getElementById("s_1").value = data[0].shift_1+' ';
				document.getElementById("s_2").value = data[0].shift_2+' ';
				document.getElementById("s_3").value = data[0].shift_3+' ';
				document.getElementById("s_4").value = data[0].total+' ';
			}
		});
	}

	function myTimer2(){
		$.ajax({
			type: 'GET',
			url: '_getPart.php?line=LR03-2'
		});
	}

	function myTimer3(){
		$('#dg').datagrid({
			url : '_getPartOrder.php?line=LR03-2'
		});
	}

	function increment(){
	    i = i % 360 + 1; 
	}

	function fancyTimeFormat(time){   
	    // Hours, minutes and seconds
	    var hrs = ~~(time / 3600);
	    var mins = ~~((time % 3600) / 60);
	    var secs = time % 60;

	    // Output like "1:01" or "4:03:59" or "123:03:59"
	    var ret = "";

	    if (hrs > 0) {
	        ret += "" + hrs + ":" + (mins < 10 ? "0" : "");
	    }

	    ret += "" + mins + ":" + (secs < 10 ? "0" : "");
	    ret += "" + secs;
	    return ret;
	}
</script>