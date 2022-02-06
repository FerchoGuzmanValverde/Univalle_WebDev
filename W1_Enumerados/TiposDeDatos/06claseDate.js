function generar()
{
	var tiempo=new Date();
	var salida1="", salida2="", salida3="";


	salida3=tiempo.getDate();
	salida2=tiempo.getMonth() + 1;
	salida1=tiempo.getFullYear();

	document.getElementById("generacion1").innerHTML="Hoy es: " + salida3 +"/"+salida2"/"+salida1;
	document.getElementById("generacion2").innerHTML=salida2;

	// hora 
	var salidaHora=tiempo.getHours(); // .getMinues()  .getSeconds()
}