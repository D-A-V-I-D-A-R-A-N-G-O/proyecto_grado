<?php
include("connect.php");
session_start();

if (isset($_POST['comentar'])) {
    $rol = $_SESSION['rol'];
    $id = mysqli_real_escape_string($conexion, $_POST["id"]);
    $comentario = mysqli_real_escape_string($conexion, $_POST["comentario"]);
    $usuario = $_SESSION['name']; 

    $sql = "UPDATE flashcards 
            SET comentarios = CONCAT(
                COALESCE(comentarios, ''), 
                '\n', 
                '$comentario — comentado por $usuario'
            )
            WHERE id = $id";

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
