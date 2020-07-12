<?php
	$db = "(DESCRIPTION =(ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 172.23.206.21)(PORT = 1521)))(CONNECT_DATA = (SERVER = DEDICATED)(SERVICE_NAME = sysfi01.world)))";
	$connect = oci_connect("memsys", "memsys", $db);

	if(!$connect){
		$varConn = "N";
	}else{
		$varConn = "Y";
	}
?>