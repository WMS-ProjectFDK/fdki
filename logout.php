<?php
	session_start();
	unset($_SESSION['id_wms']);
	header("Location:index.php");
?>