<a href="listapaises.php">Volver a la lista de paises</a>
<?php
include("config.php");
$mysqli->autocommit(FALSE);
$pais=$_POST['pais'];
$latitud=$_POST['latitud'];
$longitud=$_POST['longitud'];
$tipo=$_FILES['foto']['type'];

$sqlinsert="INSERT INTO paises SET pais='$pais', latitud='$latitud',longitud='$longitud'";

$sqllastid="SELECT max(idPais) AS idPais FROM paises";

if($mysqli->query($sqlinsert)&&$execonsulta=$mysqli->query($sqllastid))
{
	while($row=mysqli_fetch_array($execonsulta))
	{
	    $idpais=$row['idPais'];
	    if($_FILES['foto']['type'] == 'image/png')
		{
		    copy($_FILES['foto']['tmp_name'],'banderas/'.$idpais.'.png');
		    $ruta=$idpais.'.png';
		    $sql="UPDATE paises SET imagen='$ruta' WHERE idPais=$idpais";
		    $mysqli->query($sql);
		}
		else
		{
		    echo "Estension no valida.";
		}
	}
	$mysqli->commit();
}
else
{
	$mysqli->rollback();
	echo "error";
}


/*// 1ra opcion para recuperar el id
$sqllastid="SELECT max(idPais) AS idPais FROM paises";
$execonsulta=$mysqli->query($sqllastid);
while($row=mysqli_fetch_array($execonsulta))
{
    $idpais=$row['idPais'];
}*/


//2da opcion
//$idpais=$mysqli->insert_id;

//3ra opcion
//$idpais=mysqli_insert_id($mysqli);


?>