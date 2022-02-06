var num1;
var num2;

function generar()
{
	num1 = Math.floor(Math.random()*5)+1;
	num2 = Math.floor(Math.random()*5)+1;
	document.getElementById("imagen1").src="images/"+num1+".png";
	document.getElementById("imagen2").src="images/"+num2+".png";
	document.getElementById("num1").value=num1;
	document.getElementById("num2").value=num2;
}

var seleccion;

function cambiar()
{
	seleccion = document.getElementById("seleccion").value;
	document.getElementById("respuesta").src = "images/"+seleccion+".png";
}


function sumar()
{
	if(num1 + num2 != seleccion)
	{
		document.getElementById("respondiendo").innerHTML = "La respuesta es incorrecta";
	}
	else
	{
		alert("Tu respuesta es correcta");
		document.forms["forma"].submit();
	}
}