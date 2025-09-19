<?php

$dbhost = "181.133.27.242";
$dbuser = "peewee";
$dbpass = "peewee0124";
$dbname = "clse";

$conexion = mysqli_connect ($dbhost, $dbuser, $dbpass, $dbname);

if (!$conexion) {
    die("Error de conexion" .mysqli_connect()) ;
}
  


?>