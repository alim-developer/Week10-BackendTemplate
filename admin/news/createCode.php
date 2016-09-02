<?php

	include "../../config.php";
if(isset($_POST['submit'])){

	$headContent = addslashes($_POST['headContent']);
	$content = addslashes($_POST['content']);
	$picture = $_FILES['file'];

	// if(empty($head) || empty($headText) || empty($text) || empty($picture['size']) == 0){
	// 	session_start();
	// 	$_SESSION['errorr'] = "Empty box!";
	// 	header("Location: create.php");
	// }

	$pict = rand().basename($picture['name']);
	$direction = "../../images/imageBase/".$pict;
	move_uploaded_file($picture['tmp_name'], $direction);
	$con = new database;
	$test=$con->insert('news',"headContent,content,image","'$headContent','$content','$pict'");
	
	header("Location: news.php");
	
}


?>