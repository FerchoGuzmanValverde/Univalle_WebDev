var nuevo = document.createElement("p"); //se crea un parrafo
var contenido = document.createTextNode("Nuevo contenido"); // contenido tiene Nuevo contenido como valor

nuevo.appendChild(contenido); // crea parrafo con contenido

//agregando al final del contenedor
//var contenedor = document.getElementById("contenedor");
//contenedor.appendChild(nuevo);

//agregar al principio del contenedor
//var parrafo1 = document.getElementById("parrafo1");
//contenendor.insertBefore(nuevo, parrafo1);

//eliminar
//var padre = document.getElementById("contenedor");
//var hijo = document.getElementById("parrafo1");
//padre.removeChild(hijo);