var logo = document.getElementById("logo");
logo.innerHTML = "<h1>Blog de viajes</h1>";

var x = document.getElementsByTagName("p");

/*x[0].innerHTML = "Londres";
x[1].innerHTML = "Viajar a Londres";*/

/*for (var i = 0; i < x.length; i++)
{
	x[i].innerHTML = "Test " + i;
}*/

var y = document.getElementsByClassName("logo");
for(var i=0; i < y.length; i++)
{
	y[i].innerHTML = "Han sido hackeados";
}

var z = document.querySelectorAll("ul.clearfix");
for(var i=0; i < z.length; i++)
{
	z[i].innerHTML="Reemplazado por querySelectorAll";
}


var f = document.forms["registro"];
for(var i=0; i < f.length; i++)
{
	f.elements[i].value = "Campo " + i;
}


document.getElementById("parrafolondres1").style.color = "blue";
document.getElementById("parrafolondres1").style.fontFamily = "Arial";
document.getElementById("parrafolondres1").style.fontSize = "large";

document.getElementById("parrafolondres2").style.color = "blue";
document.getElementById("parrafolondres2").style.fontFamily = "Arial";
document.getElementById("parrafolondres2").style.fontSize = "large";

/*
(function(){
  'use strict';
  document.addEventListener('DOMContentLoaded', function(){
    
    
      
      
    
    
  });
  
})();*/