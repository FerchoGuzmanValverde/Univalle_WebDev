<?php
    $hostname="localhost:33065";
    $usuario="root";
    $password="";
    $basededatos="univalle2019";

    $mysqli=new mysqli($hostname,$usuario,$password,$basededatos);
    $mysqli->set_charset("utf8");
?>