<div class="header">
	<div class="header_top">
		<div class="wrap">
			<div class="logo">
			     <a href="index.php"><img src="images/logo.png" alt="" /></a>
			</div>
			<div class="login_button">
			    <ul>
			    <li><a href="#">Sign in</a><li> | 
			    <li><a href="admin/login.php">Login</a></li>
			    </ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="header_bottom">
		<div class="wrap">
			<div class="menu">
			    <ul>
			    	<?php
			    		include 'config.php';
			    		$conn = new database;
			    		$answer = $conn -> select('navbar', 'name');
			    		while($row = mysqli_fetch_assoc($answer)){ ?>
			    		<li><a href="index.php"><?=$row['name'];?></a></li>
			    	<?php } ?>
			    	<li><a href="contact.php">CONTACT</a></li>
			    </ul>
			</div>
			<div class="search_box">
			    <form action="search.php" method="POST">
			    <input type="text" name="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" name="submit" value="">
			    </form>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>