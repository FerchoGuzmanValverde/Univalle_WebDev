<?php
session_start();
if(isset($_SESSION['usuario']) && isset($_SESSION['tipo'])){
	//aqui mostrar pagina protegida por sesiones
	?>
	<!DOCTYPE html>
	<html>
	<head>
		<?php include("head.php"); ?>
	</head>
	<body>

		<h1>Bienvenido <?php echo $_SESSION['usuario']; ?></h1>
		<br>
		<a href="cerrarsession.php">Salir</a>
	
	</body>
	</html>
	<?php
}
else{
	header("Location: formulario.php");
	/*echo '<script type="text/javascript">window.location.assign("panel.php");</script>';*/
}

?>