<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
</head>
<body>
<section id="login">
	<h2>Login</h2>
	<form action="check.php" method="POST">
		<input type="text" name="username">
		<input type="password" name="password">
		<input type="submit" name="submit" value="submit">
		<div class="clearfix"></div>
	</form>
	<?php 
	session_start();
	if(isset($_SESSION['error'])){?>
		<p style="color: red;"><?=$_SESSION['error'];?></p>

	<?php }  unset($_SESSION['error']);?>
</section>

</body>
</html>