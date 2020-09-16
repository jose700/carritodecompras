<?php


#hicimos la conexion a la base de datos

$conexion=mysqli_connect("localhost","root", "","bdempleados");

{

    die("La conexion falló: " . $conexion->connect_error);

   }

?>