<!DOCTYPE html>
<html>
<head>
	<title>CRUD php</title>
</head>
<body>

	<?php
		include ("config.php");
		$nombres= $_POST['producto'];
		$cantidad= $_POST['cantidad'];
		$sql="SELECT * from productos where producto='$nombres'";
		$execonsulta=$mysqli->query($sql);
		$columnas=mysqli_num_rows($execonsulta);
		if($columnas>=1)
		{

			header("Location: agregarProducto1.php?error=1&nombres=$nombres&cantidad=$cantidad");
		}
		else
		{
			if($cantidad<=0)
			{
				header("Location: agregarProducto1.php?error=2&nombres=$nombres&cantidad=$cantidad");
			}
			else
			{
				$mysqli->autocommit(FALSE);
				$tipo=$_FILES['imagen']['type'];

				$sql="INSERT into productos set producto='$nombres',cantidad='$cantidad',habilitado='1'";
				$sqllastid="SELECT max(idProducto) AS idProducto FROM productos";

				if($mysqli->query($sql)&&$execonsulta=$mysqli->query($sqllastid))
				{
					while($row=mysqli_fetch_array($execonsulta))
					{
						$idproducto=$row['idProducto'];
						if($_FILES['imagen']['type'] == 'image/png')
						{
							copy($_FILES['imagen']['tmp_name'],'img/'.$idproducto.'.png');
							$ruta=$idproducto.'.png';
							$sql="UPDATE productos SET imagen='$ruta' WHERE idProducto=$idproducto";
							$mysqli->query($sql);
						}
						else
						{
							echo "Estension no valida.";
						}
					}
					header("Location: productosHabilitados1.php");
					$mysqli->commit();
				}
				else
				{
					$mysqli->rollback();
					echo "error";
				}
			}
			
		}		
	 ?>
</body>
</html>