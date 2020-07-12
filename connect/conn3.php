<?php  
$connection_string31 = 'DSN=Rasp;DATABASE=assylr31'; 
$connection_string32 = 'DSN=Rasp;DATABASE=assylr32'; 
$connection_string61 = 'DSN=Rasp;DATABASE=assylr61'; 
$connection_string62 = 'DSN=Rasp;DATABASE=assylr62'; 
$connection_string63 = 'DSN=Rasp;DATABASE=assylr63'; 
$connection_string64 = 'DSN=Rasp;DATABASE=assylr64'; 
$connection_string66 = 'DSN=Rasp;DATABASE=assylr66'; 
$connection_timbang = 'DSN=Rasp;DATABASE=timbangan';

$user = 'user'; 
$pass = '4321rewq'; 

$con31 = odbc_connect( $connection_string31, $user, $pass ); 
$con32 = odbc_connect( $connection_string32, $user, $pass ); 
$con61 = odbc_connect( $connection_string61, $user, $pass ); 
$con62 = odbc_connect( $connection_string62, $user, $pass ); 
$con63 = odbc_connect( $connection_string63, $user, $pass ); 
$con64 = odbc_connect( $connection_string64, $user, $pass ); 
$con66 = odbc_connect( $connection_string66, $user, $pass );
$conn_timbangan = odbc_connect($connection_timbang, $user, $pass);
?>