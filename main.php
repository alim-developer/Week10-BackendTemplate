<div class="main">
	<div class="content">
		<?php
			$con = new database;
			$page = 5;
			$c = $con -> select('news','COUNT(*) AS id');
			$row1 = mysqli_fetch_assoc($c);
			$total = $row1['id'];
			$totalPage = ceil($total / $page);

			$id = isset($_GET['id']) ? (int) $_GET['id'] : 1;
			if($id < 1) $id = 1; 
			if($id > $totalPage) $id = $totalPage; 
 
			$limit = ($id - 1) * $page;

			$b = $con -> select('news','*',NULL,NULL,NULL,"id","DESC","$limit, $page");
			while($row = mysqli_fetch_assoc($b)){  $title = substr($row['content'], 0, 81) ?>
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
		?>
		<div class="page_links">
			<div class="next_button">
				<a href="#">Next</a>
			</div>
			<div class="page_numbers">
				<ul>
					<?php
						for($i = 1; $i <= $totalPage; $i++) {
	  						if($id == $i) { 
	   							echo $i . ' '; 
	  		 				}else {
								echo '<li><a href="index.php?id=' . $i . '">' . $i . '</a></li> ';
							}
						}
					?>

					<li><a href="#">... Next</a>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="page_bottom">
				<p>Back To : <a href="#">Top</a> |  <a href="#">Home</a></p>
			</div>
		</div>
	</div>