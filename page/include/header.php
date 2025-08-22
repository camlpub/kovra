<?php 


// Llamado a la API
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'http://localhost/kovra_ultimo/app/api/?controller=categorias',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
));

$categorias = curl_exec($curl);
curl_close($curl);

// Decodificar el JSON
$categorias = json_decode($categorias, true);


$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'localhost/kovra_ultimo/app/api/?controller=categorias&action=listarCategorias',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
));

$listarCategorias = curl_exec($curl);

curl_close($curl);


$listarCategorias = json_decode($listarCategorias, true);


?>

<style>
.dropdown-menu {
    text-decoration: none;

}

.dropdown-section.destacados {
    background: #fdf7f2;
    padding: 10px;
    border-left: 4px solid #ff8c00;
    border-radius: 8px;
    margin-bottom: 10px;
}

.section-title {
    font-size: 1rem;
    font-weight: bold;
    color: #d35400;
    margin-bottom: 8px;
    display: flex;
    align-items: center;
    gap: 6px;
}

.highlighted-links li {
    margin-bottom: 6px;
}

.highlighted-links a {
    color: #333;
    text-decoration: none;
    font-weight: 500;
    transition: all 0.2s ease-in-out;
}

.highlighted-links a:hover {
    color: #d35400;
    padding-left: 4px;
}
</style>

<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__close">+</div>
    <ul class="offcanvas__widget">
        <li><span class="icon_search search-switch"></span></li>
        <li><a href="#"><span class="icon_heart_alt"></span>
                <div class="tip">2</div>
            </a></li>
        <li><a href="#"><span class="icon_bag_alt"></span>
                <div class="tip">2</div>
            </a></li>
    </ul>
    <div class="offcanvas__logo">
        <a href="./index.html"><img src="include/images/kovra_logo.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__auth">
        <a href="#">Iniciar Sesión</a>
        <a href="#">Registrarse</a>
    </div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-1 col-lg-2">
                <div class="header__logo">
                    <a href="./index.php" style="text-decoration: none; color: black; font-size: 25px;"><img width="50"
                            src="include/images/kovra_logo.png" alt=""> KOVRA</a>
                </div>
            </div>
            <div class="col-xl-6 col-lg-7">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="./index.html">Inicio</a></li>
                        <li class="dropdown">
                            <a href="#">Mujere’s</a>
                        </li>
                        <li class="dropdown">
                            <a href="#">Hombre’s</a>
                        </li>
                        <li class="dropdown">
                            <a href="#">Niñ@’s</a>
                        </li>
                        <li class="dropdown">
                            <a href="#">Mascota’s</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-5">
                <div class="header__right">
                    <div class="header__right__auth">
                        <a href="http://localhost/tomsom_ultimo/tomsom/login.php?action=login">Iniciar Sesión</a>
                        <a href="http://localhost/tomsom_ultimo/tomsom/login.php?action=login">Registrarse</a>
                    </div>
                    <ul class="header__right__widget">
                        <li><span class="icon_search search-switch"></span></li>
                        <li><a href=""><span class="icon_heart_alt"></span>
                                <div class="tip">2</div>
                            </a></li>
                        <li><a href="?view=carrito"><span class="icon_bag_alt"></span>
                                <div class="tip">2</div>
                            </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">

            <div class="" style="margin-left:15px">
                <nav class="header__menu categorias">
                    <ul>
                        <li><a href="#">Categorias</a>
                            <ul class="dropdown">

                            <?php  
                                if (is_array($listarCategorias)) {
                                    foreach ($listarCategorias as $categoria) {
                                        $nombreCategoria = $categoria['name'];
                                        echo "<li><a href='?view=catalogo&action=categoria'>{$nombreCategoria}</a></li>";
                                    }
                                } else {
                                    echo "<li>No hay categorias disponibles</li>";
                                }

                            ?>
                            </ul>
                        </li>
                        <!-- <li class="dropdown">
                            <a class="dropdown-toggle" href="#">Tendencia</a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-section">
                                    <h3></h3>
                                    <ul>
                                        <li><a href="#">Ventas nuevas</a></li>
                                        <li><a href="#">Volvera a estar disponible</a></li>
                                        <li><a href="#">Los mas vendidos</a></li>
                                        <li><a href="#">Proximamente</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-section">
                                    <h3>Categorias</h3>
                                    <ul>
                                        <li><a href="#">Blouses</a></li>
                                        <li><a href="#">T-shirts</a></li>
                                        <li><a href="#">Tank Tops</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-section">
                                    <h3></h3>
                                    <ul>
                                        <li><a href="#"><img src="img/categories/category-1.jpg" alt="">Producto en
                                                tendencia </a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li> -->

                        <?php 
                                if (is_array($categorias)) {
                                    foreach ($categorias as $categoria) {

                            ?>

                        <li class="dropdown">
                            <a href="?view=catalogo&action=categoria" class="dropdown-toggle"><?php echo $categoria['name']; ?></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-section destacados">
                                    <h3>✨ Descubre</h3>
                                    <ul>
                                        <li><a href="#">🔥 Ventas nuevas</a></li>
                                        <li><a href="#">🕒 Próximamente</a></li>
                                    </ul>

                                </li>

                                <li class="dropdown-section">
                                    <h3>🚀Categorias</h3>
                                    <ul>
                                        <?php
                                                if (isset($categoria['subcategorias']) && is_array($categoria['subcategorias'])) {
                                                    foreach ($categoria['subcategorias'] as $subcategory) {
                                                        $subcategoria = $subcategory['name'];
                                                        echo "<li><a href='?view=catalogo&action=categoria'>{$subcategoria}</a></li>";
                                                    }
                                                } else {
                                                    echo "<li>No hay subcategorias disponibles</li>";
                                                }
                                            ?>
                                    </ul>
                                </li>
                                <li class="dropdown-section">
                                    <h3></h3>
                                    <ul>
                                        <li><a href="#"><img src="img/categories/category-1.jpg" style="width: 100%; height:100%" alt=""><br>❤ Producto en
                                                tendencia </a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <?php 


                                    }
                                } else {
                                    echo "<li class='dropdown'>No hay categorias disponibles</li>";
                                }   
                            ?>

                        <li><a href="?view=catalogo">Catalogo</a></li>
                        <li><a href="">Conocenos</a>
                            <ul class="dropdown">
                                <li><a href="?view=solicitudes">Solicitudes</a></li>
                                <li><a href="?view=unetenos">Unetenos</a></li>
                                <li><a href="?view=materiales">Materiales</a></li>
                            </ul>
                        </li>
                        <li><a href="?view=blog">Blog</a></li>
                        <li><a href="?view=solicitudes">Contactanos</a></li>
                    </ul>
                </nav>
            </div>

        </div>
        <div class="canvas__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->