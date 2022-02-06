function generar()
{
	//var numero =parseInt(document.getElementById("numero").value);
	var numero =parseFloat(document.getElementById("numero").value);

	numero=numero.toFixed(2);

	numero=Number.MAX_VALUE;
	numero=Number.MIN_VALUE;




	document.getElementById("generacion1").innerHTML=numero;
}