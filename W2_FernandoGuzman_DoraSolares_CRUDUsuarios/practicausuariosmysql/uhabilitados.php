<?php
session_start();
if(isset($_SESSION['usuario']) && isset($_SESSION['tipo']))
{
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Usuarios Habilitados</title>
</head>
<body>
    <?php
        include("config.php");
    ?>
    <a href="uhabilitados.php">Usuarios Habilitados</a>
    <a href="uinhabilitados.php">Usuarios Inhabilitados</a>
    <a href="crearusuario.php">Crear Usuario</a>
    <a href="cerrarsesion.php">Cerrar Sesion</a>

    <table border="1">
        <tr>
            <th>Nro</th>
            <th>Login</th>
            <th>Inhabilitar</th>
        </tr>
        <?php
            $sql="SELECT * FROM usuarios WHERE habilitado=1";
            $execonsulta=$mysqli->query($sql);
            $indice=1;
            while($row = mysqli_fetch_array($execonsulta))
            {
                ?>
                <tr>
                    <td><?php echo $indice; ?></td>
                    <td><?php echo $row['user']; ?></td>
                    <td>
                        <form action="inhabilitardb.php" method="POST">
                            <input type="hidden" name="idUsuario" value="<?php echo $row['idUsuario']; ?>">
                            <button type="submit">Inhabilitar</button>
                        </form>
                    </td>
                    </tr>
                <?php
                $indice+=1;
            }
        ?>
        
    </table>
</body>
</html>
<?php
}
else
{
    header("Location: iniciarsesion.php");
}
?>
