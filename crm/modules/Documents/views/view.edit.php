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
class DocumentsViewEdit extends ViewEdit
{

    /**
     * @see SugarView::ViewEdit()
     */
    public function __construct()
    {
        parent::__construct();
        $this->useForSubpanel = true;
    }




    /**
     * @see SugarView::display()
     */
    public function display()
    {
        global $app_list_strings, $mod_strings;

        $load_signed=false;
        if ((isset($_REQUEST['load_signed_id']) && !empty($_REQUEST['load_signed_id']))) {
            $load_signed=true;
            if (isset($_REQUEST['record'])) {
                $this->bean->related_doc_id=$_REQUEST['record'];
            }
            if (isset($_REQUEST['selected_revision_id'])) {
                $this->bean->related_doc_rev_id=$_REQUEST['selected_revision_id'];
            }

            $this->bean->id=null;
            $this->bean->document_name=null;
            $this->bean->filename=null;
            $this->bean->is_template=0;
        } //if

        if (!empty($this->bean->id) ||
            (empty($this->bean->id) && !empty($_REQUEST['record']) && !empty($_REQUEST['action']) && strtolower($_REQUEST['action'])=='quickedit')
        ) {
            $this->ss->assign("FILE_OR_HIDDEN", "hidden");
            if (!$this->ev->isDuplicate) {
                $this->ss->assign("DISABLED", "disabled");
            }
        } else {
            $this->bean->revision = 1;
            $this->ss->assign("FILE_OR_HIDDEN", "file");
        }

        $popup_request_data = array(
            'call_back_function' => 'document_set_return',
            'form_name' => 'EditView',
            'field_to_name_array' => array(
                'id' => 'related_doc_id',
                'document_name' => 'related_document_name',
                ),
            );
        $json = getJSONobj();
        $this->ss->assign('encoded_document_popup_request_data', $json->encode($popup_request_data));


        //get related document name.
        if (!empty($this->bean->related_doc_id)) {
            $this->ss->assign("RELATED_DOCUMENT_NAME", (new Document())->get_document_name($this->bean->related_doc_id));
            $this->ss->assign("RELATED_DOCUMENT_ID", $this->bean->related_doc_id);
            if (!empty($this->bean->related_doc_rev_id)) {
                $this->ss->assign("RELATED_DOCUMENT_REVISION_OPTIONS", get_select_options_with_id((new DocumentRevision)->get_document_revisions($this->bean->related_doc_id), $this->bean->related_doc_rev_id));
            } else {
                $this->ss->assign("RELATED_DOCUMENT_REVISION_OPTIONS", get_select_options_with_id((new DocumentRevision)->get_document_revisions($this->bean->related_doc_id), ''));
            }
        } else {
            $this->ss->assign("RELATED_DOCUMENT_REVISION_DISABLED", "disabled");
        }


        //set parent information in the form.
        if (isset($_REQUEST['parent_id'])) {
            $this->ss->assign("PARENT_ID", $_REQUEST['parent_id']);
        } //if

        if (isset($_REQUEST['parent_name'])) {
            $this->ss->assign("PARENT_NAME", $_REQUEST['parent_name']);

            if (!empty($_REQUEST['parent_type'])) {
                switch (strtolower($_REQUEST['parent_type'])) {

                    case "contracts":
                        $this->ss->assign("LBL_PARENT_NAME", $mod_strings['LBL_CONTRACT_NAME']);
                        break;

                    //todo remove leads case.
                    case "leads":
                        $this->ss->assign("LBL_PARENT_NAME", $mod_strings['LBL_CONTRACT_NAME']);
                        break;
                } //switch
            } //if
        } //if

        if (isset($_REQUEST['parent_type'])) {
            $this->ss->assign("PARENT_TYPE", $_REQUEST['parent_type']);
        }

        if ($load_signed) {
            $this->ss->assign("RELATED_DOCUMENT_REVISION_DISABLED", "disabled");
            $this->ss->assign("RELATED_DOCUMENT_BUTTON_AVAILABILITY", "hidden");
            $this->ss->assign("LOAD_SIGNED_ID", $_REQUEST['load_signed_id']);
        } else {
            $this->ss->assign("RELATED_DOCUMENT_BUTTON_AVAILABILITY", "button");
        } //if-else


        $sql = "SELECT id, name FROM aos_product_categories WHERE deleted=0 and parent_category_id = '' ORDER BY name";
        $result = $this->bean->db->query($sql, true, "Error retrieving categories: ");
        $categories = array();

        while ($row = $this->bean->db->fetchByAssoc($result)) {
            $categories[] = [
                'id' => $row['id'],
                'name' => $row['name']
            ];
        }

        $categorias_json = json_encode($categories, JSON_UNESCAPED_UNICODE);

        echo '<script>
        document.addEventListener("DOMContentLoaded", function () {
            const select = document.getElementById("category_id");
            const categories = ' . $categorias_json . ';

            // 🔹 Vaciar todas las opciones actuales
            select.innerHTML = "";

            // 🔹 Agregar opción vacía como primera
            const emptyOption = document.createElement("option");
            emptyOption.value = "";
            emptyOption.label = "";
            emptyOption.selected = true;
            select.appendChild(emptyOption);

            if (Array.isArray(categories)) {
                categories.forEach(cat => {
                    const option = document.createElement("option");
                    option.value = cat.id;
                    option.textContent = cat.name;
                    option.label = cat.name;
                    select.appendChild(option);
                });
            } else {
                console.error("Categories no es un array:", categories);
            }
        });
        </script>';

        echo <<<EOD
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <script>


        
        document.addEventListener("DOMContentLoaded", function () {
            const fileInput = document.querySelector("input[name='filename_file']");

            if (fileInput) {
                // 🔹 Forzar que siempre detecte la selección, incluso si es el mismo archivo
                fileInput.addEventListener("click", function () {
                    this.value = "";
                });

                fileInput.addEventListener("change", function () {
                    const file = this.files[0];
                    if (!file) return;

                    const clonedFile = new File([file], file.name, { type: file.type });
                    const formData = new FormData();
                    formData.append("archivo", clonedFile);

                    fetch("subir_ftp.php", {
                        method: "POST",
                        body: formData
                    })
                    .then(response => response.text())
                    .then(result => {
                        console.log("[FTP] Respuesta del servidor:");
                        console.log(result);

                        // Buscar el JSON al final de la respuesta
                        const jsonMatch = result.match(/{.*}$/);
                        if (jsonMatch) {
                            try {
                                const json = JSON.parse(jsonMatch[0]);

                                if (json.success && json.message.includes("insertado correctamente")) {
                                    const fileName = json.nombre || file.name;

                                    // Asignar al input document_name
                                    const docInput = document.getElementById("document_name");
                                    if (docInput) {
                                        docInput.value = fileName;
                                    }

                                    // Mostrar alerta elegante
                                    Swal.fire({
                                        icon: 'success',
                                        title: '✅ Banner guardado',
                                        html: "<p><strong>Archivo subido:</strong> /" + fileName + "</p>" +
                                            "<p><strong>Respuesta de la API:</strong> " + json.message + "</p>",
                                        confirmButtonText: 'Aceptar'
                                    });
                                } else {
                                    Swal.fire({
                                        icon: 'error',
                                        title: '⚠️ Error al subir el banner',
                                        text: 'La respuesta del servidor no indica éxito.',
                                        confirmButtonText: 'Cerrar'
                                    });
                                }
                            } catch (e) {
                                console.error("Error al parsear JSON:", e);
                                Swal.fire({
                                    icon: 'error',
                                    title: '⚠️ Error en la respuesta',
                                    text: 'No se pudo interpretar la respuesta del servidor.',
                                    confirmButtonText: 'Cerrar'
                                });
                            }
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: '⚠️ Respuesta inválida',
                                text: 'No se encontró información válida en la respuesta.',
                                confirmButtonText: 'Cerrar'
                            });
                        }
                    })
                    .catch(error => {
                        console.error("[FTP] Error al subir el archivo:", error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error al subir el archivo',
                            text: 'No se pudo subir el archivo al servidor.',
                            confirmButtonText: 'Cerrar'
                        });
                    });
                });
            }
        });
        </script>
        EOD;


        
        parent::display();
    }

    /**
     * @see SugarView::_getModuleTitleParams()
     */
    protected function _getModuleTitleParams($browserTitle = false)
    {
        $params = array();
        $params[] = $this->_getModuleTitleListParam($browserTitle);
        if (!empty($this->bean->id)) {
            $params[] = "<a href='index.php?module={$this->module}&action=DetailView&record={$this->bean->id}'>".$this->bean->document_name."</a>";
            $params[] = $GLOBALS['app_strings']['LBL_EDIT_BUTTON_LABEL'];
        } else {
            $params[] = $GLOBALS['app_strings']['LBL_CREATE_BUTTON_LABEL'];
        }

        return $params;
    }
}
