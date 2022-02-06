<!DOCTYPE html>
<html>
<head>
	<?php 
		include("head.php");
	?>
</head>
<body>


	<div class="container">

		<form action="validar.php" method="post">
		
			<div class="form-group">
				<input class="form-control" type="text" name="login" placeholder="Ingrese Login">
			</div>
			<div class="form-group">
				<input class="form-control" type="password" name="password" placeholder="Ingrese Password">
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>

		</form>

	</div>


</body>
</html>