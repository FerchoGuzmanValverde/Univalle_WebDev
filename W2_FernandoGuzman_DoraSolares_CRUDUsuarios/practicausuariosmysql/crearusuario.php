<?php
session_start();
if(isset($_SESSION['usuario']) && isset($_SESSION['tipo']))
{
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Crear Usuario</title>
</head>
<body>
    <a href="uhabilitados.php">Usuarios Habilitados</a>
    <a href="uinhabilitados.php">Usuarios Inhabilitados</a>
    <a href="crearusuario.php">Crear Usuario</a>
    <a href="cerrarsesion.php">Cerrar Sesion</a>
    <form action="agregardb.php" method="POST">
        <label>User: </label>
        <input type="text" name="login" placeholder="Ingrese usuario">
        <br>
        <label>Password: </label>
        <input type="password" name="password" placeholder="Ingrese contraseña">
        <br>
        <button type="submit">Agregar</button>
    </form>
</body>
</html>
<?php
}
else
{
    header("Location: iniciarsesion.php");
}
?>