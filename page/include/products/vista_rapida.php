<?php
 
 $id_producto = $_REQUEST['id'];

 include('../../include/config.php');
 


 $sql_productos1 = "SELECT *,pro.nombre as nombre_producto,pro.descripcion as descripcion_producto,pro.precio as precio,col.nombre as nombre_coleccion,cat.nombre as nombre_categoria FROM productos pro LEFT JOIN colecciones col ON pro.id_coleccion = col.id LEFT JOIN categorias cat ON pro.id_categoria = cat.id WHERE pro.id='$id_producto' AND pro.deleted = 0 ";
 $result_productos1 = $conexion->query($sql_productos1);


 $elemento = $result_productos1->fetch_assoc();


 $imagen = $elemento["imagenes"];
 $nombre_producto = $elemento["nombre_producto"];
 $nombre_coleccion = $elemento["nombre_coleccion"];
 $nombre_categoria = $elemento["nombre_categoria"];
 $precio = $elemento["precio"];
 $cantidad = $elemento["cantidad"];
 $descripcion_producto = $elemento["descripcion_producto"];


 
 $sql_productos = "SELECT *,pro.imagenes as imagen_producto,img.imagen as imagenes_vista,pro.id as id_pro,img.id as id_img FROM productos pro LEFT JOIN imagenes_productos img ON pro.id=img.id_producto WHERE pro.id='$id_producto' AND pro.deleted = 0 ";
 $result_productos = $conexion->query($sql_productos);





 ?>


 
 <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid>
            <div class="uk-background-cover" style="background-image: url('../dashboard/<?php echo $imagen; ?>');" uk-height-viewport></div>

            <div class="uk-padding-large">




<center>
   <section class="section imagenes_modal_vista" id="social">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <span>Selecciona la imagen para verla grande.</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row images">

    <?php  

            if ($result_productos->num_rows > 0) {




                while($row = $result_productos->fetch_assoc()) {


                    $id = $row['id'];
                    $imagenes = $row['imagenes_vista'];



    ?>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="#" onclick="cambio_imagen('<?php echo $imagenes; ?>')">
                                <i uk-icon="camera"></i>
                            </a>
                        </div>
                        <img style="width:100px; height:100px"  src="../dashboard/<?php echo $imagenes; ?>" alt="">
                    </div>
                </div>

                <?php 
                
                
            }


        }else{


        }
                
                ?>



            </div>
        </div>
    </section>

    </center>
               <!-- ***** Product Area Starts ***** -->
    <section class="section" id="product">
        <div class="container">

            <div class="col-lg-12">
                <div class="right-content">
                    <h4><?php echo $nombre_producto; ?></h4>
                    <span class="price">$  <?php echo $precio; ?></span>
                    <span class="price">Coleccion :   <?php echo $nombre_coleccion; ?></span>
                    <span class="price">Categoria :   <?php echo $nombre_categoria; ?></span>

                    <ul class="stars">
                        <!-- <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li> -->
                    </ul>
                    <span><?php echo $descripcion_producto; ?></span>
                    <div class="quote">
                    </div>
                    <div class="quantity-content">
                        <div class="left-content">
                            <h6>Cantidad</h6>
                        </div>
                        <div class="right-content">
                            <div class="quantity buttons_added">
                                <input type="button" value="-" class="minus" onclick="cantidad('<?php echo $cantidad; ?>','menos')"><input type="number" step="1" min="0" max="<?php echo $cantidad; ?>" name="cantidad_productos" value="0" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus"  onclick="cantidad('<?php echo $cantidad; ?>','mas')">
                            </div>
                        </div>
                    </div>
                    <div class="total">
                        <span style="color: red; display: none;" id="mensaje_error_cantidad_mas">El producto actualmente no cuenta con esa cantidad deseas hacer una petición a la tienda.</span>
                        <span style="color: red; display: none;" id="mensaje_error_cantidad_menos">No se pueden realizar pedidos con productos que contengan una cantidad menor a 0.</span>
                        <span style="color: green; display: none;" id="mensaje_agregado_carrito">Gracias por confiar en nosotros, tu producto fue agregado en tu canasta, deseas ir a tu carrito  <a style="color:black;" href="?view=carrito" id="ir_carrito" >Ir al carrito<i  uk-icon="cart"> </i></a> </span>
                        <div class="main-border-button">



                                <a href="#" id="boton_carrito"  onclick="agregarCarrito('<?php echo $id_producto; ?>','<?php echo $cantidad; ?>')">Agregar al carrito <i  uk-icon="cart"> </i></a>
                        
                        
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </section>
           
           
            </div>
        </div>


