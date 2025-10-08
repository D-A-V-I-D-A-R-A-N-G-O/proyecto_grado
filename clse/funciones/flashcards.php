<?php

include("../../funciones/connect.php");
session_start();

if (!isset($_SESSION['rol']) || $_SESSION['rol'] !== 'ALUMNO') {
    header("Location: ../../index.php");
    exit();
}

?>