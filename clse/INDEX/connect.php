<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "clase";
$port = 3306;

$conexion = mysqli_connect ($dbhost, $dbuser, $dbpass, $dbname, $port);

if (!$conexion) {
    die("Error de conexion: " . mysqli_connect_error()) ;
}
  
?>