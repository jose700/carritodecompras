<?php

#creamos la variable Email y Contraseña que fueron los datos del nombre que se creo en html
#para poder ingresar al sistema o a la siguiente pagina


$conexion=mysqli_connect("localhost","root", "","tienda");
if(isset($_POST['Iniciar'])){
$Email=$_POST['Email']; 
$Contraseña=$_POST['Contraseña'];
//Conectar a la base de datos
$consulta="SELECT * FROM empleados WHERE Email='$Email' and Contraseña='$Contraseña'";
$resultado=mysqli_query($conexion, $consulta);
$filas=mysqli_num_rows($resultado);
#creamos la variable filas y una funcion
if($filas>0){
  header("Location:Bienvenidos.php");
}
else{
#echo '<a class ="link" href="Bienvenidos.html"></a>';
echo "<script>alert('Correo electronico y/o Contraseñas Incorrectas!!!');</script>";
//echo" <center><br />" . "<h3>" . "Error de Autenticacion!" . "</h3> </center>";
 header("refresh:0; url=INICIARSESSION2.php");
}
mysqli_free_result($resultado);
mysqli_close($conexion);
}
?>