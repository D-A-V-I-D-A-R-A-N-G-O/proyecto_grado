<?php
 include("../../funciones/connect.php");
 session_start();
  if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_pregunta = $_POST['id_pregunta'];
    $respuesta_usuario = $_POST['respuesta_usuario'];

    // Obtener la respuesta correcta de la base de datos
    $sql = "SELECT respuesta_correcta FROM preguntas WHERE id_tabla = $id_pregunta";
    $resultado = mysqli_query($conexion, $sql);
    $fila = mysqli_fetch_assoc($resultado);
    $respuesta_correcta = $fila['respuesta_correcta'];
    

    // Inicializar contadores si no existen
    if (!isset($_SESSION['correctas'])) {
        $_SESSION['correctas'] = 0;
    }
    if (!isset($_SESSION['incorrectas'])) {
        $_SESSION['incorrectas'] = 0;
    }

    // Comparar respuestas y actualizar contadores
    if ($respuesta_usuario === $respuesta_correcta) {
        $_SESSION['correctas']++;
    } else {
        $_SESSION['incorrectas']++;
    }

    // Redirigir de vuelta a la página de preguntas
    header("Location: crear.php");
    exit();
}
?>