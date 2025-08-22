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


// function actualizar($datos,$conexion,$url){

//     $fecha = date('d-m-Y H:i');

//     $_POST['fecha_modificado'] = $fecha;


//     $id = $_GET['id'];    
//     $columnas = implode(", ", array_keys($datos));
//     $valores = "'" . implode("', '", $datos) . "'";

//     $columnas_valores = [];
//     foreach ($datos as $columna => $valor) {
//         $columnas_valores[] = "{$columna} = '{$valor}'";
//     }
    
//     $columnas_valores_str = implode(", ", $columnas_valores);    


//     $actualizar = "UPDATE usuario SET  {$columnas_valores_str}  WHERE id = '{$id}' ";


//     // echo $actualizar;    


//     if (mysqli_query($conexion, $actualizar)) {
//         // echo "Los datos han sido guardados correctamente.";

//         echo "
//         <script>

//             // Obtener el valor del campo de entrada
//             var url = '".$url."?view=user';
            
//             // Redireccionar a la URL especificada
//             window.location.href = url;


//         </script>
        
//         ";

//         return "exitoso";


//     } else {


//         return "fallido";
        


//     }





// }



function crear($datos,$conexion,$url){

    $fecha = date('d-m-Y H:i');

    $_POST['fecha_creacion'] = $fecha;

    $id = $_GET['id'];    
    $id_productos = $_POST['id_producto'];
    $cantidad_productos = $_POST['cantidad_producto'];
    
    // Crear un nuevo array para almacenar los elementos no vacíos
    $id_total_productos = array();
    
    $total_general_precio = 0;
    
 
    $id_productos = $_POST['id_producto'];
    $cantidad_productos = $_POST['cantidad_producto'];
    $id_carrito = $_POST['id_carrito'];

    // Crear un nuevo array para almacenar los elementos no vacíos
    $id_total_productos = array();
    
    $total_general_precio = 0;
    
    for ($i = 0; $i < count($id_productos); $i++) {
        // Verificar si el elemento no está en blanco ('')
        if ($id_productos[$i] !== '') {
            // Si el elemento no está en blanco, agregarlo al nuevo array
            $id_total_productos[] = $id_productos[$i];
            $cantidad_total_productos[] = $cantidad_productos[$i];
            $carrito_total_productos[] = $id_carrito[$i];

        }
    }
    
    // Convertir los arrays en cadenas separadas por comas
    $productos = implode(',', $id_total_productos);
    
    // Realizar la consulta SQL para obtener los precios de los productos
    $buscar_productos = "SELECT id, precio FROM `productos` WHERE id IN ($productos)";
    
    // Ejecutar la consulta
    $resultado_buscar = $conexion->query($buscar_productos);
    
    // Verificar si hay resultados
    if ($resultado_buscar->num_rows > 0) {
        // Obtener el resultado y calcular el total para cada producto
        while ($row = $resultado_buscar->fetch_assoc()) {
            $id_producto = $row['id'];
            $precio_producto = $row['precio'];
    
            // Buscar la cantidad correspondiente al producto actual
            $indice_cantidad = array_search($id_producto, $id_total_productos);
            $cantidad_producto = intval($cantidad_total_productos[$indice_cantidad]);
    
            // Calcular el total para el producto actual
            $total_producto = $precio_producto * $cantidad_producto;
    
            // Agregar el total al total general
            $total_general_precio += $total_producto;
    
            echo "Total de precios de los productos seleccionados: " . $total_general_precio . " precio producto: " . $precio_producto . " cantidad: " . $cantidad_producto;
        }
    } else {
        echo "No se encontraron resultados.";
    }
    
    
    
    // Realizar la consulta SQL para obtener los precios de los productos
  

        # code...
  

    $comentario = $_POST['comentario'];

    $crear = "INSERT INTO pedidos (id,total,comentario,id_usuario_creacion,fecha_creacion,modificado_por,deleted,condiciones) VALUES ('',$total_general_precio,'$comentario',$id,'$fecha',$id,0,true)";

    echo $crear;

    if (mysqli_query($conexion, $crear)) {
        // echo "Los datos han sido guardados correctamente.";

        // Obtener el ID generado por la inserción
        $id_pedido = mysqli_insert_id($conexion);

        for ($i=0; $i < count($id_total_productos); $i++) { 
            # code...
            $crear_producto_pedido = "INSERT INTO pedidos_detalle (id,id_pedido,id_producto,cantidad,id_carrito,id_usuario_creacion,fecha_creacion,modificado_por,deleted) VALUES ('',$id_pedido,$id_total_productos[$i],$cantidad_total_productos[$i],$carrito_total_productos[$i],$id,'$fecha',$id,0)";

            if (mysqli_query($conexion, $crear_producto_pedido)) {

                echo "Id producto detalle creado".$crear_producto_pedido;

                $actualizar_estado_carrito = "UPDATE carrito SET deleted = 1 WHERE id = $carrito_total_productos[$i]";

                $result_actualizar = mysqli_query($conexion, $actualizar_estado_carrito);

            }else{
                echo "No se logro";
            }

        }


        echo "
        <script>

            // Obtener el valor del campo de entrada
            var url = '".$url."/page/?view=orden_compra&order=".$id_pedido."';
            
            // Redireccionar a la URL especificada
            window.location.href = url;


        </script>
        
        ";

        return "exitoso";


    } else {


        return "fallido";
        


    }




    
}


function actualizar($datos,$conexion,$url){

}




$respuesta= $action($datos,$conexion,$url);


echo $respuesta;


?>