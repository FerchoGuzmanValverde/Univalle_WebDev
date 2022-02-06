var numero1 = parseInt(Math.random() * 10)+ 1;
var numero2 = parseInt(Math.random() * 10)+ 1;

document.getElementById("random1").innerHTML = numero1;
document.getElementById("random2").innerHTML = numero2;

function sumar(num1, num2)
{
	var suma = num1 + num2;
	document.getElementById("resultado").innerHTML = suma;
}

function restar(n1, n2)
{
	var resta = n1 - n2;
	return resta;
}