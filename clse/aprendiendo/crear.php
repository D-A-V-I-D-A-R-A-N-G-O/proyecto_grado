<?php


?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Preguntas</title>
    <link rel="stylesheet" href="styles/style3.css">
</head>
<body>
    <h2> AQUÍ LA PREGUNTA </h2> <!-- < ?php echo htmlspecialchars($pregunta['pregunta_tabla']); ? > -->

    <form> <!-- action="procesar.php" method="POST" -->
        <input type="hidden" name="id_pregunta" value=""> <!-- < ?php echo $pregunta['id_tabla']; ? > -->

        <label>
            <input type="radio" name="respuesta_usuario" value="a" required>
                opcion_a  <!-- < ?php echo htmlspecialchars($pregunta['opcion_a']); ? > -->
        </label><br>

        <label>
            <input type="radio" name="respuesta_usuario" value="b">
                opcion_b <!-- < ?php echo htmlspecialchars($pregunta['opcion_b']); ? > -->
        </label><br>

        <button type="submit">Responder</button>
    </form>

    <hr>
    <p>Correctas:</p> <!-- < ?php echo $_SESSION['correctas']; ? > --> 
    <p>Incorrectas:</p>  <!-- < ?php echo $_SESSION['incorrectas']; ? > -->
</body>
</html>