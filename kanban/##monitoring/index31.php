

     

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
      <script type="text/javascript" src="jquery.canvasjs.min.js"></script>
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
	</style>
	
</head>
<body>

	
		<div class="fitem" align="center">
			<span style="display:inline-block;font-size: 30px;font-weight: bold;">Realtime Monitoring Stop Time Assembly Line (LR03#1)</span> 
		</div>

			

		 <div id="toolbar">
			<!-- <fieldset style="width:700px;height: 70px;border-radius:3px;float:left;">
				<div class="fitem">
						
						<span  style="width:130px;display:inline-block;">Assembling Line :</span>
						<select style="width:150px;" name="cmb_asy_line" id="cmb_asy_line" required="">
	    					<option value="" selected="true">-- silahkan pilih --</option>
	    					<option value="LR31">LR32</option>
	    					<option value="LR32">LR31</option>
	    				</select>

				</div>

				

				<div class="fitem">
					   <button type="button" style="width:150px;height:45px">Show Control</button> 
				</div>
			</fieldset> -->



			<fieldset style="width:605px;height: 40px;border-radius:3px;float:left;">

				<div class="fitem" align="left">
						<span  style="width:130px;display:inline-block;font-size: 30px;font-weight: bold;">Date :</span>
						<span  style="width:205px;height: 40px;font-size: 30px;font-weight: bold;" name="tanggal" id="tanggal1" > </span>
				</div>
				<div class="fitem" align="center">
				
				</div>	
			</fieldset>

			<fieldset style="height: 40px;border-radius:3px;margin-left:505px;">
				<div class="fitem" align="left">
						<span  style="width:130px;display:inline-block;font-size: 30px;font-weight: bold;">Time :</span>
						<span  style="width:205px;height: 40px;font-size: 30px;font-weight: bold;" name="tanggal" id="waktu"> </span>
				</div>
				<div class="fitem" align="center">
				
				</div>	
			</fieldset>
		
		</div>

		 <div id="toolbar" align="center">
			<fieldset style="width:auto;height: 40px;border-radius:3px;" id="fld">
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
			<fieldset style="width:auto;height: 280px;border-radius:3px;">
				<span style="display:inline-block;font-size: 20px;font-weight: bold;">PROSES DETAIL</span> 
				<div align="left">
					<span  style="width:150px;display:inline-block;font-size: 20px;font-weight: bold;">Process name :</span>
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Moulding 1"> </input>
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Moulding 2"> </input>
					
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Mix Insert"> </input>
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Beading"> </input>
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Adhesive"> </input>
					<input type="text" style="width:130px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Sepa. Insert"> </input>
					<input type="text" style="width:130px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="ES Filling"> </input>
					<input type="text" style="width:130px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggalx" value="Jig Stock"> </input>

				</div>	
				<div align="left">
					<span  style="width:150px;display:inline-block;font-size: 20px;font-weight: bold;">Stop Time :</span>
				
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="MOULD1"> </input>
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="MOULD2"> </input>
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="MIXINSERT"> </input>
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="BEADING"> </input>
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="ADHESIVE"> </input>
					<input type="text" style="width:130px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="SEPARATORINSERT"> </input>

					<input type="text" style="width:130px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="ELECFILLING"> </input>
					<input type="text" style="width:130px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="JIGSTOCK"> </input>
				</div>	


				<br>
		    	<br>

				<span style="display:inline-block;font-size: 20px;font-weight: bold;"></span> 
				<div align="left">
						<span  style="width:150px;display:inline-block;font-size: 20px;font-weight: bold;">Process name :</span>
					<input type="text" style="width:120px;height: 40px;font-size: 19px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Vacuum"> </input>
					
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Anode Gel"> </input>
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Uncaser"> </input>
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="CCA Insert"> </input>
					<input type="text" style="width:120px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Curling Draw"> </input>
					<input type="text" style="width:130px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Weight Checker"> </input>
					<input type="text" style="width:130px;height: 40px;font-size: 20px;text-align: center;background-color: rgb(0,150,255);" name="tanggal" id="tanggal" value="Casing Loader"> </input>
				</div>	
				<div align="left">
						<span  style="width:150px;display:inline-block;font-size: 20px;font-weight: bold;">Stop Time :</span>
				
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="VACUUM"> </input>
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="ANODEGEL"> </input>
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="UNCASER"> </input>
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="CCAINSERT"> </input>
					<input type="text" style="width:120px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="CURLINGDRAW"> </input>

					<input type="text" style="width:130px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="WEIGHTCHCK"> </input>
					<input type="text" style="width:130px;height: 40px;background-color: rgb(0,255,0);font-size: 20px;text-align: center;" name="tanggal" id="CASINGLOADER"> </input>
					
				</div>	
			</fieldset>

			


			
		</div>
		<div id="chartContainer" style="height: 300px; width: 100%;"></div>
		<span align="center" id="demo" width="100" height="100"></span>
</body>
</html>

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

var totalstop = 0;
var a = 1;
var b = 1;
var c = 1;
var d = 1;
var e = 1;
var f = 1;
var g = 1;
var h = 1;
var i = 1;
var j = 1;
var k = 1;
var l = 1;
var m = 1;
var mld = 0;
var loop = 1;
var ref=1;
var myVar = setInterval(function(){myTimer()},1000);
var vRasio=0;

function myTimer(){
	    var d = new Date();
	    var n = parseInt(d.getDate());
	    
	    // document.getElementById("waktu").value = d.toLocaleTimeString().replace('.',':').replace('.',':');
	    // document.getElementById("tanggal1").value = d.toLocaleDateString();
	    //alert(d.toLocaleTimeString().replace('.',':').replace('.',':'));
 		var pesan = '';	
        
 		
 		
        var data;
        var sts = 'RUNNING'
		$.ajax({
			type: 'GET',
			dataType: "json",
			url: 'json_view_monitor31.php',
			data: data,
			success: function (data) {
				// begin accessing JSON data here
				// alert(data[0].STOPS);
				  document.getElementById("fldstop").style.backgroundColor = "white"
				  document.getElementById("fldrasio").style.backgroundColor = "white"
				  document.getElementById("fldrasio").style.color = "black"
				  document.getElementById("fld").style.backgroundColor = "green"
				  // document.getElementById("rasio").style.backgroundColor = "green"
				  // document.getElementById("stop").style.backgroundColor = "green"
				  document.getElementById("INFORMASI").style.color = "white"
				  // document.getElementById("stop").style.color = "black"
				  document.getElementById("fldstop").style.color = "black"
				  
				 i++;
				 a++;
				 b++;
				 c++;
				 d++;
				 e++;
				 f++;
				 g++;
				 h++;
				 j++;
				 k++;
				 l++;
				 m++;
				 ref++;
				 loop++;
				 totalstop = 0;

				 document.getElementById("waktu").innerHTML = data[0].WKT;
	    		 document.getElementById("tanggal1").innerHTML = data[0].TGL;

	    		 vrasio = data[0].RASIO;

	    		  if (vrasio  < 60){
	    		  	document.getElementById("fldrasio").style.backgroundColor = "RED"
	    		  	document.getElementById("fldrasio").style.color = "white"
	    		  } else if(vrasio >= 60 & vrasio <75){
	    		  	document.getElementById("fldrasio").style.backgroundColor = "yellow"
	    		
	    		  	 document.getElementById("fldrasio").style.color = "black"
	    		  } else if(vrasio >75){
	    		  	document.getElementById("fldrasio").style.backgroundColor = "green"
	    		
	    		  	 document.getElementById("fldrasio").style.color = "white"
	    		  };

				  if (data[0].STS_START == 0 & data[0].STS_STOP ==0) {
				  	sts='PERMISIBLE STOP';
				  	document.getElementById("fld").style.backgroundColor = "yellow"
				  	document.getElementById("INFORMASI").style.color = "black"

				  	m=0
				  } else if (data[0].STS_START == 1 & data[0].STS_STOP ==1) {
				  
				  	cek = fancyTimeFormat(data[0].STOPSx)
				  	sts='STOP (NO OUTPUT)' + ' ' + cek;
				  	document.getElementById("fld").style.backgroundColor = "red"
				  	document.getElementById("INFORMASI").style.color = "black"
				  	document.getElementById("fldstop").style.backgroundColor = "red"
				  	document.getElementById("fldstop").style.color = "white"
				  	totalstop ++;;
				  	
				  }else {
				  	m=0

				  }

				  if (data[0].adhesivestat == false){
				  	document.getElementById("ADHESIVE").style.backgroundColor = "green"
				  	document.getElementById("ADHESIVE").style.color = "black"
				  	document.getElementById("ADHESIVE").value	= fancyTimeFormat(data[0].ADHESIVE)
				  	a=0
				  	}else {
				  		 document.getElementById("ADHESIVE").style.backgroundColor = "red"
				  		 document.getElementById("ADHESIVE").style.color = "white"
				  		 document.getElementById("ADHESIVE").value = fancyTimeFormat(data[0].ADHESIVE)
				  		 totalstop ++;;
				  	};

				  if (data[0].moulding1stat == false){
				  	document.getElementById("MOULD1").style.backgroundColor = "green"
				  	document.getElementById("MOULD1").style.color = "black"
				  	document.getElementById("MOULD1").value = fancyTimeFormat(data[0].MOULD1)
				  	mld = data[0].MOULD1
				  	b=0
				  	}else {
				  		 document.getElementById("MOULD1").style.backgroundColor = "red"
				  		 document.getElementById("MOULD1").style.color = "white"
				  		 document.getElementById("MOULD1").value = fancyTimeFormat(data[0].MOULD1)
				  		 totalstop ++;;
				  	};

				   if (data[0].moulding2stat == false){
				  	document.getElementById("MOULD2").style.backgroundColor = "green"
				  	document.getElementById("MOULD2").style.color = "black"
				  	document.getElementById("MOULD2").value = fancyTimeFormat(data[0].MOULD2)
				  	mld = data[0].MOULD2
				  	b=0
				  	}else {
				  		 document.getElementById("MOULD2").style.backgroundColor = "red"
				  		 document.getElementById("MOULD2").style.color = "white"
				  		 document.getElementById("MOULD2").value = fancyTimeFormat(data[0].MOULD2)
				  		 totalstop ++;;
				  	};


				  	if (data[0].MixInsertstat == false	){
				  	document.getElementById("MIXINSERT").style.backgroundColor = "green"
				  	document.getElementById("MIXINSERT").style.color = "black"
				  	document.getElementById("MIXINSERT").value = fancyTimeFormat(data[0].MIXINSERT);
				  	c=0
				  	}else {
				  		 document.getElementById("MIXINSERT").style.backgroundColor = "red"
				  		 document.getElementById("MIXINSERT").style.color = "white"
				  		  document.getElementById("MIXINSERT").value = fancyTimeFormat(data[0].MIXINSERT) 
				  		  totalstop ++;;
				  	};

				  	if (data[0].beadingstat == false){
				  	document.getElementById("BEADING").style.backgroundColor = "green"
				  	document.getElementById("BEADING").style.color = "black"
				  	document.getElementById("BEADING").value = fancyTimeFormat(data[0].BEADING)
				  	d=0
				  	}else {
				  		 document.getElementById("BEADING").style.backgroundColor = "red"
				  		 document.getElementById("BEADING").style.color = "white"
				  		 document.getElementById("BEADING").value = fancyTimeFormat(data[0].BEADING)
				  		 totalstop ++;;
				  	};



				  	if (data[0].separatorstat == false){
				  	document.getElementById("SEPARATORINSERT").style.backgroundColor = "green"
				  	document.getElementById("SEPARATORINSERT").style.color = "black"
				  	document.getElementById("SEPARATORINSERT").value = fancyTimeFormat(data[0].SEPARATORINSERT)
				  	e=0
				  	}else {
				  		 document.getElementById("SEPARATORINSERT").style.backgroundColor = "red"
				  		 document.getElementById("SEPARATORINSERT").style.color = "white"
				  		  document.getElementById("SEPARATORINSERT").value = fancyTimeFormat(data[0].SEPARATORINSERT);
				  		  totalstop ++;;
				  	};

				  	if (data[0].esfillingstat == false){
				  	document.getElementById("ELECFILLING").style.backgroundColor = "green"
				  	document.getElementById("ELECFILLING").style.color = "black"
				  	document.getElementById("ELECFILLING").value = fancyTimeFormat(data[0].ELECFILLING)
				  	f=0
				  	}else {
				  		 document.getElementById("ELECFILLING").style.backgroundColor = "red"
				  		 document.getElementById("ELECFILLING").style.color = "white"
				  		 document.getElementById("ELECFILLING").value = fancyTimeFormat(data[0].ELECFILLING)
				  		 totalstop ++;;
				  	};

				  	if (data[0].anodegelstat == false){
				  	document.getElementById("ANODEGEL").style.backgroundColor = "green"
				  	document.getElementById("ANODEGEL").style.color = "black"
				  	document.getElementById("ANODEGEL").value = fancyTimeFormat(data[0].ANODEGEL)
				  	g=0

				  	}else {
				  		 document.getElementById("ANODEGEL").style.backgroundColor = "red"
				  		 document.getElementById("ANODEGEL").style.color = "white"
				  		 document.getElementById("ANODEGEL").value = fancyTimeFormat(data[0].ANODEGEL)
				  		 // alert(data[0].ANODEGEL)
				  		 totalstop ++;
				  	};

				  	if (data[0].jigstockstat == false){
				  	document.getElementById("JIGSTOCK").style.backgroundColor = "green"
				  	document.getElementById("JIGSTOCK").style.color = "black"
				  	document.getElementById("JIGSTOCK").value = fancyTimeFormat(data[0].JIGSTOCK);
				  	h=0
				  	}else {
				  		 document.getElementById("JIGSTOCK").style.backgroundColor = "red"
				  		 document.getElementById("JIGSTOCK").style.color = "white"
				  		 document.getElementById("JIGSTOCK").value = fancyTimeFormat(data[0].JIGSTOCK)
				  		 totalstop ++;;
				  	};

				  	if (data[0].CURLINGSTAT == false){
				  	document.getElementById("CURLINGDRAW").style.backgroundColor = "green"
				  	document.getElementById("CURLINGDRAW").style.color = "black"
				  	document.getElementById("CURLINGDRAW").value = fancyTimeFormat(data[0].CURLING);
				  	i=0
				  	}else {
				  		 document.getElementById("CURLINGDRAW").style.backgroundColor = "red"
				  		 document.getElementById("CURLINGDRAW").style.color = "white"
				  		 document.getElementById("CURLINGDRAW").value = fancyTimeFormat(data[0].CURLING)
				  		 totalstop ++;;
				  	};

				  	if (data[0].casingloaderstat == false){
				  	document.getElementById("CASINGLOADER").style.backgroundColor = "green"
				  	document.getElementById("CASINGLOADER").style.color = "black"
				  	document.getElementById("CASINGLOADER").value = fancyTimeFormat(data[0].CASINGLOAD)
				  	j=0
				  	}else {
				  		 document.getElementById("CASINGLOADER").style.backgroundColor = "red"
				  		 document.getElementById("CASINGLOADER").style.color = "white"
				  		 document.getElementById("CASINGLOADER").value = fancyTimeFormat(data[0].CASINGLOAD)
				  		 totalstop ++;;
				  	};

			
				  	if (data[0].weightcheckstat == false){
				  	document.getElementById("WEIGHTCHCK").style.backgroundColor = "green"
				  	document.getElementById("WEIGHTCHCK").style.color = "black"
				  	document.getElementById("WEIGHTCHCK").value = fancyTimeFormat(data[0].WEIGHTCHCK)
				  	l=0
				  	}else {
				  		 document.getElementById("WEIGHTCHCK").style.backgroundColor = "red"
				  		 document.getElementById("WEIGHTCHCK").style.color = "white"
				  		 document.getElementById("WEIGHTCHCK").value = fancyTimeFormat(data[0].WEIGHTCHCK)
				  		 totalstop ++;;
				  	};	

				  		if (data[0].CCAINSERTSTAT == false){
				  	document.getElementById("CCAINSERT").style.backgroundColor = "green"
				  	document.getElementById("CCAINSERT").style.color = "black"
				  	document.getElementById("CCAINSERT").value = fancyTimeFormat(data[0].CCAINSERT)
				  	l=0
				  	}else {
				  		 document.getElementById("CCAINSERT").style.backgroundColor = "red"
				  		 document.getElementById("CCAINSERT").style.color = "white"
				  		 document.getElementById("CCAINSERT").value = fancyTimeFormat(data[0].CCAINSERT)
				  		 totalstop ++;;
				  	};	

				  		if (data[0].VACUUMSTAT == false){
				  	document.getElementById("VACUUM").style.backgroundColor = "green"
				  	document.getElementById("VACUUM").style.color = "black"
				  	document.getElementById("VACUUM").value = fancyTimeFormat(data[0].VACUUM)
				  	l=0
				  	}else {
				  		 document.getElementById("VACUUM").style.backgroundColor = "red"
				  		 document.getElementById("VACUUM").style.color = "white"
				  		 document.getElementById("VACUUM").value = fancyTimeFormat(data[0].VACUUM)
				  		 totalstop ++;;
				  	};	

				  		if (data[0].UNCASERSTAT == false){
				  	document.getElementById("UNCASER").style.backgroundColor = "green"
				  	document.getElementById("UNCASER").style.color = "black"
				  	document.getElementById("UNCASER").value = fancyTimeFormat(data[0].UNCASER)
				  	l=0
				  	}else {
				  		 document.getElementById("UNCASER").style.backgroundColor = "red"
				  		 document.getElementById("UNCASER").style.color = "white"
				  		 document.getElementById("UNCASER").value = fancyTimeFormat(data[0].UNCASER)
				  		 totalstop ++;;
				  	};	

				  document.getElementById("jalan").innerHTML = fancyTimeFormat(data[0].JALAN);
                  document.getElementById("stop").innerHTML  = fancyTimeFormat(data[0].STOPS);
                  document.getElementById("rasio").innerHTML = data[0].RASIO + '%';
                  document.getElementById("INFORMASI").innerHTML = sts;

				if (ref > 300){
					if (totalstop == 0) {
						window.location.reload(true);
						ref = 0;	
					}
					
					
				};
				                 //alert(n);

				if (loop  > 4){
				loop = 0;
				 

				var chart = new CanvasJS.Chart("chartContainer", {
				title: {
					text: "Stop Process In LR03#1"
				},
				axisY: {
					title: "Process in Second",
					
				},
				data: [{
					type: "column",	
					yValueFormatString: "## Sec",
					indexLabel: "{y}",
					dataPoints: [
						{ label: "MOULD RING 1", y: parseInt(data[0].MOULD12) },
						{ label: "MOULD RING 2", y: parseInt(data[0].MOULD22) },
						{ label: "MIX INSERT", y: parseInt(data[0].MIXINSERT2) },
						{ label: "BEADING", y: parseInt(data[0].BEADING2) },
						{ label: "ADHESIVE", y: parseInt(data[0].ADHESIVE2) },
						{ label: "SEPARATOR INSERT", y: parseInt(data[0].SEPARATORINSERT2) },
						{ label: "ELEC FILLING", y: parseInt(data[0].ELECFILLING2) },
						{ label: "JIG STOCK", y: parseInt(data[0].JIGSTOCK2) },
						{ label: "VACUUM", y: parseInt(data[0].VACUUM2) },
						{ label: "ANODE GEL", y: parseInt(data[0].ANODEGEL2) },
						{ label: "UNCASER", y: parseInt(data[0].UNCASER2)},
						{ label: "CCA INSERT", y: parseInt(data[0].CCAINSERT2) },
						{ label: "CURLING DRAW", y: parseInt(data[0].CURLINGDRAW2) },
						{ label: "WEIGHT CHECKER", y: parseInt(data[0].WCHECKER2)},
						
						{ label: "CASING LOADER", y: parseInt(data[0].CASINGLOADER2) }

						
						
						
					]
				}]
				});
				                  		chart.render();
				 					
				                  	};
				
			}
		});

		


   // alert(document.getElementById("jalan").value);
      
}



function increment(){
    i = i % 360 + 1;
    
}

function fancyTimeFormat(time)
{   
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