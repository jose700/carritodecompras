
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INICIAR SESION</title> 
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style=" background: url(img/img.jpg);">
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-left">
        <br>
        <a class="navbar-brand" href=""></a>
        <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div id="my-nav" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto" style="text-align: center;">
        <h5>
            <li class="nav-item active"><i class="icono fas fa-home"style="cursor:pointer"></i><a class="nav-link" href="INICIARSESSION2.php" >        
            Inicio</a></li>
            </h5>         
           <h5>
            <li class="nav-item active"><i class="icono fas fa-shopping-cart"style="cursor:pointer"></i><a class="nav-link" href="img2/menu.php" >
            Productos</a> </li>
           </h5>
           <div>
           <h5>
            <li class="nav-item active"><i class="icono fas fa-id-badge"style="cursor:pointer"></i><a class="nav-link" href="contactos.php">
             Contactos</a> </li>
           </h5>
           </div>
           <h5>
            <li class="nav-item active"><i class="fas fa-info"style="cursor:pointer"></i><a class="nav-link" href="acercade.php">
             Acerca de:</a> </li>
           </h5>
            <li class="nav-item active">
            <form action="ini.php" method="POST" class="formulario">                 
        <br>
            <h5>
                <input type="text" placeholder="Ingrese email" name="Email" pattern="[A-Za-z0-9_-@]" required
                    placeholder="Email" style="padding-left:71px;">   </h5>
                   </li> 
            <li class="nav-item active">
                <br>
                <h5>
                
                <input type="password" placeholder="contraseña" name="Contraseña" pattern="[Aa-Zz-0-9]" required
                    placeholder="Contraseña" style="padding-left:71px"> 
                   
                    </h5>
                    <h6>
                    ¿Has olvidado tu  contraseña?</h6>
               <h6> <a class="link" href="RECUPERACION/RecuperarContraseña.php"style="
               color: #1a2537;
        font-weight: 600;
        
        color:blue">Recuperar </a></h6>
                  </li>
                <li  class="nav-item active">
                <!--agregamos una etiqueta con un mensaje de recuperar contraseña y seguido agregamos la etiqueta a
        que nos ayudara para dirigirnos a la pag siguiente de recuperar contraseña-->
        <br>
        <h5>
                <input type="submit" value="INICIAR SESION" class="button" name ="Iniciar"style="border: none;
        width: 100%;
        color: white;
        font-size: 10px;
        background: #1a2537;
        padding: 6px 6px;
        border-radius: 5px;
        cursor: pointer;.hover:color: cadetblue;">
                </h5>
                <h6>
                ¿No tienes una cuenta? </h6> <h6><a class="link" href="registrar.php"style=" ;
        color: #1a2537;
        font-weight: 600;
        color:blue;
        .hover:color: cadetblue;">Registrarse </a></h6>
                </li>
           <!--  <p>Al registrarte, aceptas nuestras Condiciones de uso y Política de privacidad.</p>-->  
            </form>        
            </ul>
        </div>
</nav>
 <!--creaamos el formulario de iniciar session-->
</body>
<?php include 'carrucel.html';?>
<center><h3 style="background-color:#EC1010;color:white;box-shadow: 0px 0.22px 1px 2px rgba(1,1,0.22,0)">
<table border="0" cellpadding="0px" align="center"; style="size: 12px; font-family: 'Courier New', Courier, monospace; color: #FFF; font-size: 13px;">
<tr>
	<td>
    &copy; 2020 TODOS LOS DERECHOS RESERVADOS.  |  DISEÑADOS POR: JOSE CAMPUZANO &&
    ANTHONY MOREIRA && DANNY MENDOZA<a href="https://www.facebook.com/platea21"></a>	
    </td>
    </tr>
</table>
</h3></center>
</html>