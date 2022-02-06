<!DOCTYPE html>
<html>
<head>
	<title>CRUD php</title>
</head>
<body>

	<?php
		include ("config.php");
		$id =$_POST['idProducto'];

		$sql="UPDATE productos set habilitado='0' where idProducto=$id";
		if($mysqli->query($sql))
		{
			header("Location: productosHabilitados.php");
		}
		else
		{
			echo "Error en la modificación";
			?>
				<br>
				<br>
				<a href="productosHabilitados.php">Volver a lista</a>
			<?php
		}
	 ?>

</body>
</html>