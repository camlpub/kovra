<?php 





    function listar($conexion){


        $sql = "SELECT * FROM productos";
        $result = $conexion->query($sql);
    
        if ($result === false) {
            // Si la consulta fall車, muestra un error y termina la ejecuci車n
            die("Error en la consulta SQL: " . $conexion->error);
        }

        $datos = [];

    
        // Si no hay errores, procesa los resultados
        while($row = $result->fetch_assoc()) {

            $datos[] = $row;
        }

        echo json_encode($datos);


    }

    function crear($data,$conexion){

        $nombre = $data['nombre'];
        $precio = $data['precio'];
        $descripcion = $data['descripcion'];
        $id_crm = $data['id_crm'];

        $sql = "INSERT INTO productos (nombre, descripcion, precio, id_crm) VALUES ('{$nombre}','{$descripcion}','{$precio}','{$id_crm}')";
        $result = $conexion->query($sql);

        if ($result === false) {
            // Si la consulta fall車, muestra un error y termina la ejecuci車n
            die("Error en la consulta SQL: " . $conexion->error);
        }else{
            header('HTTP/1.1 201 Created');
        }





    }


    ?>