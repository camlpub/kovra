<?php


$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => 'http://localhost/kovra/?controller=estado&action=ver',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json'
    ),
));

$response = curl_exec($curl);
curl_close($curl);



// Decodificar la respuesta JSON
$estado = json_decode($response, true);

$dato_estado = $estado[0]['estado'];


if ($dato_estado === 'activo') {
    # code...
    $fail_blu = 1;
}else{
    $fail_blu =  0;


}


?>