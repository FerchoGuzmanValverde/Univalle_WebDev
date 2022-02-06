var smn = 2060;
function calcular()
{
	var tipo = document.getElementById("tipo").value;
	var salario = parseFloat(document.getElementById("salario").value);

	if(tipo == "Planta")
	{
		Planta(salario);
	}
	else if(tipo == "Contrato")
	{
		Contrato(salario);
	}
	else if(tipo == "Consultor")
	{
		Consultor(salario);
	}
	else if(tipo == "Ejecutivo")
	{
		Ejecutivo(salario);
	}
	else if(tipo == "Seguridad")
	{
		Seguridad(salario);
	}
	else
		document.alert("No ha ingresado ningun tipo");
}

function Planta(salario)
{
	var final, aporte;
	if(salario < (2 * smn))
	{
		final = salario * 0.99;
		aporte = salario * 0.01;
	}
	else if(salario >= (2*smn) && salario <= (4 * smn))
	{
		final = salario * 0.98;
		aporte = salario * 0.02;
	}
	else
	{
		final = salario * 0.97;
		aporte = salario * 0.03;
	}
	document.getElementById("salarioF").innerHTML = final.toFixed(2);
	document.getElementById("aporte").innerHTML = aporte.toFixed(2);
}

function Contrato(salario)
{
	var final, aporte;
	if(salario < (3 * smn))
	{
		final = salario * 0.97;
		aporte = salario * 0.03;
	}
	else if(salario >= (3*smn) && salario <= (5 * smn))
	{
		final = salario * 0.95;
		aporte = salario * 0.05;
	}
	else
	{
		final = salario * 0.94;
		aporte = salario * 0.06;
	}
	document.getElementById("salarioF").innerHTML = final.toFixed(2);
	document.getElementById("aporte").innerHTML = aporte.toFixed(2);
}

function Consultor(salario)
{
	var final, aporte;
	if(salario <= (4 * smn))
	{
		final = salario * 0.96;
		aporte = salario * 0.04;
	}
	else if(salario > (4*smn) && salario <= (5 * smn))
	{
		final = salario * 0.93;
		aporte = salario * 0.07;
	}
	else
	{
		final = salario * 0.91;
		aporte = salario * 0.09;
	}
	document.getElementById("salarioF").innerHTML = final.toFixed(2);
	document.getElementById("aporte").innerHTML = aporte.toFixed(2);
}

function Ejecutivo(salario)
{
	var final, aporte;
	final = salario * 0.9;
	aporte = salario * 0.1;
	document.getElementById("salarioF").innerHTML = final.toFixed(2);
	document.getElementById("aporte").innerHTML = aporte.toFixed(2);
}

function Seguridad(salario)
{
	document.getElementById("salarioF").innerHTML = salario;
	document.getElementById("aporte").innerHTML = 0;
}