<?php

$conexion=mysqli_connect("localhost","root", "","tienda");
#condicion para verificar de que los datos se envian correctamente
if (isset($_POST['registrarse'])) {
    $Nombres=$_POST['Nombres'];
    $Apellidos=$_POST['Apellidos'];
    $Email=$_POST['Email'];
    $Contraseña=$_POST['Contraseña'];

    $Sexo=$_POST['Sexo'];

    $Año_Nacimiento=DATE('a-m-d');

    $Fecha_Registro=DATE('y/m/d H:i:s');


    #hacemos una consulta para insertar datos y con la funcion hash encryptamos la contraseña
    $consultar="INSERT INTO empleados(Nombres, Apellidos, Email, Contraseña, Sexo, Fecha_Registro,Año_Nacimiento)
VALUES('$Nombres','$Apellidos','$Email','$Contraseña','$Sexo','$Año_Nacimiento','$Fecha_Registro')";
    #hacemos una consulta para verificar que no hyan usuarios duplicados
    # y agregamos una funcion
    $verificar_empleado=mysqli_query($conexion, "SELECT * FROM empleados WHERE Email='$Email'");
    if (mysqli_num_rows($verificar_empleado)>0) {
        echo "<script>alert('Error ya hay un usuario registrado con el mismo email');</script>";
        //echo "<center><br />" . "<h2>" . "Error ya hay un usuario registrado con el mismo email!" . "</h2></center>";
        //echo 'El usuario ya esta registrado';
        header("refresh:0; url=registrar.php");
        exit;
    }

    //ejecutar consulta
    $resultado=mysqli_query($conexion, $consultar);
    if (!$resultado) {
        echo "<center><br />" . "<h3>" . "Error al registrase!" . "</h3> </center>";
       // header("refresh:3; url=registrar.php");
    } else {
        echo "<script>alert('Usuario Registrado Exitosamente')</script>";
        //echo "<center><br />" . "<h3>" . "Usuario Registrado Exitosamente!" . "</h3> </center>";
        //echo "<h4>" . "Bienvenido: " . $_POST['Email'] . "</h4>" . "\n\n";
        header("refresh:0; url=INICIARSESSION2.php");
        //echo "<h5>" .header("Location: inicio.php"). "</h5>";
    }
}
?>









