<?php
include("config.php");

$mysqli->autocommit(FALSE);

$sql1="INSERT INTO paises SET pais='Colombia', latitud='4.6486259',longitud='-74.2478936'";
$sql2="INSERT INTO paises SET pais='Ecuador', latitud='-0.1862504',longitud='-78.5706247'";
$sql3="INSERT INTO paises SET pais='Venezuela', latitud='10.4686988',longitud='-67.0304523'";

if($mysqli->query($sql1)&&$mysqli->query($sql2)&&$mysqli->query($sql3))
{
	$mysqli->commit();	//consolidar
}
else
{
	$mysqli->rollback();
	echo "error";
}
?>