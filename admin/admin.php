<?php
	// session_start();
	// if($_SESSION['admin'] !== true){
	// 	header("Location: login.php");
	// }

?>

<!DOCTYPE html>
<html>
<head>
	<title>Admin Page</title>
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<section id='menu'>
		<table class="table">
			<tr>
				<th>Menu name</th>
				<th>Button</th>
			</tr>
			<tr>
				<td>Change Menu</td>
				<td><a class="btn btn-default" href="menu/menuChange.php">Next</a></td>
			</tr>
			<tr>
				<td>Change News</td>
				<td><a class="btn btn-default" href="news/news.php">Next</a></td>
			</tr>
		</table>
		<a class="btn btn-default" href="logout.php">logout</a>
	</section>



	

	

</body>
</html>