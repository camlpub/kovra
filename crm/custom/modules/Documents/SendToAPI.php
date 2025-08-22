<?php

class EnviarImagenBanner
{
    public function enviar($bean, $event, $arguments)
    {
        $GLOBALS['log']->fatal('[BannerHook] Ejecutando hook after_save en Documents');

        // echo "Hook iniciado";
        // echo "<pre>";
        // var_dump($bean);
        // echo "</pre>";


        //Actuliza el dato del banner hacia que vista se enviara, categoria o tambien puede ser home

        $nombre = $bean->document_name;
        $tipo = $bean->template_type; 



        if($tipo == 'banner'){
            if($bean->category_id == ""){
                $tipo = 'home';
            }else{
                $tipo = 'categoria';
                $id_categoria = $bean->category_id;
            }
            
            $this->actualiar_banner($nombre, $tipo, $id_categoria);

        }else{
            $this->eliminar_banner($nombre);
        }

        

    }

    
    public function actualiar_banner($bean,$event, $arguments){
        $data = [
            'parameters' => [
                'nombre' => $nombre,
                'url' => $nombre,
                'tipo' => $tipo,
                'id_categoria' => $id_categoria,
                'activo' => 1,
            ],
        ];  

        $url = 'http://localhost/kovra_ultimo/app/api/?controller=banners';
        $jsonData = json_encode($data);
        $action = 'actualizarBanner';
        $url = $url . '&action=' . $action; 
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
        curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonData);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json'
        ));
        $response = curl_exec($ch);
        if (curl_errno($ch)) {
            $error_msg = curl_error($ch);
            echo "❌ Error al enviar a la API: $error_msg";
        } else {
            echo "✅ Respuesta de la API: $response";
        }
        curl_close($ch);
    }

    private function saveToDB($data)
    {
        global $db;

        $GLOBALS['log']->fatal('[BannerHook] Guardando registro en la tabla banners');

        $id = create_guid();
        $nombre = $db->quote($data['nombre']);
        $url = $db->quote($data['url']);
        $activo = (int)$data['activo'];

        $query = "INSERT INTO banners (id, nombre, url, activo)
                  VALUES ('$id', $nombre, $url, $activo)";

        $GLOBALS['log']->fatal('[BannerHook] Ejecutando SQL: ' . $query);

        try {
            $db->query($query);
            $GLOBALS['log']->fatal('[BannerHook] Registro guardado correctamente en la tabla banners');
        } catch (Exception $e) {
            $GLOBALS['log']->fatal('[BannerHook] Error al guardar en la tabla banners: ' . $e->getMessage());
        }
    }

    public function eliminar_banner($nombre){
        
        $data = [
            'parameters' => [
                'nombre' => $nombre,
            ],
        ];
        $url = 'http://localhost/kovra_ultimo/app/api/?controller=banners';
        $jsonData = json_encode($data);
        $action = 'eliminarBanner';
        $url = $url . '&action=' . $action;

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
            echo "❌ Error al enviar a la API: $error_msg";
        } else {
            echo "✅ Respuesta de la API: $response";
        }

        curl_close($ch);
        exit("nuevo");

    }

    public function eliminar_bannerHook($bean, $event, $arguments){
        
        $data = [
            'parameters' => [
                'nombre' => $bean->document_name,
            ],
        ];

        $url = 'http://localhost/kovra_ultimo/app/api/?controller=banners';
        $jsonData = json_encode($data);
        $action = 'eliminarBanner';
        $url = $url . '&action=' . $action;

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
            echo "❌ Error al enviar a la API: $error_msg";
        } else {
            echo "✅ Respuesta de la API: $response";
        }

        curl_close($ch);

    }


}
