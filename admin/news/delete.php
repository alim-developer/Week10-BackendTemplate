
<?php
	$id =$_GET['id'];
	include "../../config.php";
	$con = new database;
	$con -> delete('news',"$id");
	header('Location: news.php');
?>