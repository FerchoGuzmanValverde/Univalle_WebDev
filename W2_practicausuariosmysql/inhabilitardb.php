<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>CRUD Usuarios</title>
</head>
<body>
    <?php
        include("config.php");
        $id = $_POST['idUsuario'];
        $sql="UPDATE usuarios
                SET habilitado=0
                WHERE idUsuario = $id";
        if($mysqli->query($sql))
        {
            header("location: uhabilitados.php");
        }
        else
        {
            echo "Error en la actualizacion";
        }
    ?>
</body>
</html>