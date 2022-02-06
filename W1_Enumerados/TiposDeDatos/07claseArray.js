function generar()
{
	var meses=new Array('enero','febrero','marzo');
	var x, salida1="", salida2="";

	meses.push('abril');
	meses.unshift('diciembre');
	meses.pop();
	meses.shift();

	meses.reverse();
	meses.sort();

	for(x=0;x<meses.length;x++)
	{
		salida1=salida1+meses[x]+"<br>";
	}

	document.getElementById("generacion1").innerHTML = salida1;

	var nums=[45,89,2,10,4];

	nums.sort(function(a,b){return (a-b)};

	for(x=0;x<nums.length;x++)
	{
		salida2=salida2+nums[x]+" ";
	}

	document.getElementById("generacion2").innerHTML = salida2;
}