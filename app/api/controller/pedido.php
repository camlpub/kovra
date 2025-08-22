<?php 


    function ver($data,$conexion) {
        $body = file_get_contents('php://input');

        // Decodifica el JSON a un array asociativo
        $data = json_decode($body, true);
        $id_usuario = $data['id_usuario'];
        // Consulta para obtener todas las ventas
        $sqlVentas = "SELECT * FROM pedido pe INNER JOIN venta ve on pe.id_venta = ve.id WHERE pe.id_usuario = '{$id_usuario}'";
        $resultVentas = $conexion->query($sqlVentas);

        // Verificar si la consulta de ventas fue exitosa
        if ($resultVentas === false) {
            die("Error en la consulta SQL: " . $conexion->error);
        }

        $ventas = [];

        // Procesar cada venta
        while ($venta = $resultVentas->fetch_assoc()) {
            // Para cada venta, obtener los productos asociados
            $ventaId = $venta['id_venta'];
            $sqlProductos = "SELECT p.id, p.nombre, p.descripcion, vp.precio_producto as precio, vp.cantidad
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
                'estado' => $venta['estado'],
                'observacion' => $venta['observacion'],
                'fecha_entrega' => $venta['fecha_entrega'],
                'fecha_creacion' => $venta['fecha_creacion'],
                'total' => $venta['total'],
                'productos' => $productos
            ];
        }

        // Enviar respuesta en formato JSON
        header('HTTP/1.1 201 Created');
   
        echo json_encode($ventas);
    }

    function editar($data,$conexion){

        $id_pedido = $data['id_orden'];
        $estado_pedido = $data['estado'];


        $sql = "UPDATE pedido SET estado = '{$estado_pedido}' WHERE id_venta = '{$id_pedido}'";
        $result = $conexion->query($sql);

        if ($result === false) {
            header('HTTP/1.1 500 Internal Server Error');
            echo json_encode(["status" => "error", "message" => "Error al registrar la venta: " . $conexion->error]);
        }else{
            header('HTTP/1.1 201 Created');
        }

    }
    
    function estado($data,$conexion){

        $sql = "SELECT * FROM pedido WHERE estado != 'Asignado'";
        $result = $conexion->query($sql);
        
        
        $datos = [];

    
        // Si no hay errores, procesa los resultados
        while($row = $result->fetch_assoc()) {

            $datos[] = $row;
        }

        echo json_encode($datos);
    }

    function crear($data, $conexion) {
        $id_usuario = $data['id_usuario'];
        $id_venta = $data['id_venta'];
        $estado = 'Asignado';
    
        try {
            $sql = "INSERT INTO pedido (id,id_usuario, id_venta, estado) VALUES (0,'{$id_usuario}', '{$id_venta}', '{$estado}')";
            $result = $conexion->query($sql);
            
            if ($result === false) {
                header('HTTP/1.1 500 Internal Server Error');
                echo json_encode(["status" => "Error", "message" => "No se pudo insertar el pedido: " . $conexion->error, "query" => $sql]);
            } else {
                header('HTTP/1.1 201 Created');
                echo json_encode(["status" => "Ok", "message" => "Pedido ingresado ".$conexion->error, "id_venta" => $id_venta, "id_usuario" => $id_usuario]);
            }
        } catch (Exception $e) {
            header('HTTP/1.1 500 Internal Server Error');
            echo json_encode(["status" => "Error", "message" => "Excepción capturada: " . $e->getMessage()]);
        }
    }








?>