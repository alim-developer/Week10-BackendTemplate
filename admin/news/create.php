
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
			
			
			<form action="createCode.php" method="POST" enctype="multipart/form-data">
				<label>Change Head Text</label>
				<textarea rows="8" type="text" name="headContent"></textarea>
				<label>Change Big Text</label>
				<textarea rows="14" type="text" name="content"></textarea>
				<input type="file" name="file">
				<input type="submit" name="submit" value="submit">
			</form>
		</div>
	</section>
</body>
</html>

