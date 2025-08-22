<?php 

include('../config.php');

ini_set('display_errors', 1);

ini_set('display_startup_errors', 1);

error_reporting(E_ALL);

$action = $_REQUEST['action'];

$data = [
    'id_carrito' => "{$_REQUEST['id_carrito']}",
    'id_producto' => "{$_REQUEST['id_producto']}",
    'cantidad' => "{$_REQUEST['cantidad']}",
    'id_user' => "{$_REQUEST['id_user']}",
];

echo $action($data,$conexion);


function eliminar_producto_carrito($data,$conexion){


    $fecha = date('d-m-Y h:i');

    // Quitar producto del carrito para el cliente

    $quitar = "UPDATE carrito SET deleted = '1' , modificado_por = '{$data['id_user']}', creado_por = '', fecha_modificado = '{$fecha}' WHERE id = '{$data['id_carrito']}' and id_usuario   = '{$data['id_user']}'";

        if (mysqli_query($conexion, $quitar)) {
            // echo "Los datos han sido guardados correctamente.";
            $actualiza_producto = "UPDATE productos SET cantidad = cantidad + {$data['cantidad']},modificado_por = '{$data['id_user']}',fecha_modificado = '{$fecha}' WHERE id = '{$data['id_producto']}' ";
            $guardado_producto = mysqli_query($conexion, $actualiza_producto);

            if ($guardado_producto) {
                $actualiza_producto2 = "UPDATE cantidad_productos  SET deleted = '0' WHERE id_producto = '{$data['id_producto']}' AND deleted = 1 LIMIT {$data['cantidad']}";
                $guardado_producto2 = mysqli_query($conexion, $actualiza_producto2);

                return "exitoso id {$data['id_carrito']}";

            }else{
                $mensaje = "Fallido {$actualiza_producto}";
            }


        } else {
            // echo "Error al guardar los datos: ".$crear . mysqli_error($conexion);
    
            return "fallido {$quitar}";
    
    
        }
}



function agregar_carrito($data,$conexion){


    $fecha = date('d-m-Y h:i');

        // Crear producto en carrito para cliente 

        $crear = "INSERT INTO carrito (id,id_usuario,id_producto,fecha_creacion,creado_por,modificado_por,fecha_modificado,deleted,cantidad) VALUES ('0','{$data['id_user']}','{$data['id_producto']}', '{$fecha}','{$data['id_user']}','','', 0,'{$data['cantidad']}')";



        // Insertar datos en la base de datos
        
        
        
    
        
        if (mysqli_query($conexion, $crear)) {
            // echo "Los datos han sido guardados correctamente.";
            $actualiza_producto = "UPDATE productos SET modificado_por = '{$data['id_user']}',fecha_modificado = '{$fecha}' WHERE id = '{$data['id_producto']}' ";
            $guardado_producto = mysqli_query($conexion, $actualiza_producto);

            if ($guardado_producto) {
                $actualiza_producto2 = "UPDATE cantidad_productos  SET deleted = '1' WHERE id_producto = '{$data['id_producto']}' AND deleted = 0 LIMIT {$data['cantidad']}";
                $guardado_producto2 = mysqli_query($conexion, $actualiza_producto2);


                    $actualiza_producto3 = "UPDATE productos SET cantidad = cantidad - {$data['cantidad']} WHERE id = '{$data['id_producto']}' ";
                    $guardado_producto3= mysqli_query($conexion, $actualiza_producto3);

                 $actualiza_producto3;

            }else{

            }


            return "exitoso";
        } else {
            // echo "Error al guardar los datos: ".$crear . mysqli_error($conexion);
            echo (mysqli_query($conexion, $crear));
            return "fallido";
            
    
    
        }
        



}




?>