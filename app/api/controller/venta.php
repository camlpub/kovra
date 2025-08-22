<?php 


    function ver($data,$conexion) {
        $id_usuario = $data['id_usuario'];
        
        
        // Consulta para obtener todas las ventas
        if($id_usuario != ''){
            $sqlVentas = "SELECT * FROM venta  WHERE id_crm = '{$id_usuario}' order by id desc";
        }else{
             $sqlVentas = "SELECT * FROM venta order by id desc";
        }
        
        
        $resultVentas = $conexion->query($sqlVentas);

        // Verificar si la consulta de ventas fue exitosa
        if ($resultVentas === false) {
            die("Error en la consulta SQL: " . $conexion->error);
        }

        $ventas = [];

        // Procesar cada venta
        while ($venta = $resultVentas->fetch_assoc()) {
            // Para cada venta, obtener los productos asociados
            $ventaId = $venta['id'];
            $sqlProductos = "SELECT p.id, p.nombre, p.descripcion, vp.precio_producto as precio, p.id_crm , vp.cantidad
                            FROM productos AS p
                            INNER JOIN venta_productos AS vp ON vp.id_producto = p.id
                            WHERE vp.id_venta = '$ventaId'";
                            
            $resultProductos = $conexion->query($sqlProductos);

            if ($resultProductos === false) {
                header('HTTP/1.1 500 Internal Server Error');
                echo json_encode(["status" => "error", "message" => "Error al registrar la venta: " . $conexion->error]);
            }

            // Crear un array para almacenar los productos de la venta actual
            $productos = [];

            while ($producto = $resultProductos->fetch_assoc()) {
                $productos[] = $producto;
            }

            // Añadir los productos y demás detalles de la venta al array
            $ventas[] = [
                'id' => $venta['id'],
                'nombre' => $venta['nombre'],
                'celular' => $venta['celular'],
                'direccion' => $venta['direccion'],
                'tipo' => $venta['tipo'],
                'observacion' => $venta['observacion'],
                'fecha_entrega' => $venta['fecha_entrega'],
                'fecha_creacion' => $venta['fecha_creacion'],
                'id_usuario' => $venta['id_crm'],
                'productos' => $productos
            ];
        }

        // Enviar respuesta en formato JSON
        header('HTTP/1.1 201 Created');
   
        echo json_encode($ventas);
    }



    function crear($data, $conexion) {
        ini_set('display_errors', 1);
error_reporting(E_ALL);
          // Ver los datos que llegan

        // Obtener los datos de la venta desde el JSON
        $nombre = $data['nombre'];
        $celular = $data['celular'];
        $direccion = $data['direccion'];
        $observaciones = $data['observaciones'];
        $fechaEntrega = $data['fechaEntrega'];
        $tipoVenta = $data['tipoVenta'];
        $productos = $data['producto'];  // Array de productos
        $id_usuario =$data['id_usuario'];
        

        // Insertar la venta en la tabla 'venta'
        $sqlVenta = "INSERT INTO `venta`(`nombre`, `celular`, `direccion`, `tipo`, `observacion`, `fecha_entrega`, `fecha_creacion`,`id_crm`,`total`)
                    VALUES ('$nombre', '$celular', '$direccion', '$tipoVenta', '$observaciones', STR_TO_DATE('$fechaEntrega', '%d/%m/%Y'), NOW(),'{$id_usuario}',0)";
        
        if ($conexion->query($sqlVenta) === TRUE) {
            // Obtener el ID de la venta recién insertada
            $idVenta = $conexion->insert_id;

            // Insertar cada producto en la tabla 'venta_productos'
            foreach ($productos as $producto) {
                $idProducto = $producto['id'];
                $cantidad = $producto['cantidad'];
                $precio = $producto['precio'];
                
                $sqlProducto = "INSERT INTO `venta_productos`(`id_venta`, `id_producto`,`cantidad`,`precio_producto`) VALUES ('$idVenta', '$idProducto','$cantidad',$precio)";
                if ($conexion->query($sqlProducto) === FALSE) {
                    echo "Error al insertar producto: " . $conexion->error;
                }
            }

            // Responder con éxito
            header('HTTP/1.1 201 Created');
            echo json_encode(["status" => "success", "message" => "Venta registrada exitosamente"]);
        } else {
            // Manejo de error en caso de fallo de inserción en la tabla 'venta'
            header('HTTP/1.1 200 Internal Server Error');
            echo json_encode(["status" => "error", "message" => "Error al registrar la venta: " . $conexion->error]);
        }
        
        
        header('HTTP/1.1 200 Created');

    }




?>