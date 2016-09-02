<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>The Free Blogsite.com Website Template | Home :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
</head>
<body>
	<?php
		include 'header.php';
	?>
<div class="wrap">
	<div class="main">
		<div class="content">
			<?php
				if(isset($_POST['submit'])) {
					$search = $_POST['search'];
					$co = new database;
					$abb = $co->select('news',"*",NULL,'content',$search);
					
					while($row=mysqli_fetch_assoc($abb)){ $title = substr($row['content'], 0, 81) ?>
						<div class="box1">
							<h2><a href="single.php?id=<?=$row['id'];?>"><?=$title;?></a></h2>
							<span><?=$row['data'];?></span>
							<div class="box1_img">
								<img style="width: 270px; height: 165px;" src="images/imageBase/<?=$row['image'];?>" alt="" />
							</div>
							<div class="data">
								<p><?=substr($row['headContent'],0,450);?></p>
								<a href="single.php?id=<?=$row['id'];?>">Continue reading >>></a>
							</div>
							<div class="clear"></div>
						</div>
				<?php
					}
				}
			?>
		</div>
	</div>
	<div class="sidebar">
		<?php
			include 'recend.php';
		?>
	<div class="side_bottom">
	    <h2>Most Viewed</h2>
		<div class="list2">
		    <?php
	    		include 'mostViewed.php';
	   		 ?>
		</div>
	</div>
	</div>
	<div class="clear"></div>
	</div>
</div>
<?php
	include 'footer.php';
?>
</body>
</html>

