
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="../../css/style.css">
	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
</head>
<body>


	<section id="changeNews">
		<div class="container">
			<h3>Update News</h3>
			<form action="" method="POST" enctype="multipart/form-data">
			<?php
				$id =$_GET['id'];
				include '../../config.php';
				$conc= new database;
				$a = $conc -> select("news","*","$id");
				$row = mysqli_fetch_assoc($a) ?>
			
				<label>Change Head Text</label>
				<textarea rows="8" type="text" name="headContent"><?=$row['headContent'];?></textarea>
				<label>Change Big Text</label>
				<textarea rows="14" type="text" name="content"><?=$row['content'];?></textarea>
				<img src="../../images/imageBase/<?=$row['image'];?>">
				<input type="file" name="file">
				<input type="submit" name="submit" value="submit">
			</form>
		</div>
	</section>
	<?php
		if(isset($_POST['submit'])){
			
			$headContent = addslashes($_POST['headContent']);
			$content = addslashes($_POST['content']);
			$picture = $_FILES['file'];

			if(!$picture['size'] == 0){
				$pict = rand().basename($picture['name']);
				$direction = "../../images/imageBase/".$pict;
				move_uploaded_file($picture['tmp_name'], $direction);
				unlink("../../images/imageBase/".$row['image']);
			}else{
				$coon = new database;
				$v = $coon -> select('news','*',"$id");
				$row = mysqli_fetch_assoc($v);
				$pict = $row['image'];
			}

			// include "../../config.php";
			$con = new database;
			$con -> update('news',"headContent='$headContent',content='$content',image='$pict'","$id");
			header('Location: news.php');
		}

	?>
</body>
</html>