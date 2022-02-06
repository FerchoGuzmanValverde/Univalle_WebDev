<?php
ob_start();
session_cache_limiter(FALSE);
session_start();

if(isset($_SESSION['usuario']) && isset($_SESSION['tipo'])){
	//eliminar las variables de session
	session_destroy();
	header("Location: formulario.php");
	/*echo '<script type="text/javascript">window.location.assign("panel.php");</script>';*/
}
else{
	header("Location: formulario.php");
	/*echo '<script type="text/javascript">window.location.assign("panel.php");</script>';*/
}
ob_end_flush();
?>