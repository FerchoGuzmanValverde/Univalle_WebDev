function generar()
{
	var limite=parseInt(document.getElementById("numero1").value);
	var x = 1, salida1 = "", salida2 = "", salida3 = "";

	//estructura while
	while(x <= limite)
	{
		salida1=salida1+x+"<br>";
		x++;
	}

	//estructura do while
	x=1;
	do
	{
		salida2=salida2+x+"<br>";
		x++;
	}while(x<=limite);

	//estructura for
	for (x = 1; x <= limite; x++) 
	{
		salida3=salida3+x+"<br>";
	}

	document.getElementById("generacion1").innerHTML = salida1;
	document.getElementById("generacion2").innerHTML = salida2;
	document.getElementById("generacion3").innerHTML = salida3;
}