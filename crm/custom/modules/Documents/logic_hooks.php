<?php

$hook_version = 1;
$hook_array = [];

$hook_array['after_save'][] = [
    1,
    'Enviar imagen a la API y guardar en banners',
    'custom/modules/Documents/SendToAPI.php',
    'EnviarImagenBanner',
    'enviar'
];

$hook_array['before_delete'][] = [
    1,
    'Eliminar banner de la API',    
    'custom/modules/Documents/SendToAPI.php',
    'EnviarImagenBanner',
    'eliminar_bannerHook'
];