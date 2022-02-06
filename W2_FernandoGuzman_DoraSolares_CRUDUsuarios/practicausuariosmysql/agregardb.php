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
            
        $sql="INSERT INTO usuarios
                SET user='$login', 
                    contrasenia='$password'";
        if($mysqli->query($sql))
        {
            header("location: crearusuario.php");
        }
        else
        {
            echo "Error al agregar el usuario";
        }

       
        
    ?>
</body>
</html>