<?php

function registrarCliente($data, $conexion)
{
    $nombre = $data['nombre'] ?? '';
    $email = $data['email'] ?? '';
    $telefono = $data['telefono'] ?? '';
    $direccion = $data['direccion'] ?? '';

    $stmt = $conexion->prepare("INSERT INTO clientes (nombre, email, telefono, direccion, fecha_creado) VALUES (?, ?, ?, ?, NOW())");

    if (!$stmt) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error en prepare(): ' . $conexion->error]);
        return;
    }

    $stmt->bind_param("ssss", $nombre, $email, $telefono, $direccion);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Cliente registrado correctamente.', 'id' => $stmt->insert_id]);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al registrar: ' . $stmt->error]);
    }

    $stmt->close();
}


function listarClientes($conexion)
{
    $sql = "SELECT * FROM clientes ORDER BY fecha_creado DESC";
    $result = $conexion->query($sql);

    if ($result === false) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error SQL: ' . $conexion->error]);
        return;
    }

    $clientes = [];
    while ($row = $result->fetch_assoc()) {
        $clientes[] = $row;
    }

    echo json_encode(['success' => true, 'clientes' => $clientes]);
}


function eliminarCliente($data, $conexion)
{
    if (!isset($data['id'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta el ID del cliente.']);
        return;
    }

    $id = $data['id'];
    $stmt = $conexion->prepare("DELETE FROM clientes WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Cliente eliminado correctamente.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al eliminar: ' . $stmt->error]);
    }

    $stmt->close();
}

?>
