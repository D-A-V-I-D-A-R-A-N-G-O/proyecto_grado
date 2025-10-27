<?php
include("./connect.php"); // Ajusta si está en otra carpeta

$id = $_GET['id']; // Recibe el id desde el enlace o fetch

$sql = "DELETE FROM flashcards WHERE id = $id";

if (mysqli_query($conexion, $sql)) {
    echo "Tarjeta eliminada correctamente";
} else {
    echo "Error al eliminar: " . mysqli_error($conexion);
}

mysqli_close($conexion);
?>
