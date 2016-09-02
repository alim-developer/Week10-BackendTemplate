<div class="side_top">
	<h2>Recent Feeds</h2>
	<div class="list1">
		<ul>
			<?php
				$con = new database;
				$bb = $con->select('news','*',NULL,NULL,NULL,'id','DESC',5);
				while($row = mysqli_fetch_assoc($bb)){ $content = substr($row['content'], 0, 36) ?>
					<li><a href="single.php?id=<?=$row['id'];?>"><?=$content;?></a></li>
			<?php
				}
			?>
		</ul>
	</div>
</div>