<?php 
    session_start();
    date_default_timezone_set('America/Bogota');

include('../config.php');

ini_set('display_errors', 1);

ini_set('display_startup_errors', 1);

error_reporting(E_ALL);
$fecha = date('d-m-Y H:i');
$action = $_GET['action'];






$datos = $_POST;


function actualizar($datos,$conexion,$url){

    $fecha = date('d-m-Y H:i');

    $_POST['fecha_modificado'] = $fecha;


    $id = $_GET['id'];    
    $columnas = implode(", ", array_keys($datos));
    $valores = "'" . implode("', '", $datos) . "'";

    $columnas_valores = [];
    foreach ($datos as $columna => $valor) {
        $columnas_valores[] = "{$columna} = '{$valor}'";
    }
    
    $columnas_valores_str = implode(", ", $columnas_valores);    


    $actualizar = "UPDATE usuario SET  {$columnas_valores_str}  WHERE id = '{$id}' ";


    // echo $actualizar;    


    if (mysqli_query($conexion, $actualizar)) {
        // echo "Los datos han sido guardados correctamente.";

        echo "
        <script>

            // Obtener el valor del campo de entrada
            var url = '".$url."/page/?view=user';
            
            // Redireccionar a la URL especificada
            window.location.href = url;


        </script>
        
        ";

        return "exitoso";


    } else {


        return "fallido";
        


    }





}


function registrar($datos,$conexion,$url){

    $fecha = date('d-m-Y H:i');

    $nombre = $_POST['nombre'];
    $correo = $_POST['email'];
    $password = $_POST['contra'];



    $consulta_llaves = "SELECT * FROM usuario WHERE email = '{$correo}'";

    $result_con_llaves = mysqli_query($conexion,$consulta_llaves);

    $validate = '';
    while ($row = $result_con_llaves->fetch_assoc()) {
        
        
        $id_usuario = $row['id'];



        if ($id_usuario > 0) {
            # code...
            $validate = 'true';

        }

    }


    $registrar = "INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `email`, `contrasena`, `direccion`, `ciudad`, `pais`, `codigo_postal`, `telefono`, `rol`, `estado`, `id_usuario_creacion`, `fecha_creacion`, `modificado_por`, `fecha_modificado`, `deleted`, `admin`, `sexo`, `fecha_nacimiento`, `tipo_documento`, `numero_documento`) 
    VALUES (NULL, '{$nombre}', '', '{$correo}', '{$password}', '', '', '', '', '', '2', '1', '0', '{$fecha}', '0', '0', '0', '0', '', '', '', '')";

    if ($validate == '' and mysqli_query($conexion, $registrar)) {
        // echo "Los datos han sido guardados correctamente.";


        $url = $url.'login.php';

        echo "
        <script>

            // Obtener el valor del campo de entrada
            var url = '{$url}?view=user&correo={$correo}&contra={$password}&bienvenida=1';
            
            // Redireccionar a la URL especificada
            window.location.href = url;


        </script>
        
        ";

        return "exitoso";


    } else {

        echo "{$registrar}";

        echo "
        <script>

            // Obtener el valor del campo de entrada
            var url = '?view=user';
            
            // Redireccionar a la URL especificada
            //window.location.href = url;


        </script>
        
        ";

        return "fallido";
        
        



    }

}




$respuesta= $action($datos,$conexion,$url);


echo $respuesta;


?>