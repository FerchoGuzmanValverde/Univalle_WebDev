<?php
    ob_start();
    session_cache_limiter(FALSE);
    session_start();
    if(isset($_SESSION['usuario']) && isset($_SESSION['tipo']))
    {
        session_destroy();
        header("Location: iniciarsesion.php");
    }
    else
    {
        header("Location: iniciarsesion.php");
    }
    ob_end_flush();
?>