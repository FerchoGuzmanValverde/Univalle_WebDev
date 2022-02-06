function generar()
{
	var numero;

	numero=Math.abs(-2);
	numero=Math.PI;
	numero=Math.pow(2,3);
	numero=Math.ceil(8.01);
	numero=Math.floor(8.99999);
	numero=Math.round(8.9999);
	numero=Math.sqrt(25);
	numero=Math.random();
	// Math.cos(), sin(), tan(), acos(), asin(), atam();

	document.getElementById("generacion2").innerHTML=numero;
}