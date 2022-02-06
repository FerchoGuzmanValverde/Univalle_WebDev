<?php

class bandera
{
	private $nombre;
	private $color1;
	private $color2;
	private $color3;
	
	function __construct($nombre, $col1, $col2, $col3)
	{
		$this->nombre=$nombre;
		$this->color1=$col1;
		$this->color2=$col2;
		$this->color3=$col3;

	}

	function generar(){
		?>
			<div style="width: 200px; height: 30px;background-color: <?php echo $this->color1; ?>;">
			</div>
			<div style="width: 200px; height: 30px;background-color: <?php echo $this->color2; ?>;">
			</div>
			<div style="width: 200px; height: 30px;background-color: <?php echo $this->color3; ?>;">
			</div>
			<?php
				echo "<h1>".$this->nombre."</h1>";
			?>

		<?php
	}
}

$bolivia=new bandera('Bolivia','#ff0000', '#ffff00', '#007934');
$bolivia->generar();
$argentina=new bandera('Argentina','#74acdf', '#ffffff', '#74acdf');
$argentina->generar();
$colombia=new bandera('Colombia','#ffff00', '#003895', '#ff0000');
$colombia->generar();

?>