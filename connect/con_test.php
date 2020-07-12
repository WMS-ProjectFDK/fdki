<?php  
  $db = "(DESCRIPTION =(ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 172.23.111.159)(PORT = 1521)))(CONNECT_DATA = (SERVER = DEDICATED)(SERVICE_NAME = usdbsrv2XDB.oracle.fdk.co.jp)))";
  $connect = oci_connect("porder", "porder", $db);
?>