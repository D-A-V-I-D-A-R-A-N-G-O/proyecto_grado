<?php
include("connect.php");
session_start();

if (isset($_POST['crear'])) {
    $autor = mysqli_real_escape_string($conexion, $_POST["creador"]);
    $titulo = mysqli_real_escape_string($conexion, $_POST["titulo"]);
    $contenido = mysqli_real_escape_string($conexion, $_POST["contenido"]);
    $imgURL = mysqli_real_escape_string($conexion, $_POST["imgURL"]);
    $notas = mysqli_real_escape_string($conexion, $_POST["notas"]);


    $_sql = "INSERT INTO `flashcards` (`id`, `titulo`, `contenido`, `imgURL`, `notas`, `autor`) VALUES (NULL, '$titulo', '$contenido', '$imgURL', '$notas', '$autor')";
    $resultado = mysqli_query($conexion, $_sql); 
    if ($resultado) {
        echo "<script>
        alert('Tarjeta creada con éxito');
        window.location = '../html/estudiantes/tarjetas.php';
        </script>";
        exit();
    } else {
        echo "<script>
        alert('No se pudo crear la tarjeta');
        window.location = '../html/estudiantes/inicio.php';
        </script>";
        exit();
    }
}
?>