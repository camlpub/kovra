<?php 





    $url = "https://tomsom.co/tomsom/";


    // Conexión a la base de datos
    $host = "localhost";
    $usuario = "root";
    $contraseña = "";
    $baseDeDatos = "tomsom_ultimo";
    $conexion = mysqli_connect($host, $usuario, $contraseña, $baseDeDatos);

    // Verificar conexión
    if (!$conexion) {
        die("Error al conectar con la base de datos: " . mysqli_connect_error());
    }

    


    


?>