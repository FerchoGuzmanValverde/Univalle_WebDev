function generar()
{
	var palabra =document.getElementById("palabra").value;

	var salida = "";

	salida="Longitud: " + palabra.length + "<br>";
	salida=salida+"Primer caracter: " + palabra.charAt(0) + "<br>";
	salida=salida+"Primeros 3 Caracteres: " + palabra.substring(0,3)+"<br>";
	if(palabra.indexOf('casa')== -1)
	{
		salida = salida+"NO se ingreso casa en el string";
	}
	else
	{
		salida=salida+"SI se ingreso casa en el string";
	}

	salida =salida+"Mayuscula: " + palabra.toUpperCase()+"<br>";
	salida =salida+"Minuscula: " + palabra.toLowerCase()+"<br>";	

	document.getElementById("generacion1").innerHTML=salida;
}