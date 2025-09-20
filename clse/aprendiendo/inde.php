<?php
    include("./connect.php");
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="./inde.css">
</head>
<body>
    <div class="contenedor">
        <h1>Iniciar Sesión</h1>

        <form action="check.php" method="POST">
            <label>
                Nombre:<br>
                <input type="text" name="nombre" required>
            </label><br><br>

            <label>
            Rol:<br>
                <select name="rol" required>
                <option value="">Seleccione...</option>
                <option value="estudiante">Estudiante</option>
                <option value="docente">Maestro</option>
                </select>
            </label><br><br>

            <label>
                Contraseña:<br>
                <input type="password" name="password" required>
            </label><br><br>

            <button type="submit" name="entrar">Entrar</button>
        </form>
    </div>
</body>
</html>