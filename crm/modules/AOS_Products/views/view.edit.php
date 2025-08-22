<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}


#[\AllowDynamicProperties]
class AOS_ProductsViewEdit extends ViewEdit
{
    public function __construct()
    {
        parent::__construct();
    }




    public function display()
    {
        global $app_strings,$sugar_config;

        isset($this->bean->product_image) ? $image = $this->bean->product_image : $image = '';


        $temp = str_replace($sugar_config['site_url'].'/'.$sugar_config['upload_dir'], "", (string) $image);
        $html = '<span id=\'new_attachment\' style=\'display:';
        if (!empty($this->bean->product_image)) {
            $html .= 'none';
        }
        $html .= '\'><input name="uploadimage" tabindex="3" type="file" size="60"/>
        	</span>
		<span id=\'old_attachment\' style=\'display:';
        if (empty($image)) {
            $html .= 'none';
        }
        $html .= '\'><input type=\'hidden\' id=\'deleteAttachment\' name=\'deleteAttachment\' value=\'0\'>
		'.$temp.'<input type=\'hidden\' name=\'old_product_image\' value=\''.$image.'\'/>
		<input type=\'button\' class=\'button\' value=\''.$app_strings['LBL_REMOVE'].'\' onclick=\'deleteProductImage();\' >
		</span>';

        $this->ss->assign('PRODUCT_IMAGE', $html);


echo <<<EOD
<script type="text/javascript">
var s = document.createElement("script");
s.src = "https://cdn.jsdelivr.net/npm/sweetalert2@11";
document.head.appendChild(s);
</script>
EOD;

echo <<<EOD
<script>
SUGAR.util.doWhen(
    function() { 
        return document.querySelector("input[name='uploadimage']") != null; 
    },
    function() {
        console.log("🔹 Script de subida de banner cargado (con doWhen)");

        const fileInput = document.querySelector("input[name='uploadimage']");
        
        if (!fileInput) {
            console.error("❌ No se encontró el input[name='uploadimage']");
            return;
        }

        // Reset al hacer click
        fileInput.addEventListener("click", function () {
            this.value = "";
        });

        // Evento al seleccionar archivo
        fileInput.addEventListener("change", function () {
            const file = this.files[0];
            if (!file) {
                console.warn("⚠️ No se seleccionó ningún archivo");
                return;
            }

            console.log("📂 Archivo seleccionado:", file);

            const clonedFile = new File([file], file.name, { type: file.type });
            const formData = new FormData();
            formData.append("archivo", clonedFile);

            fetch("subir_ftp_product.php", {
                method: "POST",
                body: formData
            })
            .then(response => response.text())
            .then(result => {
                console.log("[FTP] Respuesta del servidor:");
                console.log(result);

                const jsonMatch = result.match(/{.*}$/);
                if (jsonMatch) {
                    try {
                        const json = JSON.parse(jsonMatch[0]);

                        if (json.success && json.message.includes("correctamente")) {
                            // ✅ tomar url_imagen de la respuesta
                            const urlImagen = json.url_imagen;

                            // 🔹 Buscar o crear el input hidden
                            let hiddenInput = document.getElementById("uploadedFileName");
                            if (!hiddenInput) {
                                hiddenInput = document.createElement("input");
                                hiddenInput.type = "hidden"; // hidden correcto
                                hiddenInput.name = "uploadedFileName"; // este viaja en POST
                                hiddenInput.id = "uploadedFileName";
                                fileInput.closest("form").appendChild(hiddenInput);
                            }   
                            hiddenInput.value = urlImagen;

                            Swal.fire({
                                icon: 'success',
                                title: '✅ Banner guardado',
                                html: "<p><strong>Archivo subido:</strong> /" + urlImagen + "</p>" +
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
);
</script>
EOD;











        parent::display();
    }
}
