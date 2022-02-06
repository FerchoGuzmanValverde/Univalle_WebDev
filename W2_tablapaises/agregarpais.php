<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Agregar Pais</title>
</head>
<body>
    <a href="listapaises.php">Volver a la lista de paises</a>
    <form action="agregarpaisdb.php" method="POST" enctype="multipart/form-data">
        <input type="text" name="pais" placeholder="Pais">
        <input type="text" name="latitud" placeholder="Latitud">
        <input type="text" name="longitud" placeholder="Longitud">
        <input type="file" name="foto">
        <input type="submit" value="Enviar">
    </form>
</body>
</html>