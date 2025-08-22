    <!-- Shop Section Begin -->


    <style>
.banner {
    width: 100%;
    height: 100vh;
    background-size: cover;
    /* ✅ Cubre todo el espacio, puede recortar */
    background-repeat: no-repeat;
    background-position: center;
    text-align: center;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    box-sizing: border-box;
    position: relative;
}

/* Estilos para el contenido dentro del banner */
.banner__content {
    z-index: 1;
    padding: 20px;
}

/* Títulos y párrafos dentro del banner */
.banner h2 {
    font-size: 36px;
    margin-bottom: 20px;
}

.banner p {
    font-size: 18px;
}

/* Responsivo para móviles */
@media (max-width: 768px) {
    .banner {
        height: 30vh;
    }

    .banner h2 {
        font-size: 24px;
    }

    .banner p {
        font-size: 16px;
    }
}



    </style>

    <?php

        if($_GET['action'] == 'categoria'){
            
    ?>

        <section class="banner" style="background-image: url('include/media/categoria1.webp');">
            <div class="container">
                <div class="banner__content">
                    <!-- <a href="#" class="btn btn-primary" style="background-color: white; color: black; margin-top: 10%">Ver mas</a> -->

                </div>
            </div>
        </section>

    <?php 
        }else{

        }

    ?>

    <section class="shop spad">
        <?php 

// Llamado a la API de productos
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://localhost/kovra_ultimo/app/api/?controller=productos&action=listar',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
));

$response = curl_exec($curl);
curl_close($curl);

// Decodificar el JSON
$productos = json_decode($response, true);

?>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">
                        <div class="sidebar__categories">
                            <div class="section-title">
                                <h4>Categorias</h4>
                            </div>
                            <div class="categories__accordion">
                                <div class="accordion" id="accordionExample">
                                    <div class="card">
                                        <div class="card-heading active">
                                            <a data-toggle="collapse" data-target="#collapseOne">Tipo de prenda</a>
                                        </div>
                                        <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="#">Mujeres</a></li>
                                                    <li><a href="#">Hombres</a></li>
                                                    <li><a href="#">Niñ@s</a></li>
                                                    <li><a href="#">Mascotas</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <?php 

                                    if($_GET['action'] == 'categoria'){
                                    
                                    ?>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseTwo">Sub categorias</a>
                                        </div>
                                        <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="#">Pantalones</a></li>
                                                    <li><a href="#">Camisas</a></li>
                                                    <li><a href="#">Buzos</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <?php 
                                    }else{
                                    }
                                    ?>

                                </div>
                            </div>
                        </div>
                        <div class="sidebar__filter">
                            <div class="section-title">
                                <h4>Filtrar por precio x Mil</h4>
                            </div>
                            <div class="filter-range-wrap">
                                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal"
                                data-min="5" data-max="300"></div>
                                <div class="range-slider">
                                    <div class="price-input">
                                        <p>Precio:</p>
                                        <input type="text" id="minamount">
                                        <input type="text" id="maxamount">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar__sizes">
                            <div class="section-title">
                                <h4>Talla</h4>
                            </div>
                            <div class="size__list">
                                <label for="xxs">
                                    xxs
                                    <input type="checkbox" id="xxs">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="xs">
                                    xs
                                    <input type="checkbox" id="xs">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="xss">
                                    xs-s
                                    <input type="checkbox" id="xss">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="s">
                                    s
                                    <input type="checkbox" id="s">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="m">
                                    m
                                    <input type="checkbox" id="m">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="ml">
                                    m-l
                                    <input type="checkbox" id="ml">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="l">
                                    l
                                    <input type="checkbox" id="l">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="xl">
                                    xl
                                    <input type="checkbox" id="xl">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div class="sidebar__color">
                            <div class="section-title">
                                <h4>Tono</h4>
                            </div>
                            <div class="size__list color__list">
                                <label for="black">
                                    Blacks
                                    <input type="checkbox" id="black">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="whites">
                                    Whites
                                    <input type="checkbox" id="whites">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="reds">
                                    Reds
                                    <input type="checkbox" id="reds">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="greys">
                                    Greys
                                    <input type="checkbox" id="greys">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="blues">
                                    Blues
                                    <input type="checkbox" id="blues">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="beige">
                                    Beige Tones
                                    <input type="checkbox" id="beige">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="greens">
                                    Greens
                                    <input type="checkbox" id="greens">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="yellows">
                                    Yellows
                                    <input type="checkbox" id="yellows">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">

<div class="row">
<?php  
if (isset($productos['success']) && $productos['success'] == true && count($productos['productos_page']) > 0) {
    foreach ($productos['productos_page'] as $producto) {
        $nombre = $producto['nombre'];
        $precio = $producto['precio'];
        $imagen = "include/media/" . $producto['url_imagen']; // Ruta de tus imágenes
        $id = $producto['id'];
?>
    <div class="col-lg-4 col-md-6">
        <div class="product__item">
            <div class="product__item__pic set-bg" data-setbg="<?php echo $imagen; ?>">
                <ul class="product__hover">
                    <li><a href="<?php echo $imagen; ?>" class="image-popup"><span class="arrow_expand"></span></a></li>
                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                    <li><a href="?controller=carrito&action=add&id=<?php echo $id; ?>"><span class="icon_bag_alt"></span></a></li>
                </ul>
            </div>
            <div class="product__item__text">
                <h6><a href="?view=producto&id=<?php echo $id; ?>"><?php echo $nombre; ?></a></h6>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <div class="product__price">$ <?php echo number_format($precio, 0); ?></div>
            </div>
        </div>
    </div>
<?php
    }
} else {
    echo "<div class='col-12'><p>No hay productos disponibles.</p></div>";
}
?>
</div>



                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->
