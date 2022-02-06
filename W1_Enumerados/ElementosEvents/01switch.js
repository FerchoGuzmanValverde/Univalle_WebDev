function traducir()
{
	var palabra=document.getElementById("espanol").value;
	var traduccion;

	switch(palabra)
	{
		case 'casa':
		traduccion="house";
		break;

		case 'mesa':
		traduccion = "table";
		break;

		case 'gato':
		traduccion="cat";
		break;

		default:
		traduccion="No existe traduccion para esa palabra";
	}
	document.getElementById("ingles").innerHTML = traduccion;
}