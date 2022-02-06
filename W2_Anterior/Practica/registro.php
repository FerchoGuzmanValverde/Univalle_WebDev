<?php
	date_default_timezone_set("America/La_Paz");
	if(date('H') <= 11)
	{
		if ($_SERVER['HTTP_REFERER'] == 'http://localhost:8080/proyecto/Practica/form.php') {
			$log = $_POST['login'];
			$nuevo = substr($log, 0, 1).strlen($log).substr($log, (strlen($log)-2), 2).(strlen($log) - 1);
			echo "pwd: ".$nuevo;
		}
		else
		{
			echo "Acceso denegado";
		}
	}
	else
	{
		echo "El enlace ya no esta disponible";
	}

?>