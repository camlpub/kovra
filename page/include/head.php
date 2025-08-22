<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Pagina venta de buzos y ropa">
<meta name="author" content="Carlos Alejandro Maldonado López - CAMLTASKS">
<link rel="icon"  href="include/images/tomsom_logo.ico" />
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<title>TOMSOM -   <?php echo $module; ?></title>
<!-- Additional CSS Files -->
<link rel="stylesheet" type="text/css" href="include/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="include/assets/css/font-awesome.css">
<link rel="stylesheet" href="include/assets/css/templatemo-hexashop.css">
<link rel="stylesheet" href="include/assets/css/owl-carousel.css">
<link rel="stylesheet" href="include/assets/css/lightbox.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- uikit -->

<?php 

switch (connection_status())
{
case CONNECTION_NORMAL:
  $response = TRUE;
  break;
case CONNECTION_ABORTED:
  $response = FALSE;
  break;
case CONNECTION_TIMEOUT:
  $response = FALSE;
  break;
case (CONNECTION_ABORTED & CONNECTION_TIMEOUT):
    $response = FALSE;
    break;
default:
    $response = FALSE;
    break;
}


if ($response == TRUE){
    ?>

    <!-- UIkit CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.15.24/dist/css/uikit.min.css" />

<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.15.24/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.15.24/dist/js/uikit-icons.min.js"></script>

<?php
}else{
?>
<!-- UIkit CSS -->
<link rel="stylesheet" href="./uikit/dist/css/uikit.min.css" />

<!-- UIkit JS -->
<script src="./uikit/dist/js/uikit.min.js"></script>
<script src="./dist/js/uikit-icons.min.js"></script>


<?php
}
?>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-zoom/1.7.20/jquery.zoom.min.js"></script>