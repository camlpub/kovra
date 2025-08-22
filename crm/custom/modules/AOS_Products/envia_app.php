<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2018 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */



#[\AllowDynamicProperties]
class envia_datos extends AOS_Products
{
    public $module = 'AOS_Products';
    public function generar($bean, $event, $arguments)
    {

        $logger = LoggerManager::getLogger();

        // Añadir mensaje de prueba al log
        // $logger->error("Logic hook ejecutado en el módulo: {$this->module}");
        // $logger->fatal("Detalles del Bean: " . print_r($bean->toArray(), true));

        
        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => 'http://localhost/kovra_ultimo/api/?controller=productos&action=crear',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS =>'{
            "parameters": {
                "nombre": "'.$bean->name.'",
                "descripcion": "'.$bean->description.'",
                "precio": "'.$bean->price.'",
                "id_crm": "'.$bean->id.'"
            }
        }',
        CURLOPT_HTTPHEADER => array(
            'Content-Type: application/json'
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        echo $response;

    }



    public function actualizarProducto($bean, $event, $arguments){



        if(!isset($_POST['uploadedFileName']) || empty($_POST['uploadedFileName'])) {
            

            $curl = curl_init();

            curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://localhost/kovra_ultimo/app/api/?controller=productosPage&action=editarProducto',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS =>'{
                "parameters": {
                        "nombre": "'.$bean->name.'",
                        "id_categoria": "'.$bean->aos_product_category_id.'",
                        "tipo_producto": "'.$bean->type.'",
                        "tono": "'.$bean->tono_c.'",
                        "talla": "'.$bean->talla_c.'",
                        "precio": "'.$bean->price.'",
                        "descripcion": "'.$bean->description.'",
                        "id_crm": "'.$bean->id.'"
                }
            }',
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
            ));

            $response = curl_exec($curl);

            curl_close($curl);
            echo $response;

            var_dump($response);


        }else{

            
            
            $curl = curl_init();

            curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://localhost/kovra_ultimo/app/api/?controller=productosPage&action=actualizarProducto',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS =>'{
                "parameters": {
                        "archivo": "'.$_POST['uploadedFileName'].'",
                        "nombre": "'.$bean->name.'",
                        "id_categoria": "'.$bean->aos_product_category_id.'",
                        "tipo_producto": "'.$bean->type.'",
                        "tono": "'.$bean->tono_c.'",
                        "talla": "'.$bean->talla_c.'",
                        "precio": "'.$bean->price.'",
                        "descripcion": "'.$bean->description.'",
                        "id_crm": "'.$bean->id.'"
                }
            }',
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
            ));

            $response = curl_exec($curl);

            curl_close($curl);
            echo $response;

            var_dump($response);
        }
    }



}


?>