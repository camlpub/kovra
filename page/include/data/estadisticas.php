<?php

    error_reporting(0);

include('../config.php');


$action = $_REQUEST['action'];
$conexion = $conexion;


if($action == "ver"){

    vistas($conexion,$data);
    compras_realizadas($conexion,$data);  
    clientes($conexion,$data);


}else{
    echo "Hubo un error para mostrar la información";
}

function vistas($conexion,$data){

    ?>

        <div class="box">
            <h3>101,907</h3>
            <p>Vistas</p>
        </div>

    <?php

}


function compras_realizadas($conexion,$data){
    
    
    ?>

        <div class="box">
            <h3>1,430</h3>
            <p>Clientes</p>
        </div>

    <?php


}



function clientes($conexion,$data){

    ?>

        <div class="box">
            <h3>1,780</h3>
            <p>Compras realizadas</p>
        </div>

    <?php


}



?>