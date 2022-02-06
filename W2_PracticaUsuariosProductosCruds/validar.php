<?php
ob_start();
session_start();
include("config.php");
$user=$_POST['login'];
$pwd=md5($_POST['password']);

$consulta="SELECT * FROM usuarios WHERE user='$user' AND contrasenia='$pwd' AND habilitado=1";
$execonsulta=$mysqli->query($consulta);
$cant = mysqli_num_rows($execonsulta);
if($cant > 0)
{
	$consulta="SELECT * FROM usuarios WHERE user='$user' AND contrasenia='$pwd' AND habilitado=1 AND rol = 'Administrador'";
	$execonsulta=$mysqli->query($consulta);
	$cant = mysqli_num_rows($execonsulta);
	if($cant > 0)
	{
    	$_SESSION['usuario']=$_POST['login'];
    	$_SESSION['tipo']="Admin";
    	header("Location: bienvenidoAdmin.php");  
	}
	else
	{
		$_SESSION['usuario']=$_POST['login'];
    	$_SESSION['tipo']="Operador";
    	header("Location: bienvenidoOperador.php");  
	}
}
else
{
    header("Location: login.html");
}
?>