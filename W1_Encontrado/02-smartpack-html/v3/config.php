<?php
error_reporting(E_ALL ^ E_DEPRECATED);
$hostname="127.0.0.1:33065";
$usuario="root";
$password="";
$basededatos="prueba";
$mysqli = new mysqli($hostname, $usuario, $password, $basededatos);
?>