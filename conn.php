<?php
	// $connection_timbang = 'DSN=KANBANSYS;DATABASE=KANBANSYS'; 
	// $user = 'sa'; 
	// $pass = 'accpac'; 

	// $connect = odbc_connect( $connection_timbang, $user, $pass );

	// if(!$connect){
	// 	$varConn = "N";
	// }else{
	// 	$varConn = "Y";
	// }
$serverName = "localhost";
$connectionOptions = array(
    "database" => "PORDER",
    "uid" => "sa",
    "pwd" => "P@ssw0rd"
);


// Establishes the connection
$conn = sqlsrv_connect($serverName, $connectionOptions);
if ($conn === false) {
    die(formatErrors(sqlsrv_errors()));
}



// Select Query
$tsql = "SELECT @@Version AS SQL_VERSION";

// Executes the query
$stmt = sqlsrv_query($conn, $tsql);

// Error handling
if ($stmt === false) {
    die(formatErrors(sqlsrv_errors()));
}
?>
