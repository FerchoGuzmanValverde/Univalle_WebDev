<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>CRUD Usuarios</title>
</head>
<body>
    <?php
        include("config.php");
        $login = $_POST['login'];
        $password = md5($_POST['password']);
        $password1 = md5($_POST['password2']);
        $rol = $_POST['rol'];

        if($password == $password1)
        {
            $sql="SELECT * from usuarios where user='$login'";
            $execonsulta=$mysqli->query($sql);
            $columnas=mysqli_num_rows($execonsulta);
            if($columnas <= 0)
            {
                $mysqli->autocommit(FALSE);
				$tipo=$_FILES['imagen']['type'];

                $sql="INSERT INTO usuarios
                        SET user='$login', 
                            contrasenia='$password',
                            rol = '$rol'";
                $sqllastid="SELECT max(idUsuario) AS idUsuario FROM usuarios";
                if($mysqli->query($sql)&&$execonsulta=$mysqli->query($sqllastid))
                {
                    while($row=mysqli_fetch_array($execonsulta))
					{
						$idusuario=$row['idUsuario'];
						if($_FILES['imagen']['type'] == 'image/png')
						{
							copy($_FILES['imagen']['tmp_name'],'img/'.$idusuario.'.png');
							$ruta=$idusuario.'.png';
							$sql="UPDATE usuarios SET imagen='$ruta' WHERE idUsuario=$idusuario";
							$mysqli->query($sql);
						}
						else
						{
							echo "Estension no valida.";
						}
					}
                    header("location: registrarNuevoUsuario.php");
                    $mysqli->commit();
                }
                else
                {
                    $mysqli->rollback();
                    echo "Error al agregar el usuario";
                }
            }
            else
            {
                echo "El usuario ya existe";
            }
        }
        else
        {
            echo "Los password no cohinciden";
        }

       
        
    ?>
</body>
</html>