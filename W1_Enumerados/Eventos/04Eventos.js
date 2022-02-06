document.addEventListener("click", clickweb);
document.getElementById("boton1").addEventListener("click", clickboton);
function clickweb()
{
	document.getElementById("demo").innerHTML="Click!!"
}
function clickboton()
{
	alert('Se hizo click en el boton');
}