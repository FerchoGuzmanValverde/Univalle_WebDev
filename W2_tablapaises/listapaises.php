<?php
    include("funciones.php");
    include("config.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Lista de Paises</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
<a href="agregarpais.php">Agregar nuevo pais</a>
<?php
$sql="SELECT * FROM paises";
$execonsulta=$mysqli->query($sql);
while($row=mysqli_fetch_array($execonsulta))
{
    ?>
        <div class="card" style="width: 35rem;">
            <?php generarMapa($row['latitud'],$row['longitud']); ?>
            <div class="card-body">
            <img src="banderas/<?php echo $row['imagen']; ?>" width="50">
                <h5 class="card-title"><?php echo $row['pais']; ?></h5>
            </div>
        </div>
    <?php
}
?>

    

</div>
</body>
</html>
