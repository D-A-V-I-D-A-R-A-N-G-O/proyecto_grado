<?php

$dbhost = "localhost";
$dbuser = "lector";
$dbpass = "LECTOR";
$dbname = "clase";
$port = 3307;





$conexion = mysqli_connect ($dbhost, $dbuser, $dbpass, $dbname, $port);

if (!$conexion) {
    die("Error de conexion: " . mysqli_connect_error()) ;
}
  
?>