function validarDatos()
{
	var nombre=document.getElementById("n").value;
	var edad=document.getElementById("e").value;
	var pais=document.getElementById("pais").value;
	var p1=document.getElementById("pass1").value;
	var p2=document.getElementById("pass2").value;
	if(nombre.length < 3)
	{
		alert('El nombre debe tener 3 o mas caracteres');
		document.getElementById("n").focus();
	}
	else if(edad < 18)
	{
		alert('Debe ser mayor de edad');
		document.getElementById("e").focus();
	}
	else if(pais != "bolivia")
	{
		alert('Debe ser de Bolivia');
		document.getElementById("pais").focus();
	}
	else if(p1 != p2)
	{
		alert('Las contraseñas deben coincidir.');
		document.getElementById("pass1").focus();
	}
	else
	{
		document.forms['formulario']; //similar a submit desde javascript
	}
}