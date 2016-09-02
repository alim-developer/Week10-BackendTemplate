<div class="main">
	<div class="content">
		<div class="box1">
		<?php
			$con = new database;
			$b = $con -> select('news');
			while($row = mysqli_fetch_assoc($b)){ ?>

			<h2><a href="single.php?id=<?=$row['id'];?>"><?=$row['title'];?></a></h2>
			<span><?=$row['data'];?></span>
			<div class="box1_img">
				<img style="width: 220px; height: 130px;" src="images/imageBase/<?=$row['image'];?>" alt="" />
			</div>
			<div class="data">
				<p><?=$row['headContent'];?></p>
				<a href="single.php?id=<?=$row['id'];?>">Continue reading >>></a>
			</div>
			<div class="clear"></div>


		<?php	
			}
		?>
			
		</div>
		
		<div class="page_links">
			<div class="next_button">
				<a href="#">Next</a>
			</div>
			<div class="page_numbers">
				<ul>
					<li><a href="#">1</a>
					<li><a href="#">2</a>
					<li><a href="#">3</a>
					<li><a href="#">4</a>
					<li><a href="#">5</a>
					<li><a href="#">6</a>
					<li><a href="#">... Next</a>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="page_bottom">
				<p>Back To : <a href="#">Top</a> |  <a href="#">Home</a></p>
			</div>
		</div>
	</div>