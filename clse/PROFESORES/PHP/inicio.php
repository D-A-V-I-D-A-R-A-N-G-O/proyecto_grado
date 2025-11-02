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
    <link rel="stylesheet" href="../CSS/inicio.css">
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
    <?php  echo '<h2>Hola '.$_SESSION['name'].', bienvenido a FlashCards</h2>'?>
    <div class="intro-card" role="region" aria-label="Introducción al proyecto">
  <h2>Bienvenido</h2>
  <p>
    En esta página podrás encontrar material de estudio para tus principales clases,
    como ciencias naturales, matemáticas, español y sociales.
    También podrás crear tus propias tarjetas para almacenar tu conocimiento y compartirlo con tus profesores.
  </p>

  <p>Este proyecto fue creado con el objetivo de:</p>
  <ul>
    <li>Almacenar información de las clases</li>
    <li>Compartir el conocimiento entre estudiantes</li>
    <li>Ayudar a subir el promedio de los alumnos</li>
    <li>Promulgar una cultura de compañerismo y estudio</li>
  </ul>
</div>

<h2>¿Qué piensan sobre tí?</h2>
<?php 
        $sql = "SELECT * FROM flashcards WHERE autor = '{$_SESSION['name']}'";
    $resultado = mysqli_query($conexion, $sql);
            while ($fila = mysqli_fetch_assoc($resultado)) {
    echo '
     <div class="comentario">
     <h3>En: '.$fila['titulo'].'</h3>
    <p>'.$fila['comentarios'].'</p>
</div>
    ';

};
?>

</section>
   
 
</body>
</html>
