<?php 
    session_start();
    date_default_timezone_set('America/Bogota');

include('../config.php');

ini_set('display_errors', 1);

ini_set('display_startup_errors', 1);

error_reporting(E_ALL);
$fecha = date('d-m-Y H:i');
$action = $_REQUEST['action'];



$_POST['fecha_creacion'] = $fecha;
$_POST['estatus'] = "Ingreso";




$datos = $_POST;

var_dump($_POST);

function crear($datos,$conexion){

    $fecha = date('d-m-Y H:i');



    $columnas = implode(", ", array_keys($datos));
    $valores = "'" . implode("', '", $datos) . "'";
    
    $crear = "INSERT INTO solicitud ($columnas) VALUES ($valores)";


    echo $crear;


    if (mysqli_query($conexion, $crear)) {
        // echo "Los datos han sido guardados correctamente.";

        return "exitoso";
    } else {


        return "fallido";
        


    }





}



   $respuesta= $action($datos,$conexion);


    echo $respuesta;



?>