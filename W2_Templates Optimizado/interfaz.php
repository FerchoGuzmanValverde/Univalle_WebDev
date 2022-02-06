<?php

class panel
{
	protected $titulo;
	protected $contenido;
	protected $pie;
	protected $color;

	function __construct($titulo, $contenido, $color, $pie)
	{
		$this->color=$color;
		$this->contenido=$contenido;
		$this->pie=$pie;
		$this->titulo=$titulo;
	}

	public function mostrar()
	{
		?>

					<!-- START panel-->
                  <div class="panel panel-<?php echo $this->color; ?>">
                     <div class="panel-heading"><?php echo $this->titulo; ?>
                        <a href="#" data-perform="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                           <em class="fa fa-minus"></em>
                        </a>
                     </div>
                     <div class="panel-body">
                        <p><?php echo $this->contenido; ?></p>
                     </div>
                     <div class="panel-footer"><?php echo $this->pie; ?></div>
                  </div>
                  <!-- END panel-->

		<?php
	}
}

?>