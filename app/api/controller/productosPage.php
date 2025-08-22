<?php

function insertarProducto($data, $conexion)
{
    $url_imagen = $data['url_imagen'] ?? '';
    $fecha_creacion = $data['fecha_creacion'] ?? date('Y-m-d');
    $deleted = $data['deleted'] ?? 0;

    $stmt = $conexion->prepare("INSERT INTO productos_page (url_imagen, fecha_creacion, deleted) VALUES (?, ?, ?)");

    if (!$stmt) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error en prepare(): ' . $conexion->error]);
        return;
    }

    $stmt->bind_param("ssi", $url_imagen, $fecha_creacion, $deleted);

    if ($stmt->execute()) {
        $id_producto = $stmt->insert_id; // ID generado
        echo json_encode(['success' => true, 'message' => 'Producto insertado correctamente.', 'id' => $id_producto, 'url_imagen' => $url_imagen]);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al insertar: ' . $stmt->error]);
    }

    $stmt->close();
}


function actualizarProducto($data, $conexion)
{
    if (!isset($data['archivo'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta el ID del producto para actualizar.']);
        return;
    }

    $id_crm = $data['id_crm'];
    $nombre = $data['nombre'] ?? '';
    $id_categoria = $data['id_categoria'] ?? null;
    $tipo_producto = $data['tipo_producto'] ?? '';
    $tono = $data['tono'] ?? '';
    $talla = $data['talla'] ?? '';
    $precio = $data['precio'] ?? null;
    $descripcion = $data['descripcion'] ?? '';
    $url_imagen = $data['archivo'] ?? '';

    var_dump($id_crm, $nombre, $id_categoria, $tipo_producto, $tono, $talla, $precio, $descripcion, $url_imagen);
    $stmt = $conexion->prepare("UPDATE productos_page 
        SET id_crm = ?, nombre = ?, id_categoria = ?, tipo_producto = ?, tono = ?, talla = ?, precio = ?, descripcion = ?
        WHERE url_imagen = ?");

    if (!$stmt) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error en prepare(): ' . $conexion->error]);
        return;
    }

    $stmt->bind_param("ssssssiss", $id_crm ,$nombre, $id_categoria, $tipo_producto, $tono, $talla, $precio, $descripcion, $url_imagen);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Producto actualizado correctamente.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al actualizar: ' . $stmt->error]);
    }

    $stmt->close();
}



function editarProducto($data, $conexion)
{
    if (!isset($data['id_crm'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta el ID del producto para actualizar.']);
        return;
    }

    $id_crm = $data['id_crm'];
    $nombre = $data['nombre'] ?? '';
    $id_categoria = $data['id_categoria'] ?? null;
    $tipo_producto = $data['tipo_producto'] ?? '';
    $tono = $data['tono'] ?? '';
    $talla = $data['talla'] ?? '';
    $precio = $data['precio'] ?? null;
    $descripcion = $data['descripcion'] ?? '';

    $stmt = $conexion->prepare("UPDATE productos_page 
        SET  nombre = ?, id_categoria = ?, tipo_producto = ?, tono = ?, talla = ?, precio = ?, descripcion = ?
        WHERE id_crm = ?");

    if (!$stmt) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error en prepare(): ' . $conexion->error]);
        return;
    }

    $stmt->bind_param("sssssiss" ,$nombre, $id_categoria, $tipo_producto, $tono, $talla, $precio, $descripcion, $id_crm);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Producto actualizado correctamente.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al actualizar: ' . $stmt->error]);
    }

    $stmt->close();
}


function eliminarProducto($data, $conexion)
{
    if (!isset($data['id'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta el ID del producto para eliminar.']);
        return;
    }

    $id = $data['id'];
    // Eliminación lógica (deleted = 1)
    $stmt = $conexion->prepare("UPDATE productos_page SET deleted = 1 WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Producto eliminado correctamente.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al eliminar: ' . $stmt->error]);
    }
}


function query($data,$conexion){
    if (!isset($data['query'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta la consulta SQL.']);
        return;
    }

    $query = $data['query'];
    $result = $conexion->query($query);

    if ($result === false) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error SQL: ' . $conexion->error]);
        return;
    }
    $productos_page = [];
    while ($row = $result->fetch_assoc()) {
        $productos_page[] = $row;
    }
    echo json_encode(['success' => true, 'productos_page' => $productos_page]);
    $result->free();
    $conexion->close();
    return;
}


function listar($conexion)
{
    $sql = "SELECT * FROM productos_page WHERE deleted = 0 ORDER BY fecha_creacion DESC";
    $result = $conexion->query($sql);

    if ($result === false) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error SQL: ' . $conexion->error]);
        return;
    }

    $productos_page = [];
    while ($row = $result->fetch_assoc()) {
        $productos_page[] = $row;
    }

    echo json_encode(['success' => true, 'productos_page' => $productos_page]);
}

?>
