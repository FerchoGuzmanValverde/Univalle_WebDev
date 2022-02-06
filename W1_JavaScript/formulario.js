function generarRandom()
{
	var num1 = parseInt(Math.random()*10)+1;
	var num2 = parseInt(Math.random()*10)+1;

	document.getElementById("random1").value = num1;
	document.getElementById("random2").value = num2;
}

function sumar()
{
	var num1 = parseInt(document.getElementById("num1").value);
	var num2 = parseInt(document.getElementById("num2").value);

	var resultado = num1 + num2;

	document.getElementById("resultado").value = resultado;
}