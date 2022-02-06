<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<body>
	<?php
	$login = $_REQUEST['nombre'];
	$pwd = $_REQUEST['pwd'];
	echo "Login: ".$login."<br>";
	echo "Pass: ".$pwd;
	?>
</body>
</html>