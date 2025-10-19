
<?php 
    include("../../funciones/connect.php");
    session_start();
  if (!isset($_SESSION['rol']) || $_SESSION['rol'] !== 'DOCENTE') {
    header("Location: ../../index.php");
    exit();
}

?>
<!DOCTYPE php>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
    <link rel="stylesheet" href="../../css1/navegacion.css">
    <link rel="stylesheet" href="../../css1/contenido.css">
    <link rel="stylesheet" href="../../css1/targetas.css">
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
          <div>
            <h1>Bienvenido a la sección de Tarjetas</h1>
            <p>Aquí podrás gestionar tus tarjetas de estudio.</p>
            <div id="botones" style="display: flex;">
                <?php 
                 $sql = "SELECT * FROM flashcards"  ;
                $resultado = mysqli_query($conexion, $sql);
                while ($fila = mysqli_fetch_assoc($resultado)) {
                echo '<button class="botonn" onclick="mostrar('.$fila['id'].')">'.$fila['titulo'].'</button>';
                };
                ?>
            </div>

            <div id="tarjetas">
            <?php
             $sql = "SELECT * FROM flashcards" ;
    $resultado = mysqli_query($conexion, $sql);
            while ($fila = mysqli_fetch_assoc($resultado)) {
            echo '
            <div id="tarjetas">
            <div id="'.$fila['id'].'" class="tarjeta" style="display:none;"> 
            <div id="parte1">
            <h2>'.$fila['titulo'].'</h2>
            <img id="imagen" src="'.$fila['imgURL'].'" alt="">          
            </div>
            <div id="parte2" >
            <p>'.$fila['contenido'].'</p>
            <p>Notas: '.$fila['notas'].'</p>
           <p>Autor: '.$fila['autor'].'</p>            
           
            </div>
            <button id="cerrar" onclick="cerrar('.$fila['id'].')">Cerrar</button>
            </div>
            </div>
           ';
          };
          ?>
          </div>
          </div>
        </section>
</body>
<script src="../../funciones/mostrar.js"></script>

</html>