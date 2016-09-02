
<?php
	$id =$_GET['id'];
	include "../../config.php";
	$con = new database;
	$con -> delete('navbar',"$id");
	header('Location: menuChange.php');
?>