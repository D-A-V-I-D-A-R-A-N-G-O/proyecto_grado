<?php
include("../../funciones/connect.php");
session_start();

if (!isset($_SESSION['rol']) || $_SESSION['rol'] !== 'DOCENTE') {
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
    <link rel="stylesheet" href="../../css1/navegacion.css">
    <link rel="stylesheet" href="../../css1/contenido.css">
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
        <a id="out" href="../../index.php"><img id="salir" src="../../img/logout.jpg" alt=""></a>
</header>
<section class="contenido">   
     <h2>Hola, <?php echo htmlspecialchars($_SESSION['name']); ?>, eres un <?php echo htmlspecialchars($_SESSION['rol']); ?></h2>
</section>
   
 
</body>
</html>