function cargarAnimacion()
{
	var x = 1;
	var animacion = document.getElementById("animacion");

	setInterval(frames, 1000); //ver hora se ejecuta cada 1000 milisegundos

	function frames()
	{
		if(x == 10)
		{
			x = 1;
		}
		else
		{
			animacion.src = x+".jpg";
			x++;
		}
	}
}