<!DOCTYPE html>
<html>
<head>
	<title>Dosen</title>
</head>
<body>
<h1>Hai Dosen</h1>

<form action="<?php echo site_url('RPLController/SendRequest');?>" method="POST">
	<textarea rows="4" cols="50" name="TextRequest">
		
	</textarea>
	<input type="hidden" name="name" value="<?php echo $Nama;?>"> 
	<input type="submit" name="submit" value="login">
</form>
</body>
</html>