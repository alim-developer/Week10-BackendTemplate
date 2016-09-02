
<!DOCTYPE html>
<html>
<head>
	<title>Change Menu</title>
	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../../css/style.css">
</head>
<body>
	<section id='menu'>
		<table class="table">
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>Email</th>
				<th>Feedback</th>
			</tr>

			<?php
				include"../../config.php";
				$con = new database;
				$b = $con -> select('feedback','*',NULL,NULL,NULL,'id','DESC');
				while($row = mysqli_fetch_assoc($b)){
			?>
				<tr>
				<?php foreach ($row as $value) {
					echo "<td>$value</td>";
				}
				?>
				</tr>
			<?php
				}
			?>
		</table>
		<a class="btn btn-default" href="../admin.php">Back</a>
		<a class="btn btn-default pull-right" href="../logout.php">Logout</a>
	</section>



	

	

</body>
</html>