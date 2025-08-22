<?php


// $quoteBean->save(); // Guardar la cotización en SuiteCRM para generar su ID

// $GLOBALS['log']->fatal("Nueva cotización creada con ID: " . $quoteBean->id);

// Configurar y realizar la solicitud a la API para obtener los productos

global $current_user,$db;


$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => 'http://localhost/kovra/?controller=venta&action=ver',
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
$productsData = json_decode($response, true);

$db = DBManagerFactory::getInstance();

for ($i=0; $i < count($productsData); $i++) { 
    # code...


    $existe = "SELECT id FROM `aos_quotes` WHERE name = '".$productsData[$i]['id']."- App' and deleted = 0";
    $result = $db->query($existe);

    if ($db->getRowCount($result) > 0) {
        // Existe al menos un resultado
        echo "\n Existe '".$productsData[$i]['id']."- App'";
        
    }
    else
    {

        var_dump($productsData);

        // Variables para totales
        $totalAmount = 0;
        $discountTotal = 0;
        $taxTotal = 0;

        $cliente = BeanFactory::newBean('Accounts');
        $cliente->name = $productsData[$i]['nombre'];
        $cliente->phone_office = $productsData[$i]['celular'];
        $cliente->billing_address_street = $productsData[$i]['direccion'];
        
        $cliente->save();

        $clienteid = $cliente->id;

        echo $clienteid;

        // Crear una nueva cotización con los datos de la venta
        $quoteBean = BeanFactory::newBean('AOS_Quotes');
        $quoteBean->name = $productsData[$i]['id'].'- App';
        $quoteBean->status = 'On Hold';

        switch ($productsData[$i]['tipo']) {
            case 'Provincia':
                # code...
                $tipo = "provincia";
                break;
            case 'Interrapidisimo':
                # code...
                $tipo = "interrapidisimo";
                break;
            case 'Contra entrega sur':
                $tipo = "contra_sur";

                # code...
                break;
            case 'Contra entrega norte':
                # code...
                $tipo = "contra_norte";
                
                break;
            default:
                # code...
                $tipo = "";
                break;
        }

        $quoteBean->tipo_venta_c =$tipo;

        // Verificar si hay productos y datos de la venta en la respuesta
        if (isset($productsData[$i])) {

            $quoteBean->billing_account_id = $clienteid;
            // Agregar datos adicionales de la venta a la cotización
            $quoteBean->billing_address_street = $productsData[$i]['direccion'];
            $quoteBean->description = $productsData[$i]['observacion'];
            $quoteBean->fecha_entrega_c = $productsData[$i]['fecha_entrega'];
            $quoteBean->save(); // Guardar los cambios en la cotización

            $GLOBALS['log']->fatal("Datos de venta actualizados en la cotización.");

            // Cargar la relación entre la cotización y los productos
            $quoteBean->load_relationship('aos_products_quotes');

            // Iterar sobre cada producto y relacionarlo a la cotización usando el campo id_crm
            foreach ($productsData[$i]['productos'] as $product) {
                $productIdCrm = $product['id_crm'];
                
                if (!empty($productIdCrm)) {
                    // Obtener el bean del producto existente usando el id_crm
                    $productBean = BeanFactory::getBean('AOS_Products', $productIdCrm);
                    $GLOBALS['log']->fatal("Datos de productos recibidos de la API: " . print_r($productIdCrm, true));
                    
                    if ($productBean) {
                        // Crear el bean de AOS_Products_Quotes para asociar el producto con la cotización
                        $productQuoteBean = BeanFactory::newBean('AOS_Products_Quotes');
                        $productQuoteBean->name = $product['nombre'];
                        $productQuoteBean->description = $product['descripcion'];
                        $productQuoteBean->product_qty = $product['cantidad']; // Cantidad de producto
                        $productQuoteBean->product_cost_price = $product['precio'];
                        $productQuoteBean->product_list_price = $product['precio'];
                        $productQuoteBean->product_total_price = $product['precio'] * $product['cantidad']; // Total por cantidad
                        

                        // Actualizar los totales
                        $totalAmount += $product['precio'] *  $product['cantidad']; // Agregar al total
                        $discountTotal += $product['descuento'] ?? 0; // Agregar descuento
                        //$taxTotal += ($product['precio'] *); // Suponiendo 5% de impuesto, ajustar si es necesario

                        $productQuoteBean->assigned_user_id = $quoteBean->assigned_user_id;
                        $productQuoteBean->parent_id = $quoteBean->id;
                        $productQuoteBean->parent_type = 'AOS_Quotes';
                        
                        // Establecer la relación con el producto original mediante product_id
                        $productQuoteBean->product_id = $productBean->id; // ID del producto original en AOS_Products

                        // Guardar el bean de AOS_Products_Quotes y verificar en el log
                        $productQuoteBean->save();
                        $GLOBALS['log']->fatal("Producto agregado a la cotización con ID: " . $productQuoteBean->id);

                        // Agregar el bean de producto-cotización a la relación
                        $quoteBean->aos_products_quotes->add($productQuoteBean);
                        $GLOBALS['log']->fatal("Relación establecida entre la cotización y el producto ID: " . $productBean->id);
                    } else {
                        $GLOBALS['log']->fatal("No se encontró el producto con ID de CRM: " . $productIdCrm);
                    }
                }
            }

            // Actualizar totales en la cotización
            $quoteBean->total_amount = $totalAmount; // Total de la cotización
            $quoteBean->total_amt = $totalAmount; 
            $quoteBean->discount_amount = $discountTotal; // Descuento total
            //$quoteBean->tax_amount = $taxTotal; // Total de impuestos
            $quoteBean->grand_total = $totalAmount + $taxTotal - $discountTotal; // Gran total

            // Guardar la cotización final con los totales
            $quoteBean->save();
            $GLOBALS['log']->fatal("Totales calculados y cotización actualizada.");
            echo "Cotización y productos añadidos exitosamente.";
        }
    }
}

$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => 'http://localhost/kovra/?controller=pedido&action=estado',
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
$pedido = json_decode($response, true);
    

for ($i=0; $i < count($pedido); $i++) { 

    
    $existe = "SELECT a.id as id FROM aos_quotes a INNER JOIN aos_quotes_cstm ac ON a.id = ac.id_c 
    WHERE name = '".$pedido[$i]['id_venta']."- App' and deleted = 0 AND (ac.estado_entrega_c IS NULL OR ac.estado_entrega_c != 'Entregado')";
    $result = $db->query($existe);

    
    while ($row = $db->fetchByAssoc($result)) {
        # code...

        
        $update = "UPDATE aos_quotes_cstm SET estado_entrega_c = '".$pedido[$i]['estado']."' 
        WHERE id_c = '".$row['id']."'";
        $result_update = $db->query($update);
        


    }

}

// Confirmación final




?>
