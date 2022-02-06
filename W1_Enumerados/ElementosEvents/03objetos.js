var persona={
	nombre:"Fernando",
	apellido:"Guzman",
    edad:18,
    nombreCompleto:function(){
    	return this.nombre+" "+this.apellido;
    }
};

function generar()
{
	document.getElementById("generacion1").innerHTML=persona.nombre;
	document.getElementById("generacion2").innerHTML=persona.nombreCompleto();
	document.getElementById("generacion3").innerHTML=persona.edad;
}