<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario</title>
    <script src="https://kit.fontawesome.com/1594b74de1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/estilos.css">
</head>

<body>
    <h3>
        <a class="contenedor" href="INICIARSESSION2.php" style="color: white;text-decoration:none;padding-left:65px;
          ">Volver</a>
    </h3>
    <form action="datoscontactos.php" method="post" class="formulario">
        <br>
        <h1>Contactos </h1>

        <div class="contenedor">
            <!--le agregamos clases para que la mommento de llamarlos en estilos.css haer la pag 
            mucho mas dinamica con colores-->

            <div class="input-contenedor">

                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Ingrese Nombres" name="Nombres" pattern="[Aa-Za]" required>
            </div>

            <!--dentro de div cremamos clase de tipo input-contenedor y agregamos entrada de datos -->
            <div class="input-contenedor">
                <i class="fas fa-envelope icon"></i>
                <input type="text" placeholder="Ingrese Email" name="Email" pattern="[A-Za-z0-9_-@]" required>
            </div>

            <div class="input-contenedor">
                <i class="fa fa-phone icon" aria-hidden="true"></i>

                <input type="text" placeholder="Telefono/celular" name="Telefono" pattern="[0-9,9-0]" required>

            </div>

            <textarea class="message-input" name="Mensaje" placeholder="ingrese su comentario"></textarea>

            <input type="submit" value="Enviar" class="button" name="Enviar">
        </div>

    </form>
    <br>
    <center>
        <h3 style="background-color:#EC1010;color:white;box-shadow: 0px 0.22px 1px 2px rgba(1,1,0.22,0)">

            <table border="0" cellpadding="0px" align="center" ;
                style="size: 12px; font-family: 'Courier New', Courier, monospace; color: #FFF; font-size: 12px;">
                <tr>
                    <td>
                        &copy; 2020 TODOS LOS DERECHOS RESERVADOS. | DISEÑADOS POR: JOSE CAMPUZANO &&
                        ANTHONY MOREIRA && DANNY MENDOZA<a href=""></a>
                    </td>
                </tr>
            </table>

        </h3>
    </center>


</body>


</html>