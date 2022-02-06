function cambiarContenido()
{
	var nombre = "Fernando", apellido = "Guzman", edad = 20, sueldo = 22500.50;
	var nombreCompleto = nombre + " " + apellido;
	var suma = edad + sueldo;
	document.getElementById("demo").innerHTML = nombreCompleto;
	document.getElementById("demo2").innerHTML = suma;
}