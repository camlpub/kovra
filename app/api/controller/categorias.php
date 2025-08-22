<?php

function listar($conexion)
{
    $sql = "SELECT * FROM categorias WHERE is_parent = 1 ORDER BY date_entered DESC LIMIT 3";
    $result = $conexion->query($sql);

    if ($result === false) {
        header('HTTP/1.1 500 Error en la consulta');
        die("Error SQL: " . $conexion->error);
    }

    $categorias = [];

    while ($padre = $result->fetch_assoc()) {
        $id_padre = $padre['id'];

        // Subcategorías
        $sub_sql = "SELECT * FROM categorias WHERE parent_category_id = '{$id_padre}'";
        $sub_result = $conexion->query($sub_sql);

        $subcategorias = [];

        if ($sub_result !== false) {
            while ($sub = $sub_result->fetch_assoc()) {
                $subcategorias[] = $sub;
            }
        }

        $padre['subcategorias'] = $subcategorias;
        $categorias[] = $padre;
    }

    echo json_encode($categorias);
}



function insertarCategoria( $data,$conexion)
{
    // Recibir los datos como en SuiteCRM
    $id = $data['id'];
    $name = $data['name'];
    $description = $data['description'] ?? '';
    $is_parent = $data['is_parent'] ?? 0;
    $parent_category_id = $data['parent_category_id'] ?? null;
    $date_entered = $data['date_entered'] ?? date('Y-m-d H:i:s');

    $stmt = $conexion->prepare("INSERT INTO categorias (id, name, description, is_parent, parent_category_id, date_entered)
                                    VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssiss", $id, $name, $description, $is_parent, $parent_category_id, $date_entered);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Categoría insertada correctamente.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al insertar: ' . $stmt->error]);
    }

    $stmt->close();
}


function actualizarCategoria( $data,$conexion)
{
    // El ID debe venir para identificar el registro a actualizar
    if (!isset($data['id'])) {
        http_response_code(400);
        echo json_encode(['success' => false, 'error' => 'Falta el ID para actualizar.']);
        return;
    }

    $id = $data['id'];
    $name = $data['name'];
    $description = $data['description'] ?? '';
    $is_parent = $data['is_parent'] ?? 0;
    $parent_category_id = $data['parent_category_id'] ?? null;
    $date_entered = $data['date_entered'] ?? date('Y-m-d H:i:s');

    $stmt = $conexion->prepare("UPDATE categorias SET name = ?, description = ?, is_parent = ?, parent_category_id = ?, date_entered = ? WHERE id = ?");
    $stmt->bind_param("ssisss", $name, $description, $is_parent, $parent_category_id, $date_entered, $id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Categoría actualizada correctamente.']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => 'Error al actualizar: ' . $stmt->error]);
    }

    $stmt->close();
}



function listarCategorias($data, $conexion)
{
    $sql = "SELECT * FROM categorias WHERE is_parent = 1 ORDER BY date_entered DESC";
    $result = $conexion->query($sql);

    if ($result === false) {
        header('HTTP/1.1 500 Error en la consulta');
        die("Error SQL: " . $conexion->error);
    }

    $categorias = [];

    while ($padre = $result->fetch_assoc()) {
        $categorias[] = $padre;

    }

    echo json_encode($categorias);
}