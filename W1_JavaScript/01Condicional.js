function evaluarEdad()
{
	var edad = document.getElementById("edad").value;
	var estado;

	if(edad >= 18)
	{
		estado = "Mayor de edad";
	}
	else
	{
		estado = "Menor de edad";
	}

	document.getElementById("resultado").innerHTML = estado;
}

function evaluar()
{
	var n1 = parseInt(document.getElementById("nota1").value);
	var n2 = parseInt(document.getElementById("nota2").value);
	var n3 = parseInt(document.getElementById("nota3").value);

	var promedio = (n1 + n2 + n3) / 3;
	var estado;

	if(promedio >= 61)
	{
		estado = "Aprovado";
	}
	else if(promedio >= 41)
	{
		estado = "instancia";
	}
	else
	{
		estado = "reprovado";
	}

	document.getElementById("promedio").innerHTML = parseInt(promedio);
	document.getElementById("estadoP").innerHTML = estado;
}