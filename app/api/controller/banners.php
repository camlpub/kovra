<?php 


function insertarBanner($data, $conexion)
{
    var_dump($data); // Para verificar los datos recibidos

    $nombre = $data['nombre'];
    $url = $data['url'];
    $activo = $data['activo'] ?? 1;
    $date_entered = $data['date_entered'] ?? date('Y-m-d H:i:s');

    // Preparar la consulta
    $stmt = $conexion->prepare("INSERT INTO banners (nombre, url, activo, date_entered)
                                VALUES (?, ?, ?, ?)");

    // Verificar si prepare falló
    if (!$stmt) {
        http_response_code(500);
        echo json_encode([
            'success' => false,
            'error' => 'Error en prepare(): ' . $conexion->error
        ]);
        return;
    }

    // Corregir tipos: nombre (string), url (string), activo (int), date_entered (string)
    $stmt->bind_param("ssis", $nombre, $url, $activo, $date_entered);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Banner insertado correctamente.','nombre' => $nombre]);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al insertar: ' . $stmt->error]);
    }

    $stmt->close();
}




function actualizarBanner($data, $conexion)
{
    if (!isset($data['nombre'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta el ID para actualizar.']);
        return;
    }

    $nombre = $data['nombre'] ?? '';
    $activo = $data['activo'] ?? 1;
    $tipo = $data['tipo'] ?? '';
    $id_categoria = $data['id_categoria'] ?? null;

    $stmt = $conexion->prepare("UPDATE banners 
        SET nombre = ?, activo = ?, tipo = ?, id_categoria = ? 
        WHERE nombre = ?");

    if (!$stmt) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error en prepare: ' . $conexion->error]);
        return;
    }

    // Tipos: nombre (s), activo (i), tipo (s), id_categoria (i), id (i)
    $stmt->bind_param("sisss", $nombre, $activo, $tipo, $id_categoria, $nombre);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Banner actualizado correctamente.'.' categproa: ' . $id_categoria]);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al actualizar: ' . $stmt->error]);
    }

    $stmt->close();
}


function eliminarBanner($data, $conexion){
    if (!isset($data['nombre'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta el nombre para eliminar.']);
        return;
    }


    $nombre = $data['nombre'];

    $stmt = $conexion->prepare("DELETE FROM banners WHERE nombre = ?");
    $stmt->bind_param("s", $nombre);
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Banner eliminado correctamente.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al eliminar: ' . $stmt->error]);
    }
}



function listar($conexion)
{
    $sql = "SELECT * FROM banners WHERE activo = 1 ORDER BY date_entered DESC";
    $result = $conexion->query($sql);

    if ($result === false) {
        header('HTTP/1.1 500 Error en la consulta');
        die("Error SQL: " . $conexion->error);
    }

    $banners = [];

    while ($row = $result->fetch_assoc()) {
        $banners[] = $row;
    }

    echo json_encode($banners);
}


?>

