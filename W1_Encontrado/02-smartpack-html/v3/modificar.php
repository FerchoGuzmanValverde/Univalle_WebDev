<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <title>SmartPack - HTML Template With Page Builder</title>
    
    <!-- Loading Bootstrap -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-magnific-popup.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
      
    <link rel="shortcut icon" href="images/favicon.ico">


    
</head>
<body>
    
    <?php include("config.php");?>


            <?php      
            $sql="SELECT * FROM paises";
            $$execonsulta=$mysqli->query($sql);
            $numusuarios=mysqli_num_rows($execonsulta);
            ?>




    <header class="item header margin-top-0 padding-bottom-70" id="header1">

                                       
        <div class="wrapper">
    
            <div class="container">
        
                <nav role="navigation" class="navbar navbar-default navbar-lg navbar-fixed-top">
                    
                    <div class="container">
                
                        <div class="navbar-header">
                                      <?php
                        if(mysqli_num_rows($execonsulta)>0)
                        {
                            $indice=1;
                            while ($row=mysqli_fetch_array($execonsulta))
                             {
                               ?>      
                                           
                            <a href="#" class="navbar-brand brand"> <span class="red">Rusia</span><span class="blue">2018</span></a>
                            <img src="banderas/<?php echo utf8_encode($row['pais'])  ?><?php echo $row['imagen'];?>" class="img-responive">
                        </div>
                        
                                <div class="navbar-header "><?php echo $indice;?>
                                                           
                            <a href="#" class="navbar-brand brand"> <span class="red">Rusia</span><span class="blue">2018</span></a>;
                        </div>
                    

                            }
                        }



                         
                                
           
                    </div><!-- /.container -->
                    
                </nav>
            
            </div><!-- /.container -->
    
        </div><!-- /.wrapper -->
    
    </header><!-- /.item -->
    

    



    

    

    

    
    <div class="item pricing no-margins" id="pricing_table1">
        
        <div class="pricing-bg1">
            
            <div class="container">
                
                <div class="row text-center">
                 
                    <div class="col-md-8 col-md-offset-2">
            
                        <h3 class="pricing-title editContent">COPA MUNDIAL DE LA FIFA RUSIA 2018</h3>
                        <p class="pricing-subtitle editContent">14 JUNIO - 15 JULIO</p>
                                                  
                    </div><!-- /.col-md-12 -->
                   
                </div><!-- ./row -->
            
            <div class="row">
                <h3 class="pricing-title">GRUPO "A"</h3>
            </div>
                <div class="row">
                
                    <div class="col-md-3">
                        <div class="pricing2">
                            <div class="top">
                                <h2 class="editContent">RUSIA</h2>
                                <img src="">
                            </div><!-- /.top -->
                            <div class="bottom">
                                <input  type="submit" class="btn btn-md btn-block btn-blue" value="VER EQUIPO "
                            </div><!-- /.bottom -->
                        </div><!-- /.pricing2 -->
                    </div><!-- /.col-md-3 col -->
                    


                

                    
                </div><!-- /.row -->
            
            </div><!-- /.container -->
        
        </div><!-- /.pricing-bg -->
    
    </div><!-- /.item -->
    
    <div class="item services" id="portfolio">
        
        <div class="container">

            <div class="row text-center">
            
                <div class="col-md-12">
                
                    <h3 class="title-single editContent">Copyright?? 1994 - 2018 FIFA. Reservados todos los derechos</h3>
                    
                </div><!-- /.col-md-12 -->
            
            </div><!-- ./row -->
        
        </div><!-- /.container -->
    
    </div><!-- /.item -->
    



    <!-- Load JS here for greater good =============================-->
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/bootstrap-switch.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script src="js/jquery.scrollTo-min.js"></script>
    <script src="js/jquery.nav.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    
	<!-- begin layerslider script-->
    <script src="js/greensock.js"></script>
    <script src="js/layerslider.transitions.js"></script>
    <script src="js/layerslider.kreaturamedia.jquery.js"></script>
    
    <script src="js/custom.js"></script>
    
</body></html>