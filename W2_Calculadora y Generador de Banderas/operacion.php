<?php

$nume1 = $_POST['num1'];
$nume2 = $_POST['num2'];

$ope = new operaciones($nume1, $nume2);

$ope->sumar();
$ope->restar();
$ope->multiplicar();
$ope->dividir();

class operaciones
{
	private $num1;
	private $num2;
	
	function __construct($numero1, $numero2)
	{
		$this->num1=$numero1;
		$this->num2=$numero2;
	}

	function sumar(){
		echo "La suma es: ".($this->num1 + $this->num2)."<br>";
	}
	function restar(){
		echo "La resta es: ".($this->num1 - $this->num2)."<br>";
	}
	function multiplicar(){
		echo "La multiplicacion es: ".($this->num1 * $this->num2)."<br>";
	}
	function dividir(){
		echo "La divicion es: ".($this->num1 / $this->num2)."<br>";
	}
}



?>