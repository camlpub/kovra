<?php

class CategoryHooks
{
    public function sendToExternalAPI($bean, $event, $arguments)
    {
        // Preparar los datos del registro
        $data = [
            'parameters' => [
                'id' => $bean->id,
                'name' => $bean->name,
                'description' => $bean->description,
                'is_parent' => $bean->is_parent,
                'parent_category_id' => $bean->parent_category_id,
                'date_entered' => $bean->date_entered,
            ],
        ];



        $jsonData = json_encode($data);

        $id_nuevo = $_POST['record'];
        if ($id_nuevo == '' or $id_nuevo == null) {
        
            $action = 'insertarCategoria';

        }else{
            $action = 'actualizarCategoria';
        }



        // Determinar si es creación o edición

        $url = 'http://localhost/kovra_ultimo/app/api/?controller=categorias';

        $url = $url . '&action=' . $action;

        $GLOBALS['log']->fatal("Enviando categoría a API externa ($action): " . $jsonData);



        $ch = curl_init();

        curl_setopt_array($ch, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => $jsonData,
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            )
        ));

        $response = curl_exec($ch);

        if (curl_errno($ch)) {
            $error_msg = curl_error($ch);
            $GLOBALS['log']->fatal("Error al enviar categoría a API externa ($action): " . $error_msg);
        } else {
            $GLOBALS['log']->fatal("Respuesta API externa ($action): " . $response);
        }

        curl_close($ch);
    }
}
