<?php
	$serverName = "localhost"; 
	$connectionInfo = array( "Database"=>"FDKSYS20","uid"=>"sa","pwd"=>"accpac");
	$connect = sqlsrv_connect( $serverName, $connectionInfo);
	
	if($connect) {
		$varConn = "N";
	}else{
		$varConn = "Y";
	}

	// $cek = "select person_code, password, person from person where person_code='FI0122' and password='wnx'";
	// $result = sqlsrv_query($connect, $cek);
	// $row = sqlsrv_fetch_object($result);

	// echo $row->person_code.", ".$row->person."<br />";
?>