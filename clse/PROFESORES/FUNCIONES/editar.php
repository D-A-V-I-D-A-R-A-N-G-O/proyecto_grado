<?php
include("connect.php");
session_start();

if (isset($_POST['editar'])) {
    $rol = $_SESSION['rol'];
    $id = mysqli_real_escape_string($conexion, $_POST["id"]);
    $titulo = mysqli_real_escape_string($conexion, $_POST["titulo"]);
    $contenido = mysqli_real_escape_string($conexion, $_POST["contenido"]);
    $imgURL = mysqli_real_escape_string($conexion, $_POST["imgURL"]);
    $notas = mysqli_real_escape_string($conexion, $_POST["notas"]);
    

    $_sql = "UPDATE `flashcards` SET `titulo` = '$titulo', `contenido`='$contenido', `imgURL`='$imgURL', `notas`='$notas' WHERE  `flashcards`.`id`=$id ; ";
    $resultado = mysqli_query($conexion, $_sql); 
    if ($resultado) {
        if ($rol === 'DOCENTE') {
            echo "<script>
            alert('Tarjeta editada con éxito');
            window.location = '../PHP/tarjetas.php';
            </script>";
            exit();
    } else {
        echo "<script>
        alert('No se pudo editar la tarjeta');
        window.location = '../PHP/tarjetas.php';
        </script>";
        exit();  
    }
}}
?>
