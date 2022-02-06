<?php
	$user = "Juan"; $pwd = md5('bolivia123');
	$nombre = $_POST['nombre'];
	$password = md5($_POST['password']);
	if ($nombre == $user) 
	{
		if ($password === $pwd)
		{
			echo "Acceso Correcto";		
		}
		else
		{
			echo "Password Invalido";
		}
	}
	else
	{
		echo "Usuario no registrado";
	}
?>