<h2>Most Viewed</h2>
<div class="list2">
	<ul><?php
			$con= new database;
			$b = $con->select('news','*',NULL,NULL,NULL,'viewed','DESC',5);
			while($row = mysqli_fetch_assoc($b)){ $content = substr($row['content'], 0, 36) ?>
				<li><a href="single.php?id=<?=$row['id'];?>"><?=$content;?></a></li>
		<?php
			}
		?>
	</ul>
</div>