<?php

$hook_version = 1;
$hook_array = Array();

// Hook que se ejecuta al guardar (crear o actualizar)
$hook_array['after_save'][] = Array(
    1,
    'Enviar categoría a API externa',
    'custom/modules/AOS_Product_Categories/CategoryHooks.php',
    'CategoryHooks',
    'sendToExternalAPI'
);
