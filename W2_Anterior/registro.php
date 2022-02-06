<?php

	$incidente1 = "LOGIN | Acceso de usuario";
	$incidente2 = "UPDATE | Modificacion de datos";
	$incidente3 = "LOGOUT | Salida de usuario";

	$ar = fopen("datos.txt", "a") or die ("Problemas en la creacion");
	fputs($ar, "LOG DEL SERVIDOR");
	fputs($ar, "\r\n");
	fputs($ar, $incidente1);
	fputs($ar, "\r\n");
	fputs($ar, $incidente2);
	fputs($ar, "\r\n");
	fputs($ar, $incidente3);
	fputs($ar, "\r\n");
	fclose($ar);

?>