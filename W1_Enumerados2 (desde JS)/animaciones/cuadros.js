function diagonal()
{
	var elem = document.getElementById("animacion");
	var pos = 0;

	var id = setInterval(frames, 5); //ver hora se ejecuta cada 1000 milisegundos

	function frames()
	{
		if(pos == 350)
		{
			clearInterval(id); // para detener la ejecucion
		}
		else
		{
			pos++;
			elem.style.top = pos+"px";
			elem.style.left = pos+"px";
		}
	}
}