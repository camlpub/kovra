<?php 


    function ver($datos,$conexion){

        $sql = "SELECT * FROM crm ";
        $result = $conexion->query($sql);


        $estados = [];

        while ($datos_sql = $result->fetch_assoc()) {

            if($datos_sql['estado'] == 0){
                $estados[] = [
                    'estado' => 'activo'
                ];
            }else{
                $estados[] = [
                    'estado' => 'inactivo'
                ];
            }


        }

        header('HTTP/1.1 201 Created');
   
        echo json_encode($estados);
    }



?>