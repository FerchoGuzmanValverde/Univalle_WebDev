function clonar()
{
	document.getElementById("imagen2").src = document.getElementById("imagen1").src;
}

var con = 1;
function agregarP()
{
	var parrafo = document.createElement("p");
	var contenido = document.createTextNode("parrafo" + con);

	parrafo.appendChild(contenido);

	var contenedor = document.getElementById("contenedor");
	contenedor.appendChild(parrafo);

	con++;
}

document.getElementById("nombre").disabled = true;


function habilitacion()
{
	var es = document.getElementById("habilitar").checked;
	if(es == true)
	{
		document.getElementById("nombre").value = "";
		document.getElementById("nombre").disabled = false;
	}
	else
	{
		document.getElementById("nombre").value = "nombre";
		document.getElementById("nombre").disabled = true;
	}
}