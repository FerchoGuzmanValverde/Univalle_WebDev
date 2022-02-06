var clickboton=0;
var clickpagina=0;

document.addEventListener("click",clickweb);
document.getElementById("boton1").addEventListener("click",c);
function clickweb()
{
	clickpagina=clickpagina+1;
	document.getElementById("pagina").innerHTML=clickpagina;
}

function c()
{
	clickboton=clickboton+1;
	document.getElementById("b").innerHTML=clickboton;
}