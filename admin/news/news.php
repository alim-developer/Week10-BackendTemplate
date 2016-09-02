
<!DOCTYPE html>
<html>
<head>
	<title>Change News</title>
	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../../css/style.css">
</head>
<body>
	<section class='container news'>
		<a class="btn btn-default" href="create.php">Create</a>
		<table class="table">
			<tr>
				<th>Head Text</th>
				<th>Text</th>
				<th>Image</th>
				<th>Data</th>
				<th>Button</th>
			</tr>

			<?php
				include"../../config.php";
				$con = new database;
				$b = $con -> select('news');
				while($row = mysqli_fetch_assoc($b)){
			?>
				<tr>
				<td><?=$row['headContent'];?></td>
				<td><?=$row['content'];?></td>
				<td><img src="../../images/imageBase/<?=$row['image'];?>"></td>
				<td><?=$row['data'];?></td>
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