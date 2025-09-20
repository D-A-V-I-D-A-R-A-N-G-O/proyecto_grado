<?php

$dbhost = "127.0.0.1";
$dbuser = "peewee1";
$dbpass = "peewee";
$dbname = "clse";
$port = 3307;


$conexion = mysqli_connect ($dbhost, $dbuser, $dbpass, $dbname, $port);

if (!$conexion) {
    die("Error de conexion: " . mysqli_connect_error()) ;
}
  
?>