
<!DOCTYPE html>
<html>
<head>
	<title>Change Menu</title>
	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../../css/style.css">
</head>
<body>
	<section id='menu'>
		<a class="btn btn-default" href="create.php">Create</a>
		<table class="table">
			<tr>
				<th>#</th>
				<th>Menu name</th>
				<th>Button</th>
			</tr>

			<?php
				include"../../config.php";
				$con = new database;
				$b = $con -> select('navbar', 'id,name');
				while($row = mysqli_fetch_assoc($b)){
			?>
				<tr>
				<?php foreach ($row as $value) {
					echo "<td>$value</td>";
				}
				?>
				<td>
					<a class="btn btn-default" href="update.php?id=<?=$row['id'];?>">Update</a>
					<a class="btn btn-default" href="delete.php?id=<?=$row['id'];?>">Delete</a>
				</td>
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