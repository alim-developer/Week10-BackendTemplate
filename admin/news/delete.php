
<?php
	$id =$_GET['id'];
	include "../../config.php";
	$con = new database;
	$abc = $con -> select('news','*',"$id");
	$row = mysqli_fetch_assoc($abc);
	if($abc){
		unlink("../../images/imageBase/".$row['image']);
	}
	$con -> delete('news',"$id");
	header('Location: news.php');

	
?>