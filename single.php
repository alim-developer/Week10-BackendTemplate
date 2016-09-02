<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>The Free Blogsite.com Website Template | About :: w3layouts</title>
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
			<div class="box1">
			<?php
				$id = $_GET['id'];
				$con = new database;
				$b = $con -> select('news','*', "$id" );
				$row = mysqli_fetch_assoc($b); 
				$title = substr($row['content'], 0, 81);  ?>

			   <h2><a href="single.php?id=<?=$row['id'];?>"><?=$title;?></a></h2>
			   <span><?=$row['data'];?></span>
			   <p><?=$row['headContent'];?></p>
				<div class="top_img">
				   <img src="images/imageBase/<?=$row['image'];?>" alt="" />
				</div>   
				<div class="data_desc">
					<p><?=$row['content'];?></p>
				    <a href="single.php?id=<?=$row['id'];?>">Continue reading >>></a>
				</div>
			</div> 
		</div> 
		<?php
			$i=1;
			$view = $row['viewed'];
			$view += $i; 
			$cos= new database;
			$b= $cos->update('news',"viewed='$view'","$id");
		?>
	<div class="sidebar">
		<?php
			include 'recend.php';
		?>
	<div class="side_bottom">
		   <?php
	    		include 'mostViewed.php';
	 	  	?>
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


