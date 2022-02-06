function mostrarReloj()
{
	var reloj = document.getElementById("reloj");

	setInterval(verhora, 1000); //ver hora se ejecuta cada 1000 milisegundos

	function verhora()
	{
		var d = new Date();

		var horas = d.getHours();
		var minuto = d.getMinutes();
		var segundo = d.getSeconds();
		if(segundo < 10)
		{
			segundo = "0" + segundo; 
		}

		var textohora = horas + ":" + minuto + ":" + segundo;
		reloj.innerHTML = textohora;
	}
}