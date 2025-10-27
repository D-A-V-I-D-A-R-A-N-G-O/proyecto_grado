<?php
include("../FUNCIONES/connect.php");
session_start();

if (!isset($_SESSION['rol']) || $_SESSION['rol'] !== 'DOCENTE') {
    header("Location: ../../INDEX/");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
    <link rel="stylesheet" href="../CSS/navegacion.css">
    <link rel="stylesheet" href="../CSS/contenido.css">
    <link rel="shortcut icon" href="../../img/F. C (1).png" type="image/x-icon">
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
        <a id="out" href="../../INDEX/"><img id="salir" src="../../img/logout.jpg" alt=""></a>
</header>
<section class="contenido">   
     <h2>Bienvenido, <?php echo htmlspecialchars($_SESSION['name']); ?>, y soy <?php echo htmlspecialchars($_SESSION['rol']); ?></h2>
</section>
   
 
</body>
</html>