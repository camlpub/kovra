<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon"  href="include/images/kovra_logo.ico" />
    <title>KOVRA  ❤👔👕👖👗 <?php echo  isset($_GET['module']); ?></title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <style>
            .dropdown {
                position: relative;
            }

            .dropdown-menu {
                display: none;
                position: absolute;
                top: 100%;
                left: 0;
                z-index: 1000;
                min-width: 1000px;
                padding: 10px;
                margin-top: 0px;
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            .dropdown-toggle:hover + .dropdown-menu,
            .dropdown-menu:hover {
                display: block;
            }

            .dropdown-section {
                display: inline-block;
                width: 25%;
                padding-right: 20px;
            }

            .dropdown-section h3 {
                font-size: 16px;
                margin-bottom: 10px;
                color: #333;
            }

            .dropdown-section ul {
                margin: 0;
                padding: 0;
                list-style: none;
            }

            .dropdown-section ul li {
                margin-bottom: 5px;
            }

            .dropdown-section ul li a {
                color: #666;
                text-decoration: none;
                transition: color 0.3s;
            }

            .dropdown-section ul li a:hover {
                color: #333;
            }
            .header__menu{
                margin-left: 0px !important;
            }

            .categorias{
                padding: 0px 0px 20px !important;
                
            }
    </style>



<?php 

include 'include/header.php';
?>

<div id="contenido">

    <?php 

        if(!isset($_GET['view'])){
            include 'modules/home/runner.php';
        }else{
            $view = $_GET['view'];
            include 'modules/'.$view.'/runner.php';
        }
    

        include 'include/footer.php';
    ?>



</div>







<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Busca productos...">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>
