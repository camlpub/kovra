<?php 





    function listar($conexion){


        $sql = "SELECT * FROM categoria_tienda";
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


    function ver($id,$conexion){

    }


    function eliminar($id,$conexion){

    }

    function editar($id,$conexion){



    }

    function login($data,$conexion){
        $username = $data['usuario'];
        $contra = $data['contra'];
        $sql = "SELECT * FROM usuarios WHERE usuario = '{$username}' and contra = '{$contra}'";
        $result = $conexion->query($sql);
    
        if ($result === false) {
            // Si la consulta fall車, muestra un error y termina la ejecuci車n
            die("Error en la consulta SQL: " . $conexion->error);

        }

        $datos = [];

    
        // Si no hay errores, procesa los resultados
        while($row = $result->fetch_assoc()) {

            $datos[] = $row;

            if($row['id'] != ''){
                header('HTTP/1.1 203 usuario no encontrado');
            }else{
                header('HTTP/1.1 203 usuario no encontrado');
            }
            
        }

        echo json_encode($datos);
    }





?>