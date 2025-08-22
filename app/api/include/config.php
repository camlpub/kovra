<?php 





  
    $host = "localhost";
    $usuario = "root";
    $contrasena = "";
    $baseDeDatos = "api";
    $conexion = new mysqli($host, $usuario, $contrasena, $baseDeDatos);
    
    
    if (!$conexion) {
        die("Error al conectar con la base de datos: " . mysqli_connect_error());
    }





?>