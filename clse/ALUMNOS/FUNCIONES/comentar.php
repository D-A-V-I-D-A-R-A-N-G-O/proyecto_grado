<?php
include("connect.php");
session_start();

if (isset($_POST['comentar'])) {
    $tarjeta = mysqli_real_escape_string($conexion, $_POST["tarjeta"]);
    $comentario = mysqli_real_escape_string($conexion, $_POST["comentario"]);
    $creador = mysqli_real_escape_string($conexion, $_POST["creador"]);
    $usuario = $_SESSION['name']; 

    $sql = "INSERT INTO `comentarios` ( `comentario`, `comentador`, `tarjeta`, `autor_tarjeta`) VALUES ( '$comentario', '$usuario', '$tarjeta', '$creador');";

    $resultado = mysqli_query($conexion, $sql);

    if ($resultado) {
        echo "<script>
        alert('Comentario agregado con éxito');
        window.location = '../PHP/tarjetas.php';
        </script>";
        exit();
    } else {
        echo "<script>
        alert('No se pudo agregar el comentario');
        window.location = '../PHP/tarjetas.php';
        </script>";
        exit();
    }
}
?>