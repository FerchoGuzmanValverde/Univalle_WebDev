var x = document.getElementsByTagName("p");

x[0].innerHTML = "titulo de la pagina";
x[1].innerHTML = "subtitulo de la pagina";

for (var i = 0; i < x.length; i++) 
{
	x[i].style.backgroundColor = "red";
}