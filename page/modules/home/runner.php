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


.product-card {
    background: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    transition: transform 0.3s ease;
}

.product-card:hover {
    transform: translateY(-5px);
}

.product-image {
    position: relative;
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 320px;
    object-fit: cover;
    transition: transform 0.5s ease;
}

.product-card:hover .product-image img {
    transform: scale(1.08);
}

.badge {
    position: absolute;
    top: 15px;
    left: 15px;
    padding: 6px 12px;
    font-size: 12px;
    font-weight: 600;
    border-radius: 30px;
    color: #fff;
}

.badge.new {
    background: #28a745;
}

.badge.sale {
    background: #dc3545;
}

.badge.stockout {
    background: #6c757d;
}

.product-actions {
    position: absolute;
    bottom: -60px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 10px;
    transition: all 0.4s ease;
}

.product-card:hover .product-actions {
    bottom: 20px;
}

.product-actions a {
    background: #fff;
    color: #000;
    border-radius: 50%;
    width: 38px;
    height: 38px;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 3px 8px rgba(0, 0, 0, 0.15);
    transition: background 0.3s;
}

.product-actions a:hover {
    background: #000;
    color: #fff;
}

.product-info {
    padding: 15px;
    text-align: center;
}

.product-info h6 {
    font-size: 16px;
    font-weight: 600;
    margin-bottom: 8px;
}

.product-info .rating {
    font-size: 14px;
    margin-bottom: 8px;
}

.price {
    font-size: 18px;
    font-weight: 700;
    color: #000;
}

.categories-nav {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
    flex-wrap: wrap;
}

.categories-nav .pill {
    padding: 8px 16px;
    border: 1px solid #ccc;
    border-radius: 20px;
    font-size: 14px;
    cursor: pointer;
    transition: background .3s, border-color .3s;
}

.categories-nav .pill.active {
    background: #000;
    color: #fff;
    border-color: #000;
}

.grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.product-card {
    position: relative;
    background: #fff;
    overflow: hidden;
    border-radius: 8px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    transition: transform .3s;
}

.product-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 6px 18px rgba(0, 0, 0, 0.15);
}

.product-image {
    position: relative;
    width: 100%;
    aspect-ratio: 3/4;
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform .5s ease;
}

.product-card:hover .product-image img {
    transform: scale(1.05);
}

.badge {
    position: absolute;
    top: 12px;
    left: 12px;
    background: #000;
    color: #fff;
    padding: 4px 10px;
    font-size: 12px;
    text-transform: uppercase;
    border-radius: 4px;
}

.product-actions {
    position: absolute;
    bottom: -50px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 10px;
    transition: bottom .4s;
}

.product-card:hover .product-actions {
    bottom: 12px;
}

.product-actions a {
    width: 36px;
    height: 36px;
    background: rgba(255, 255, 255, 0.9);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #333;
    font-size: 16px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
    transition: background .3s, color .3s;
}

.product-actions a:hover {
    background: #000;
    color: #fff;
}

.product-info {
    padding: 12px;
    text-align: center;
}

.product-info h3 {
    font-size: 15px;
    margin: 8px 0;
    font-weight: 500;
    color: #111;
}

.product-info p {
    font-size: 16px;
    font-weight: 700;
    margin: 0;
    color: #111;
}

@media (max-width: 1100px) {
    .grid {
        grid-template-columns: repeat(3, 1fr);
    }
}

@media (max-width: 800px) {
    .grid {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media (max-width: 500px) {
    .grid {
        grid-template-columns: 1fr;
    }
}

.instagram-posts {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    /* Espacio entre las publicaciones */
}

.instagram-post {
    flex: 1 1 300px;
    /* Crece, se encoge y tiene un ancho base de 300px */
    max-width: 300px;
    /* Ancho máximo para cada publicación */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    /* Sombra para un efecto de profundidad */
    border-radius: 8px;
    /* Bordes redondeados */
    overflow: hidden;
    /* Para evitar que el contenido se desborde */
}

.badge.discount {
    background: #e63946;
    font-weight: bold;
}

.product-info .price-new {
    color: #e63946;
    font-weight: 700;
    font-size: 16px;
    margin-right: 8px;
}

.product-info .price-old {
    text-decoration: line-through;
    color: #888;
    font-size: 14px;
}

.product-info .offer {
    font-size: 12px;
    color: #e63946;
    margin-top: 4px;
}

</style>



<?php 


// Llamado a la API
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://localhost/kovra_ultimo/app/api/?controller=banners',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
));

$banners = curl_exec($curl);
curl_close($curl);

// Decodificar el JSON
$banners = json_decode($banners, true);


?>



<?php  


    if (is_array($banners) && count($banners) > 0) {
        foreach ($banners as $banner) {

            if($banner['tipo'] == 'home'){
                $archivo = $banner['url'];  

?>

<section class="banner" style="background-image: url('include/media/<?php echo  $archivo; ?>');">
    <div class="container">
        <div class="banner__content">
            <!-- <a href="#" class="btn btn-primary" style="background-color: white; color: black; margin-top: 10%">Ver mas</a> -->

        </div>
    </div>
</section>


<?php
            }

        }
    } else {
        echo "<script>console.log(No tieene Banners)</script>";
    }

?>



<!-- Categories Section Begin -->
<section class="categories">
    <div class="container-fluid">
        <div class="row">
            <!-- Categoría principal -->
            <div class="col-lg-6 p-0">
                <div class="categories__item categories__large__item set-bg" data-setbg="img/categories/category-1.jpg">
                    <div class="categories__text">
                        <h1>Moda para mujer</h1>
                        <p>Descubre las últimas tendencias en ropa, calzado <br> y accesorios femeninos.
                            Estilo y comodidad <br> en un solo lugar.</p>
                        <a href="#">Ver colección</a>
                    </div>
                </div>
            </div>
            <!-- Otras categorías -->
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="img/categories/category-2.jpg">
                            <div class="categories__text">
                                <h4>Moda para hombre</h4>
                                <p>Estilo y comodidad <br> para <br> cualquier <br> ocasión.</p>
                                <a href="#">Ver colección</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="img/categories/category-3.jpg">
                            <div class="categories__text">
                                <h4>Moda infantil</h4>
                                <p>Ropa cómoda <br> y divertida <br> para los <br> pequeños.</p>
                                <a href="#">Ver colección</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="img/categories/category-4.jpg">
                            <div class="categories__text">
                                <h4>Cosméticos</h4>
                                <p>Maquillaje y cuidado <br> personal diario.</p>
                                <a href="#">Ver colección</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="img/categories/category-5.jpg">
                            <div class="categories__text">
                                <h4>Accesorios</h4>
                                <p>Bolsos, joyas y gafas <br> para tu estilo.</p>
                                <a href="#">Ver colección</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- Categories Section End -->



<!-- Product Section Begin -->
<section class="product spad">
    <h2>Hechale un vistazo a estos productos</h2>
    <div class="categories-nav">
        <ul class="filter__controls">
            <li class="pill active" data-filter="*">Todos</li>
            <li class="pill" data-filter=".mujeres">Mujeres</li>
            <li class="pill" data-filter=".hombres">Hombres</li>
            <li class="pill" data-filter=".nino">Niñ@s</li>
            <li class="pill" data-filter=".mascotas">Mascotas</li>
        </ul>
    </div>
    <div class="grid">


    <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <div class="badge discount">60% OFF</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>

    <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <!-- <div class="badge discount">60% OFF</div> -->
            <div class="badge">New</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>

    <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <div class="badge discount">60% OFF</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>

    <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <!-- <div class="badge discount">60% OFF</div> -->
            <div class="badge">New</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>
        <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <div class="badge discount">60% OFF</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>

    <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <!-- <div class="badge discount">60% OFF</div> -->
            <div class="badge">New</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>
        <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <div class="badge discount">60% OFF</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>

    <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <!-- <div class="badge discount">60% OFF</div> -->
            <div class="badge">New</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>
        <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <div class="badge discount">60% OFF</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>

    <div class="product-card accessories">
        <div class="product-image">
            <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
            <!-- <div class="badge discount">60% OFF</div> -->
            <div class="badge">New</div>
            <div class="product-actions">
                <a href="#"><i class="fa fa-search"></i></a>
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-bag"></i></a>
            </div>
        </div>
        <div class="product-info">
            <h3>Moving With Flow Hoop Earrings - Gold</h3>
            <p>
                <span class="price-new">$1.48</span>
                <span class="price-old">$3.99</span>
            </p>
            <p class="offer">60-80% Off All Sale! Prices As Marked</p>
        </div>
    </div>

    </div>
</section>
<!-- Product Section End -->


<!-- Banner Section Begin -->
<section class="banner set-bg" data-setbg="img/banner/banner-1.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-8 m-auto">
                <div class="banner__slider owl-carousel">
                    
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>Nueva Colección</span>
                            <h4>Descubre las últimas tendencias en moda. Diseños frescos, colores vibrantes y estilo único para que brilles en cada ocasión.</h4>
                            <a href="#">Comprar ahora</a>
                        </div>
                    </div>
                    
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>Exclusividad</span>
                            <h4>Piezas limitadas que no encontrarás en otro lugar. Viste diferente y marca la diferencia con nuestra selección especial.</h4>
                            <a href="#">Explorar</a>
                        </div>
                    </div>
                    
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>Estilo Urbano</span>
                            <h4>Ropa cómoda y con actitud. Perfecta para quienes buscan un look moderno sin dejar de lado la comodidad.</h4>
                            <a href="#">Ver colección</a>
                        </div>
                    </div>
                    
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>Temporada 2025</span>
                            <h4>Prepárate para lo nuevo. Prendas diseñadas para acompañarte en cada momento del año con estilo y personalidad.</h4>
                            <a href="#">Comprar ya</a>
                        </div>
                    </div>
                    
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>Promociones</span>
                            <h4>Aprovecha descuentos exclusivos por tiempo limitado. Renueva tu guardarropa sin gastar de más.</h4>
                            <a href="#">Ver ofertas</a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner Section End -->


<!-- Trend Section Begin -->
<!-- <section class="trend spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Hot Trend</h4>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/ht-1.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Chain bucket bag</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/ht-2.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Pendant earrings</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/ht-3.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Cotton T-Shirt</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Best seller</h4>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/bs-1.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Cotton T-Shirt</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/bs-2.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Zip-pockets pebbled tote <br />briefcase</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/bs-3.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Round leather bag</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Feature</h4>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/f-1.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Bow wrap skirt</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/f-2.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Metallic earrings</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="img/trend/f-3.jpg" alt="">
                        </div>
                        <div class="trend__item__text">
                            <h6>Flap cross-body bag</h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price">$ 59.0</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!-- Trend Section End -->
<br><br>
<!-- Discount Section Begin -->
<!-- <section class="discount">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="discount__pic">
                    <img src="img/discount.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="discount__text">
                    <div class="discount__text__title">
                        <span>Evento de promoción</span>
                        <h2>Summer 2019</h2>
                        <h5><span>Sale</span> 50%</h5>
                    </div>
                    <div class="discount__countdown" id="countdown-time">
                        <div class="countdown__item">
                            <span>22</span>
                            <p>Days</p>
                        </div>
                        <div class="countdown__item">
                            <span>18</span>
                            <p>Hour</p>
                        </div>
                        <div class="countdown__item">
                            <span>46</span>
                            <p>Min</p>
                        </div>
                        <div class="countdown__item">
                            <span>05</span>
                            <p>Sec</p>
                        </div>
                    </div>
                    <a href="#">Comprar</a>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!-- Discount Section End -->

<!-- Services Section Begin -->
<section class="services spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-car"></i>
                    <h6>Domicilio</h6>
                    <p>Costo unico</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-money"></i>
                    <h6>Metodos de pago</h6>
                    <p>Pago sin problemas</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-support"></i>
                    <h6>Consulta en linea</h6>
                    <p>Te brindaremos información precisa.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-headphones"></i>
                    <h6>Pagos seguros</h6>
                    <p>Pago 100% seguro.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->

<div class="instagram-posts">
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CwVkUs_pZsP/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/CwVkUs_pZsP/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/Cvw2avhg0kk/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/Cvw2avhg0kk/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CuSPLbvpCzE/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/Cvw2avhg0kk/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CuARb5FJPvS/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/Cvw2avhg0kk/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CuAJk6JgVgp/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/Cvw2avhg0kk/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CuAJbSYgT0x/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/Cvw2avhg0kk/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CuAJT-QgXR1/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/Cvw2avhg0kk/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CuAJI92gCNt/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/Cvw2avhg0kk/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <div class="instagram-post">
        <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CuAJEISAqxG/"
            data-instgrm-version="14">
            <a href="https://www.instagram.com/p/Cvw2avhg0kk/" target="_blank">Ver en Instagram</a>
        </blockquote>
    </div>
    <!-- Agrega más publicaciones aquí -->
</div>
<script async src="//www.instagram.com/embed.js"></script>


<script>
document.addEventListener("DOMContentLoaded", () => {
    const filterControls = document.querySelectorAll(".filter__controls .pill");
    const products = document.querySelectorAll(".grid .product-card");

    filterControls.forEach(control => {
        control.addEventListener("click", () => {
            // remover la clase activa
            filterControls.forEach(c => c.classList.remove("active"));
            control.classList.add("active");

            const filter = control.getAttribute("data-filter");

            products.forEach(product => {
                if (filter === "*" || product.classList.contains(filter.replace(".",
                        ""))) {
                    product.style.display = "block";
                } else {
                    product.style.display = "none";
                }
            });
        });
    });
});
</script>