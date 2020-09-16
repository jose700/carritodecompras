<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>BIENVENIDOS</title>

    <!--usamos el siguiente enlase para poder ingresar iconos y hacer nuestra pag mas interesante-->
    <meta name="viewport"
        content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="stylesheet" href="CSS/master.css">

</head>
<body>
    <!--bgcolor="#87CEFA">-->
    <!--le agregamos una imagen de bienvenida a la pagina y la centramos le dimos un ancho y tamaño-->
    <div class="center">
        <img src="img/BIENVENIDOS.png" width="450" height="150">
    </div>
    <!--Hicimos un encabezado eader y etiquetas nav de navegacion en las cuales dentro de ellas incluimos etiquetas 
ul y etiquetas a donde la etiqueta (a) nos servira como ayuda para ingresar un enlace-->
    <header>
        <nav>
            <ul>
                <li><a href="Bienvenidos.php"><span class="uno "><i class="icon fas fa-home"></i></span>Inicio</a></li>
                <li><a href="mostrardatos.php"><span class="dos"><i class="icon fas fa-user-tie"></i></span>Ver Perfil
                    </a></li>
                <li><a href="COMIDAS/menucomida.php"><span class="tres"><i
                                class="icon fas fa-shopping-cart"></i></span>Carrito</a>
                </li>
                <!--- <li><a href="FACTURA/factura.php"><span class="tres"><i class="icon fas fa-shopping-cart"></i></span>FACTURA</a>
                </li>-->
                <li><a href="INICIARSESSION2.php"><span class="cuatro"><i
                                class="icon fas fa-closed-captioning"></i></span>Logaut
                    </a></li>
            </ul>
        </nav>
        <!--agregamos un carrusel de imagenes para tener una mejor visualizacion en la pagina de bienvenidos-->
    </header>
    <div class="content-all">
        <div class="content-carrousel">
            <figure><img src="image/img1.jpg"></figure>
            <figure><img src="imgsistema/imagen3.jpg"></figure>
            <figure><img src="imgsistema/imagen2.jpg"></figure>
            <figure><img src="imgsistema/imagen5.jpg"></figure>
            <figure><img src="imgsistema/imagen4.jpg"></figure>
            <figure><img src="imgsistema/imagen7.jpg"></figure>
            <figure><img src="imgsistema/imagen8.jpg"></figure>
            <figure><img src="imgsistema/imagen9.jpg"></figure>
            <figure><img src="imgsistema/imagen6.jpg"></figure>
            <figure><img src="imgsistema/imagen1.jpg"></figure>
        </div>
    </div>

</body>

</html>