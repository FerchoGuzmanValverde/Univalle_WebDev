<?php
	
	if($_SERVER['HTTP_REFERER']=='http://localhost:8080/proyecto/formulario.php')
	{
		date_default_timezone_set("America/La_Paz");

		$ano = date('Y');
		$mes = date('m');
		$dia = date('d');
		$hora = date('H');
		$min = date('i');
		$seg = date('s');
		echo $dia."-".$mes."-".$ano."  ".$hora.":".$min.":".$seg." ".date('e');
	}
	else
	{
		echo "Acceso Denegado.";
	}

?>