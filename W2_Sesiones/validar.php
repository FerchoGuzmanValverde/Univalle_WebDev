<?php
ob_start();
session_start();
include("head.php");

$login = $_POST['login'];
$password = md5($_POST['password']);

if($login == $loginvalido){
	if($password == $passwordvalido){
		//sesiones
		$_SESSION['usuario']=$login;
		$_SESSION['tipo']="admin";
		//redireccionar
		header("Location: panel.php");
		/*echo '<script type="text/javascript">window.location.assign("panel.php");
		</script>';*/

	}
	else{
		echo "Password Invalido";
	}
}
else{
	echo "Login Invalido";
}
?>