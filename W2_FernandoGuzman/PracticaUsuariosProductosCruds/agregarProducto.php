<?php
session_start();
include("config.php");
if(isset($_SESSION['usuario']) && isset($_SESSION['tipo']))
{
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a class="js-arrow" href="bienvenidoAdmin.php">
                                <i class="fas fa-tachometer-alt"></i>Bienvenido</a>
                        </li>
                        <li>
                            <a href="uHabilitados.php">
                                <i class="fas fa-chart-bar"></i>Usuarios Habilitados</a>
                        </li>
                        <li>
                            <a href="uInhabilitados.php">
                                <i class="fas fa-table"></i>Usuarios Inhabilitados</a>
                        </li>
                        <li>
                            <a href="registrarNuevoUsuario.php">
                                <i class="far fa-check-square"></i>Registrar Usuario</a>
                        </li>
                        <li>
                            <a href="cambiarPassword.php">
                                <i class="fas fa-calendar-alt"></i>Cambiar Password</a>
                        </li>
                        <li>
                            <a href="productosHabilitados.php">
                                <i class="fas fa-calendar-alt"></i>Productos Habilitados</a>
                        </li>
                        <li>
                            <a href="productosInhabilitados.php">
                                <i class="fas fa-calendar-alt"></i>Productos Inhabilitados</a>
                        </li>
                        <li>
                            <a href="agregarProducto.php">
                                <i class="fas fa-calendar-alt"></i>Agregar Producto</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <div class="header-button">
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Fernando Guzman</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">Fernando Guzman</a>
                                                    </h5>
                                                    <span class="email">gvf0026694@est.univalle.edu</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="cerrarsession.php">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-9">
                                <h2 class="title-1 m-b-25">Agregar Producto</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <div class="login-form">
                                        <?php 
                                            if(isset($_GET['error']))
                                            {
                                                if($_GET['error']==1)
                                                {
                                                    $error="Producto ya registrado";
                                                    $nombres=$_GET['nombres'];
                                                    $cantidad=$_GET['cantidad'];

                                                }
                                                else
                                                {
                                                    if($_GET['error']==2)
                                                    {
                                                    $error="Cantidad no válida";
                                                    $nombres=$_GET['nombres'];
                                                    $cantidad=$_GET['cantidad'];
                                                    }
                                                }           
                                            }
                                            else
                                            {
                                                $error="";
                                                $nombres="";
                                                $cantidad="";
                                            }
                                         ?>
                                        <form action="registrar.php" method="post" enctype="multipart/form-data">
                                            <p id="error"><?php echo $error; ?></p>
                                            <div class="form-group">
                                                <label>Producto</label>
                                                <input class="au-input au-input--full" type="text" name="producto" placeholder="Producto" value="<?php echo $nombres; ?>">
                                            </div>
                                            <div class="form-group">
                                                <label>Cantidad</label>
                                                <input class="au-input au-input--full" type="number" name="cantidad" placeholder="Cantidad" value="<?php echo $cantidad; ?>">
                                            </div>
                                            <div class="form-group">
                                                <label>Imagen</label>
                                                <input class="au-input au-input--full" type="file" name="imagen" placeholder="Imagen">
                                            </div>
                                            <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">Registrar Producto</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<?php
}
else
{
    header("Location: login.html");
}
?>
<!-- end document-->
