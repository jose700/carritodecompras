<?php include 'img2/visual.html';?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>INICIAR SESION</title>

    <!--creamos y usamos el siguiente enlase para poder ingresar iconos y hacer nuestra pag mas interesante-->
    <meta name="viewport"
        content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="stylesheet" href="CSS/estilos.css">

</head>

<body>

    <!--creaamos el formulario de iniciar session-->


    <form action="" method="POST" class="formulario">


        <!--creacion de etiquetas y Mensaje de iniciar session-->

        <br>
        <h1>INICIAR SESION</h1>
        <br>
        <div class="contenedor">


            <!--agregamos un imput de entrada de tipo texto para ingresar el correo electronico o email-->
            <div class="input-contenedor">
                <i class="fas fa-envelope icon"></i>
                <input type="text" placeholder="Correo Electronico" name="Email" pattern="[A-Za-z0-9_-@]" required
                    placeholder="Email">

            </div>
            <!--hicimos un imput de entrada tipo password que esta a su vez nos ayudara al momento de escribir no mostrar
    //digitos ingresados-->
            <div class="input-contenedor">
                <i class="fas fa-key icon"></i>
                <input type="password" placeholder="Contraseña" name="Contraseña" pattern="[Aa-Zz-0-9]" required
                    placeholder="Contraseña">
            </div>
            <p>
                <!--agregamos una etiqueta con un mensaje de recuperar contraseña y seguido agregamos la etiqueta a
                que nos ayudara para dirigirnos a la pag siguiente de recuperar contraseña-->
                ¿Has olvidado tu contraseña?
                <a class="link" href="RECUPERACION/recuperar_contraseña.php">Recuperar </a>
            </p>
            <br>
                <!--gregamos otra etiqueta pero esta vez le agregamos un boton para que la momento
                de darle clic nos lleve  una nueva pagina-->
            <input type="submit" value="INICIAR SESION" class="button" name="Iniciar">
            <!--  <p>Al registrarte, aceptas nuestras Condiciones de uso y Política de privacidad.</p>-->
            <br>
            <br>
            <p>¿No tienes una cuenta? <a class="link" href="registrar.php">Registrarse </a></p>
        </div>
    </form>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <center>
        <h3 style="background-color:#EC1010;color:white;box-shadow: 0px 0.22px 1px 2px rgba(1,1,0.22,0)">
            <table border="0" cellpadding="15px" align="center" ;
                style="size: 12px; font-family: 'Courier New', Courier, monospace; color: #FFF; font-size: 12px;">
                <tr>
                    <td>
                        &copy; 2020 TODOS LOS DERECHOS RESERVADOS. | DISEÑADOS POR: JOSE CAMPUZANO &&
                        ANTHONY MOREIRA && DANNY MENDOZA<a href="https://www.facebook.com/platea21"></a>
                    </td>
                </tr>
            </table>
        </h3>
    </center>
</body>

</html>