
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="../../css/style.css">
	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
</head>
<body>
	<section id="login">
		<h3>Update Menu name</h3>
		<form action="" method="POST">
			<input type="text" name="text">
			<input type="submit" name="submit" value="submit">
		</form>
	</section>
	<?php
		if(isset($_POST['submit'])){
			$id =$_GET['id'];
			$text = $_POST['text'];
			include "../../config.php";
			$con = new database;
			$con -> update('navbar',"name='$text'","$id");
			header('Location: menuChange.php');
		}

	?>
</body>
</html>