<!DOCTYPE html>
<html>
<head>
	<title>CRUD php</title>
</head>
<body>

	<?php
		include ("config.php");
		$id =$_POST['idProducto'];

		$sql="UPDATE productos set habilitado='1' where idProducto=$id";
		if($mysqli->query($sql))
		{
			echo "Registro modificado";
			header("Location: productosInhabilitados.php");
		}
		else
		{
			echo "Error en la modificación";
			?>
				<br>
				<br>
				<a href="productosInhabilitados.php">Volver a lista</a>
			<?php
		}
	 ?>

</body>
</html>