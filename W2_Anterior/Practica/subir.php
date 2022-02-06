<?php

	echo $_FILES['foto']['tmp_name'];
	echo "<br>";
	echo $_FILES['foto']['name'];
	echo "<br>";
	echo $_FILES['foto']['type'];
	echo "<br>";
	echo $_FILES['foto']['size'];
	

	copy($_FILES['foto']['tmp_name'],"img/".$_FILES['foto']['name']);

?>