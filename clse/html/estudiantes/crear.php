<?php
include("../../funciones/connect.php");
session_start();

if (!isset($_SESSION['rol']) || $_SESSION['rol'] !== 'ALUMNO') {
    header("Location: ../../index.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
    <link rel="stylesheet" href="../../css/navegacion.css">
    <link rel="shortcut icon" href="../../img/F. C (1).png" type="image/x-icon">
    <link rel="stylesheet" href="../../css/contenido.css">
</head>
<body>
        <header id="cabeza">
        <div id="menu">
            <div id="logos">
            <img id="logo" src="../../img/image.png" alt="">
            </div>
        <a id="boton" href="./inicio.php">Inicio</a>
        <a id="boton" href="./tarjetas.php">Tarjetas</a>
        <a id="boton" href="./crear.php">Crear</a>
        <a id="out" href="../../index.php"><img id="salir" src="../../img/logout.jpg" alt=""></a>
        </div>
</header>
   <section class="contenido">
    <div>
        <form action="../../funciones/make.php" method="POST" name="crear">
            <p>Titulo</p>
            <input type="text" maxlength="40" name="titulo" required>
            <p>Contenido</p>
            <input type="text" name="contenido" required>
            <p>Notas</p>
            <input type="text" name="notas" required>
            <p>imgURL</p>
            <input type="url" name="imgURL" required>
            <input value="<?php echo $_SESSION['name'] ?>" name="creador" style="display: none;">
            <input type="submit" name="crear">
        </form>
    </div>
   </section>
</body>
</html>