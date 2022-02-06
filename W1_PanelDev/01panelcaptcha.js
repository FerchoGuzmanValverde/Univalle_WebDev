var num1=parseInt(Math.random()*10)+1;
var num2=parseInt(Math.random()*10)+1;

document.getElementById("imgrandom1").src="images/" + num1 + ".png";
document.getElementById("imgrandom2").src="images/" + num2 + ".png";

$(document).ready(function(){
	$("#cabeza").click(function(){
		var panel = $("#panel");
		panel.slideToggle();
	})
})