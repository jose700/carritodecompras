<?php   
#hicimos la conexion a la base de datos
$conexion=mysqli_connect("localhost","root", "","tienda");
#condicion para verificar de que los datos se envian correctamente
if (isset($_POST['Enviar'])) {

    $Nombres=$_POST['Nombres'];
 
    $Email=$_POST['Email'];

    $Telefono=$_POST['Telefono'];

    $Mensaje=$_POST['Mensaje'];

    #hacemos una consulta para insertar datos y con la funcion hash encryptamos la contraseña
    $consultar="INSERT INTO contactos(Nombres,Email,Telefono,Mensaje)
   VALUES('$Nombres','$Email','$Telefono','$Mensaje')";
    #hacemos una consulta para verificar que no hyan usuarios duplicados
    # y agregamos una funcion
  
    //ejecutar consulta
    $resultado=mysqli_query($conexion, $consultar);
    if (!$resultado) {
        echo "<center><br />" . "<h3>" . "Error al enviar el mensaje!" . "</h3> </center>";
       // header("refresh:3; url=registrar.php");
    } else {
        echo "<script>alert('Mensajes enviados correctamente')</script>";
        //echo "<center><br />" . "<h3>" . "Usuario Registrado Exitosamente!" . "</h3> </center>";
        //echo "<h4>" . "Bienvenido: " . $_POST['Email'] . "</h4>" . "\n\n";
        header("refresh:0; url=contactos.php");
        //echo "<h5>" .header("Location: inicio.php"). "</h5>";
    }
}

?>