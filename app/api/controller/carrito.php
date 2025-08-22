<?php

function agregarAlCarrito($data, $conexion)
{
    if (!isset($data['id_cliente']) || !isset($data['id_producto'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Faltan parámetros id_cliente o id_producto.']);
        return;
    }

    $id_cliente = $data['id_cliente'];
    $id_producto = $data['id_producto'];
    $cantidad = $data['cantidad'] ?? 1;

    $stmt = $conexion->prepare("INSERT INTO carrito (id_cliente, id_producto, cantidad) VALUES (?, ?, ?)
                                ON DUPLICATE KEY UPDATE cantidad = cantidad + VALUES(cantidad)");

    if (!$stmt) {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error en prepare(): ' . $conexion->error]);
        return;
    }

    $stmt->bind_param("iii", $id_cliente, $id_producto, $cantidad);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Producto agregado al carrito.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al insertar: ' . $stmt->error]);
    }

    $stmt->close();
}


function listarCarrito($id_cliente, $conexion)
{
    $stmt = $conexion->prepare("SELECT c.id, c.cantidad, p.nombre, p.precio, p.url_imagen 
                                FROM carrito c 
                                JOIN productos_page p ON c.id_producto = p.id 
                                WHERE c.id_cliente = ?");
    $stmt->bind_param("i", $id_cliente);

    if ($stmt->execute()) {
        $result = $stmt->get_result();
        $items = [];
        while ($row = $result->fetch_assoc()) {
            $items[] = $row;
        }
        echo json_encode(['success' => true, 'carrito' => $items]);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al consultar carrito: ' . $stmt->error]);
    }

    $stmt->close();
}


function eliminarDelCarrito($data, $conexion)
{
    if (!isset($data['id'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta el ID del item del carrito.']);
        return;
    }

    $id = $data['id'];
    $stmt = $conexion->prepare("DELETE FROM carrito WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Item eliminado del carrito.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al eliminar: ' . $stmt->error]);
    }

    $stmt->close();
}

?>
