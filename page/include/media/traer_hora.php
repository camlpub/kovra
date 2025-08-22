<?php

// URL del contenido HTML
$url = 'https://cursos.ciberaula.com/curso-de-comercio-electronico-e-commerce-22951-1.html';

// Cargar el contenido HTML
$html = file_get_contents($url);

// Crear un nuevo objeto DOMDocument
$dom = new DOMDocument;

// Suprimir errores de advertencia de HTML mal formado
libxml_use_internal_errors(true);

// Cargar el HTML
$dom->loadHTML($html);

// Restaurar la configuración de errores
libxml_clear_errors();

// Crear un objeto DOMXPath para realizar consultas
$xpath = new DOMXPath($dom);

// Buscar el elemento que contiene la duración
$element = $xpath->query('//div[@class="taButtons"]/strong');

// Verificar si se encontró el elemento
if ($element->length > 0) {
    // Obtener el texto del elemento
    $duracion = $element->item(0)->nodeValue;

    // Extraer solo el número
    preg_match('/\d+/', $duracion, $matches);
    $numeroHoras = $matches[0];

    // Mostrar el resultado
    echo "$numeroHoras";
} else {
    echo "No se encontró la duración del curso.";
}

?>