<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>Code Igniter con Boostrap</title>
    <meta charset="utf-8">

<link rel="stylesheet" href="<?php echo base_url(); ?>bootstrap/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="<?php echo base_url(); ?>bootstrap/js/jquery-3.3.1.js"></script>

<!-- Popper JS -->
<script src="<?php echo base_url(); ?>bootstrap/js/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="<?php echo base_url(); ?>bootstrap/js/bootstrap.min.js"></script>

  </head>
  <body>

  	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
    <a class="navbar-brand" href="#">Navbar</a>

    <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url(); ?>index.php/estudiantes/notasestudiantes">Ver Notas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url(); ?>index.php/estudiantes/">Ver Lista</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li> 
      </ul>
    </div> 
  </nav>