
<!DOCTYPE html>
<html>
<head>
	<title>ADMIN || LOGIN</title>
    <link rel="shortcut icon" href="assets/images/users/hdlogo.png" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<style>
		#login-form{
			/* height: 60vh; */
			color: black;

		}
		label {
			color: black;
			/* font-family: serif; */
			white-space: 2px;
			
		}
		button{
			background-color: black;
		}
	</style>
</head>
<body style="background-color: black;">
     <form action="login.php" method="post" id="login-form">
     	<h2>LOGIN</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>
		
		<label>Admin ID.</label>

     	<input type="text" name="uname" placeholder="User Name"><br>

		<label>Password</label>
		
     	<input type="password" name="password" placeholder="Password"><br>

     	<button type="submit">Login</button>
     </form>
</body>
</html>