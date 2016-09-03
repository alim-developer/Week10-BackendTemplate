
<?php
	if(isset($_POST['submit'])){
		$username = $_POST['username'];
		$password = $_POST['password'];
		include '../config.php';
		$con = new database;
		$a = $con -> select('user','username,password');
		$row = mysqli_fetch_assoc($a);
		$login = $row['username'];
		$pass = $row['password'];

		session_start();
		if(!empty($username) && !empty($password)){
			if($username == $login && $password == $pass){
				header('Location: admin.php');
				$_SESSION['admin'] = true;
			}else{
				$_SESSION['error'] = 'Wrong username or password';
				header('Location: login.php');
			}
		}else{
			$_SESSION['error'] = 'Empty box';
			header('Location: login.php');
		}
	}

	if(isset($_SESSION['bug'])!=true){
		header('Location: login.php');
		unset($_SESSION['bug']);
	}else{
		header('Location: admin.php');
	}

?>