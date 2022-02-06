<!DOCTYPE html>
<html lang="es" class="no-ie">
<!--<![endif]-->

<head>
   <?php include("template_head.php"); ?>
   <?php include("interfaz.php"); ?>
</head>

<body>
   <!-- START Main wrapper-->
   <section class="wrapper">
      
      <?php include("template_topnavbar.php"); ?>
      <?php include("template_asideleft.php"); ?>
      <?php include("template_asideright.php"); ?>
      
      
      <!-- START Main section-->
      <section>
         <!-- START Page content-->
         <section class="main-content">
            <h3>Page title
               <br>
               <small>Subtitle</small>
            </h3>
            <?php
               $panel1 = new panel("Bienvenido", "contenido", "success", "pie de panel");
               $panel2 = new panel("Bienvenido", "contenido", "danger", "pie de panel");
               $panel3 = new panel("Bienvenido", "contenido", "primary", "pie de panel");
            ?>
            <div class="row">
               <div class="col-md-4">
                  <?php
                     $panel1->mostrar();
                  ?>
               </div>
               <div class="col-md-4">
                  <?php
                     $panel2->mostrar();
                  ?>
               </div>
               <div class="col-md-4">
                  <?php
                     $panel3->mostrar();
                  ?>
               </div>
            </div>
         </section>
         <!-- END Page content-->
      </section>
      <!-- END Main section-->
   </section>
   <!-- END Main wrapper-->
   <?php include("template_footer.php"); ?>
</body>

</html>