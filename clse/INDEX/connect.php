<?php

$dbhost = "181.133.27.242";
$dbuser = "lector";
$dbpass = "LECTOR";
$dbname = "clase";
$port = 3306;

$conexion = mysqli_connect ($dbhost, $dbuser, $dbpass, $dbname, $port);

if (!$conexion) {
    die("Error de conexion: " . mysqli_connect_error()) ;
}
  
?>