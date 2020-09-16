<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="viewport"
        content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">


    <script src="https://kit.fontawesome.com/1594b74de1.js" crossorigin="anonymous"></script>
    <!--creamos una carpeta CSS para ordenar y tener una mejor visualizacion y hacemos el llamado para 
    poder utilizar los estilos y darle una vista mas dinamica-->

    <link rel="stylesheet" href="CSS/estilos.css">
    <!--creamos una carpeta CSS para ordenar y tener una mejor visualizacion y hacemos el llamado para 
    poder utilizar los estilos y darle una vista mas dinamica-->


</head>

<body>
    <!--creaamos el formulario de  registarse con un mensaje respectivo en la etiqueta h1-->
    <form action="regis.php" method="post" class="formulario">
        <br>
        <h1>REGISTRARSE </h1>

        <div class="contenedor">
            <!--le agregamos clases para que la mommento de llamarlos en estilos.css haer la pag 
            mucho mas dinamica con colores-->
            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Ingrese Nombres" name="Nombres" pattern="[Aa-Za]" required
                    placeholder="Nombres">
            </div>
            <!--dentro de div cremamos clase de tipo input-contenedor y agregamos entrada de datos -->
            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Ingrese Apellidos" name="Apellidos" pattern="[Aa-Za]" required
                    placeholder="Apellidos">
            </div>
            <div class="input-contenedor">
                <i class="fas fa-envelope icon"></i>
                <input type="text" placeholder="Ingrese Email" name="Email" pattern="[A-Za-z0-9_-@]" required
                    placeholder="Email">
            </div>
            <!--creamos varios input de entrada para nombres, apellidos
            correo, contraseña y confirmar contraseña, esto nos ayudara a que un usuario se registre-->
            <div class="input-contenedor">
                <i class="fas fa-key icon"></i>
                <input type="password" placeholder="Ingrese Contraseña" name="Contraseña" pattern="[Aa-Zz-0-9]" required
                    placeholder="Contraseña">
            </div>
            <!--implementacion de calendario-->
            <div class="input-contenedor">
                <i class="fas fa-calendar-alt icon"></i>
                <input type="date" style="border:none ;padding : 10px;cursor:pointer"
                    placeholde="ingrese fecha de nacimiento" required placeholder="Fecha de Nacimiento">
            </div>
            <h5>Seleccione su sexo</h5>
            <select name="Sexo" style=" 
    width: 100%;
    color: black;
    font-size: 10px;
    background: white;
    padding: 10px 10px;
    border-radius: 2px;
    cursor: pointer;">
                <option name="Sexo">Masculino</option>
                <option name="Sexo">Femenino</option>
                <option name="Sexo">Otro</option>
            </select>
        </div>
        </div>
        <br>
        <!-- <div class="input-contenedor">
            <i class="fas fa-key icon"></i>
            <input type="password" placeholder="Confirmar Contraseña" name="Confirmar_Contraseña" pattern="[Aa-Zz-0-9]" required
            placeholder="Contraseña">
            </div>-->
        <!--creamos varios input de entrada para nombres, apellidos
            correo, contraseña y confirmar contraseña, esto nos ayudara a que un usuario se registre-->
        <!--agregamos otra etiqueta pero esta vez le agregamos un boton para que la momento
            de darle clic nos lleve a una nueva pagina -->
        <input type="submit" value="REGISTRARSE" class="button" name="registrarse">
        <!--<p>Al registrarte, aceptas nuestras Condiciones de uso y Política de privacidad.</p>-->
        <p>¿Ya tienes una cuenta?<a class="link" href="INICIARSESSION2.php">Iniciar Sesion</a></p>
        </div>
    </form>
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