<?php
// Configuración del servidor FTP
$ftp_host = "localhost"; // o la IP de tu servidor
$ftp_user = "admin";
$ftp_pass = "123";
$ftp_dir  = "/productos"; // carpeta destino en el servidor FTP

if (isset($_FILES['archivo'])) {
    $tmp_file = $_FILES['archivo']['tmp_name'];
    $file_name = basename($_FILES['archivo']['name']);

    $fecha_complemento = date("d_m_y_h_i_s");
    $file_name = $fecha_complemento . "_" . $file_name;

    // Conexión FTP
    $ftp_conn = ftp_connect($ftp_host);
    if (!$ftp_conn) {
        die("❌ No se pudo conectar al servidor FTP.");
    }

    $login = ftp_login($ftp_conn, $ftp_user, $ftp_pass);
    if (!$login) {
        ftp_close($ftp_conn);
        die("❌ Falló el login FTP.");
    }

    ftp_pasv($ftp_conn, true); // modo pasivo

    // Subir archivo
    $remote_path = $ftp_dir . "/" . $file_name;
    if (ftp_put($ftp_conn, $remote_path, $tmp_file, FTP_BINARY)) {
        // echo "✅ Archivo subido correctamente a $remote_path";
    } else {
        echo "❌ Error al subir el archivo.";
    }

    ftp_close($ftp_conn);
} else {
    echo "⚠️ No se recibió ningún archivo.";
}


subir_archivo($file_name);


function subir_archivo($archivo){



        $data = [
            'parameters' => [
                'url_imagen' => $archivo,
            ],
        ];
        $url = 'http://localhost/kovra_ultimo/app/api/?controller=productosPage';
        $jsonData = json_encode($data);
        $action = 'insertarProducto';
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