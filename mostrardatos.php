<?php

$Nombres=(isset($_POST['Nombres']))?$_POST['Nombres']:"";

$Apellidos=(isset($_POST['Apellidos']))?$_POST['Apellidos']:"";

$Email=(isset($_POST['Email']))?$_POST['Email']:"";


$Contraseña=(isset($_POST['Contraseña']))?$_POST['Contraseña']:"";


//$Date=(isset($_POST['Date']))?$_POST['Date']:"";

$Sexo=(isset($_POST['Sexo']))?$_POST['Sexo']:"";

$accion=(isset($_POST['accion']))?$_POST['accion']:"";

switch ($accion){
    case "registrarse":
    break;
}



?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">

    <title>DATOS</title>



    <script src="https://kit.fontawesome.com/1594b74de1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/estilos.css">

    <!--creamos una carpeta CSS para ordenar y tener una mejor visualizacion y hacemos el llamado para 
    poder utilizar los estilos y darle una vista mas dinamica-->



</head>

<body>




    <h4>
        <a class="contenedor" href="Bienvenidos.php" style="color: white;text-decoration:none;padding-left:65px;
          ">Volver</a>
    </h4>
    <!--creaamos el formulario de  registarse con un mensaje respectivo en la etiqueta h1-->
    <form action="" method="post" class="formulario">
        <br>
        <h1>DATOS </h1>
        <div class="contenedor">
            <!--le agregamos clases para que la mommento de llamarlos en estilos.css haer la pag 
            mucho mas dinamica con colores-->
            Nombres
            <br>
            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Ingrese Nombres" id="Nombres" name="Nombres" pattern="[Aa-Za]" required
                    placeholder="Nombres" value="Jose">
            </div>
            <!--dentro de div cremamos clase de tipo input-contenedor y agregamos entrada de datos -->
            <div class="input-contenedor">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Ingrese Apellidos" id="Apellidos" name="Apellidos" pattern="[Aa-Za]"
                    required placeholder="Apellidos" value="Campuzano">
            </div>
            <div class="input-contenedor">
                <i class="fas fa-envelope icon"></i>
                <input type="text" placeholder="Ingrese Email" id="Email" name="Email" pattern="[A-Za-z0-9_-@]" required
                    placeholder="Email" value="jose@gmail.com">
            </div>
            <h5>
                Sexo
            </h5>
            <div class="input-contenedor">
                <i class="fas fa-key icon"></i>
                <input type="text" placeholder="Ingrese Contraseña" id="Contraseña" name="Contraseña"
                    placeholder="Contraseña" value="Masculino">
            </div>
            <!--creamos varios input de entrada para nombres, apellidos
            correo, contraseña y confirmar contraseña, esto nos ayudara a que un usuario se registre-->
            <!--implementacion de calendario-->
            <div class="input-contenedor">
                <i class="fas fa-calendar-alt icon"></i>
                <input type="text" style="border:none ;padding : 10px;cursor:pointer"
                    placeholde="ingrese fecha de nacimiento" id="Date" required placeholder="Fecha de Nacimiento"
                    value="2/28/2000">
            </div>
            <!-- <div class="input-contenedor">
            <i class="fas fa-key icon"></i>
            <input type="password" placeholder="Confirmar Contraseña" name="Confirmar_Contraseña" pattern="[Aa-Zz-0-9]" required
            placeholder="Contraseña">
            </div>-->
            <!--creamos varios input de entrada para nombres, apellidos
            correo, contraseña y confirmar contraseña, esto nos ayudara a que un usuario se registre-->
        </div>
    </form>
</body>

</html>