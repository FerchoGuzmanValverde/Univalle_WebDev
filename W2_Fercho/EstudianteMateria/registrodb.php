<?php

    include("config.php");

    $estudiante = $_POST['estudiante'];
    $carrera = $_POST['materia'];

    $sql="INSERT into estudiante set nombre='$estudiante'";
    $sqllastid="SELECT max(idEstudiante) AS idEstudiante FROM estudiante";
    
    $mysqli->autocommit(FALSE);

    if($mysqli->query($sql)&&$execonsulta=$mysqli->query($sqllastid))
    {
        while($row=mysqli_fetch_array($execonsulta))
		{
            $idEstudiante = $row['idEstudiante'];
            $sqlM="SELECT * from materia where nombreMateria='$carrera'";
            $execonsultaM=$mysqli->query($sqlM);
			
        }
        $sqlM="SELECT * from materia where nombreMateria='$carrera'";
        $execonsultaM=$mysqli->query($sqlM);
        while($row1=mysqli_fetch_array($execonsultaM))
		    {
                
                $idMateria = $row1["idMateria"];
            }
            
                $sql="INSERT into inscripciones set idMateria='$idMateria', idEstudiante='$idEstudiante'";
                if($mysqli->query($sql))
                {
                    $mysqli->commit();
                    header("Location: CrearEstudiante.php");
                }
                else{
                    echo "Error en la transaccion";
                }
    }

?>