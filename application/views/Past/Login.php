<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>
	<form action="<?php echo site_url('RPLController/login');?>" method="POST">
		<input type="text" name="name" placeholder="name"><br>
		<input type="password" name="password" placeholder="password"><br>
		<input type="submit" name="submit" value="login">
	</form>
</body>
</html>