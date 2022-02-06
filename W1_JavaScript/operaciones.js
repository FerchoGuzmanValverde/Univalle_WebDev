function generar()
{
	var n1 = parseInt(Math.random() * 10) + 1;
	var n2 = parseInt(Math.random() * 10) + 1;
	document.getElementById("num1").value = n1;
	document.getElementById("num2").value = n2;
}

function sumar()
{
	var n1 = parseInt(document.getElementById("num1").value);
	var n2 = parseInt(document.getElementById("num2").value);
	var suma = n1 + n2;
	document.getElementById("suma").innerHTML = suma;
}

function restar()
{
	var n1 = document.getElementById("num1").value;
	var n2 = document.getElementById("num2").value;
	var resta = n1 - n2;
	document.getElementById("resta").innerHTML = resta;
}

function multiplicar()
{
	var n1 = document.getElementById("num1").value;
	var n2 = document.getElementById("num2").value;
	var mul = n1 * n2;
	document.getElementById("multi").innerHTML = mul;
}

function dividir()
{
	var n1 = document.getElementById("num1").value;
	var n2 = document.getElementById("num2").value;
	var div = n1 / n2;
	document.getElementById("divi").innerHTML = div;
}