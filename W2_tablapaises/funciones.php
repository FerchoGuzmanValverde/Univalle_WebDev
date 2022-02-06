<?php
    function generarMapa($latitud, $longitud)
    {
        ?>
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d210146.68169364758!2d<?php echo $longitud; ?>!3d<?php echo $latitud; ?>!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2sbo!4v1556028311528!5m2!1ses-419!2sbo" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
        <?php
    }
?>