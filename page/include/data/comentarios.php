<?php

include('../config.php');

    error_reporting(0);

$action = $_REQUEST['action'];




$data = $_REQUEST['data'];
$conexion = $conexion;


$data = [
    'nombre' => "{$_REQUEST['nombre']}",
    'correo' => "{$_REQUEST['correo']}",
    'id_user' => "{$_REQUEST['id_user']}",
    'calificacion' => "{$_REQUEST['calificacion']}",
    'descripcion' => "{$_REQUEST['descripcion']}"
];



if($action != '' or $action != null){


    if($action == 'crear'){

        if ($data['id_user'] != 0 or $data['id_user'] != '') {
            # code...
                $action = "existe_{$action}";
                $action($conexion,$data);
            
    
        }else{

            $action = "no_existe_{$action}";
            $action($conexion,$data);

            
        }

    }else{

        $action($conexion,$data);

    }

}else{

    echo "Error en llamado de datos";

}





function ver($conexion,$data){



    $sql_comentarios  = "SELECT * FROM comentarios WHERE activador=1 and deleted = 0 LIMIT 6";
    $result_comentarios = $conexion->query($sql_comentarios);

    if ($result_comentarios->num_rows > 0) {

        // Recorrer los resultados y crear filas y columnas HTML
        while($row = $result_comentarios->fetch_assoc())
        {




        
    ?>

        <div class="comentario">
            <img src="include/images/tomsom_logo.ico" style="border-radius: 10px; width: 10%;" alt="Imagen de usuario">
            <h3> <?php echo $row['nombre_cliente']; ?> </h3>
            <p><?php echo $row['descripcion']; ?></p>
            <div class="calificacion">
            

<?php      
            $calificacion = $row['calificacion'];        
        

        for ($i=0; $i < $calificacion ; $i++) { 
            # code...
        

?>


                <i uk-icon="star" alt="<?php echo $i; ?>"></i>


<?php     } ?>

                </div>
        </div>


    <?php
        
        }
    
        
    }else{
        echo "Aún no se cuenta con comentarios";
    }

}

function existe_crear($conexion,$data){



}


function no_existe_crear($conexion,$data){

    $fecha = date('d-m-Y h:i');


    // Crear comentario para cliente sin usuario

    $crear = "INSERT INTO comentarios (id,id_usuario_creacion,nombre_cliente,correo_cliente,descripcion,calificacion,fecha_creacion,modificado_por,fecha_modificado,deleted,activador,fecha_activado,titulo) VALUES ('0','0', '{$data['nombre']}','{$data['correo']}','{$data['descripcion']}','{$data['calificacion']}', '$fecha','0','0','0','0','0','')";


    
    // Insertar datos en la base de datos
    
    
    

    
    if (mysqli_query($conexion, $crear)) {
        // echo "Los datos han sido guardados correctamente.";
        $crear_usuario = "INSERT INTO usuario_sin_registrar (id,nombre_cliente,correo_cliente,fecha_creacion,publicidad,campañas) VALUES ('0','{$data['nombre']}','{$data['correo']}','{$fecha}','0','0')";
        $guardado = mysqli_query($conexion, $crear_usuario);

        return "exitoso";
    } else {
        // echo "Error al guardar los datos: ".$crear . mysqli_error($conexion);

        return "fallido";


    }
    

}




?>