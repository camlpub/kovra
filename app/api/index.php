<?php

//ini_set('log_errors', 1);
//ini_set('error_log', 'archivo_de_log.log');
//error_reporting(E_ALL);
// Permitir solicitudes desde cualquier origen
// Permitir solicitudes desde cualquier origen (puedes restringirlo más, si es necesario)
header("Access-Control-Allow-Origin: *");

// Permitir métodos HTTP específicos
header("Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE");

// Permitir encabezados específicos en las solicitudes
header("Access-Control-Allow-Headers: Authorization, Content-Type, X-Requested-With");


// Configurar el encabezado Content-Type para JSON
header('Content-Type: application/json');
include("./include/config.php");

    


    if(isset($_REQUEST['controller'])){

        $controller = $_REQUEST['controller'];
        $parameters = isset($_REQUEST['parameters']) ? $_REQUEST['parameters'] : null;
        $action = isset($_REQUEST['action']) ? $_REQUEST['action'] : null;

    
        $respuesta = iniciar_api($controller,$parameters,$action,$conexion);

    }



    function iniciar_api($controller,$parameters,$action,$conexion){

            if ($controller != '' or $controller != null) 
            {
                # code...
                require('./controller/'.$controller.'.php');
                if(!isset($action)){

                    $action = "listar";
                    $action($conexion);

                }else{
                    // Obtén el body de la solicitud
                    $body = file_get_contents('php://input');

                    // Decodifica el JSON a un array asociativo
                    $data = json_decode($body, true);

                    if (isset($data['parameters'])) {
                        $parameters = $data['parameters'];

                    } else {
                        // echo "No se recibieron parámetros.";
                    }


                    $action($parameters,$conexion);

                }
                

                header('HTTP/1.1 201 Servicio encontrado');

            }else{

                header('HTTP/1.1 404 Controlador no encontrado');
                
            }
    
    }





?>