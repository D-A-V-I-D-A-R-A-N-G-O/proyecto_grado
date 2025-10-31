
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
    <link rel="stylesheet" href="../CSS/targetas.css">
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
        </div>
</header>


        <section class="contenido">
          <div>
            <h1>Bienvenido a la sección de Tarjetas</h1>
            <p>Aquí podrás gestionar tus tarjetas de estudio.</p>
            <div class="materias" id="materias">
              <button onclick="mostrar_botones_tarjetas('CN')">Ciencias Naturales</button>
              <button onclick="mostrar_botones_tarjetas('M')">Matematicas</button>
              <button onclick="mostrar_botones_tarjetas('CS')">Ciencias Sociales</button>
              <button onclick="mostrar_botones_tarjetas('LL')">Literatura y Lenguaje</button>
            </div>
            <div class="botones_materia" id="botones_ciencias" style="display: none;">
                <?php
                echo '<button class="mostrar_materias" onclick="mostrar_botones_materias()">REGRESAR</button>';
                 $sql = "SELECT * FROM flashcards WHERE tipo='CN'"  ;
                $resultado = mysqli_query($conexion, $sql);
                while ($fila = mysqli_fetch_assoc($resultado)) {
                echo '<button class="'.$fila['tipo'].'" onclick="mostrar_tarjetas('.$fila['id'].')">'.$fila['titulo'].'</button>';
                };
                ?>
            </div>
            <div class="botones_materia" id="botones_sociales" style="display: none;">
                <?php
                echo '<button class="mostrar_materias" onclick="mostrar_botones_materias()">REGRESAR</button>';
                 $sql = "SELECT * FROM flashcards WHERE tipo='CS'"  ;
                $resultado = mysqli_query($conexion, $sql);
                while ($fila = mysqli_fetch_assoc($resultado)) {
                echo '<button class="'.$fila['tipo'].'" onclick="mostrar_tarjetas('.$fila['id'].')">'.$fila['titulo'].'</button>';
                };
                ?>
            </div>
            <div class="botones_materia" id="botones_literatura" style="display: none;">
                <?php
                echo '<button class="mostrar_materias" onclick="mostrar_botones_materias()">REGRESAR</button>';
                 $sql = "SELECT * FROM flashcards WHERE tipo='LL'"  ;
                $resultado = mysqli_query($conexion, $sql);
                while ($fila = mysqli_fetch_assoc($resultado)) {
                echo '<button class="'.$fila['tipo'].'" onclick="mostrar_tarjetas('.$fila['id'].')">'.$fila['titulo'].'</button>';
                };
                ?>
            </div>
            <div class="botones_materia" id="botones_matematicas" style="display: none;">
                <?php
                echo '<button class="mostrar_materias" onclick="mostrar_botones_materias()">REGRESAR</button>';
                 $sql = "SELECT * FROM flashcards WHERE tipo='M'"  ;
                $resultado = mysqli_query($conexion, $sql);
                while ($fila = mysqli_fetch_assoc($resultado)) {
                echo '<button class="'.$fila['tipo'].'" onclick="mostrar_tarjetas('.$fila['id'].')">'.$fila['titulo'].'</button>';
                };
                ?>
            </div>

            <div id="tarjetas">
            <?php
             $sql = "SELECT * FROM flashcards" ;
    $resultado = mysqli_query($conexion, $sql);
            while ($fila = mysqli_fetch_assoc($resultado)) {
echo '
<div id="'.$fila['id'].'" class="tarjeta" style="display:none;"> 

    <!-- PARTE 1 -->
    <div id="parte1'.$fila['id'].'" class="parte1">
        <h2>'.$fila['titulo'].'</h2>
        <img id="imagen" src="'.$fila['imgURL'].'" alt="">          
    </div>

    <!-- PARTE 2 -->
    <div id="parte2'.$fila['id'].'" class="parte2">
        <p>'.$fila['contenido'].'</p>
        <p>Notas: '.$fila['notas'].'</p>            
    </div>

    <!-- BOTONES PRINCIPALES -->
    <div id="botones_tarjetas'.$fila['id'].'">
        <button id="cerrar" onclick="cerrar_tarjetas('.$fila['id'].')">Cerrar</button>
        <button id="eliminar" onclick="eliminar_tarjeta('.$fila['id'].')">Eliminar</button>
        <button id="editar" onclick="editar_tarjeta('.$fila['id'].')">Editar</button>
        <button id="comentar" class="comentar" onclick="comentar_tarjeta('.$fila['id'].')">Comentar</button>
    </div>

    <!-- FORMULARIO EDITAR -->
    <div id="formu'.$fila['id'].'" class="formulario" style="display:none;">
        <form action="../FUNCIONES/editar.php" method="POST" name="editar">
            <p>Título</p>
            <input type="text" maxlength="40" name="titulo" value="'.$fila['titulo'].'" required>
            <p>Contenido</p>
            <textarea name="contenido" rows="5" required>'.$fila['contenido'].'</textarea>
            <p>Notas</p>
            <textarea name="notas" required>'.$fila['notas'].'</textarea>
            <p>imgURL</p>
            <input type="url" name="imgURL" value="'.$fila['imgURL'].'" required>
            <input type="hidden" name="rol" value="'.$_SESSION['rol'].'">
            <input type="hidden" name="id" value="'.$fila['id'].'">
            <input type="submit" class="botonn" name="editar" value="Guardar cambios">
        </form>    
        <button class="cerrar-form" onclick="cerrar_form('.$fila['id'].')">Cerrar formulario</button>
    </div>

    <!-- FORMULARIO COMENTARIO -->
    <div id="comentario'.$fila['id'].'" class="formulario-comentario" style="display:none;">
        <form action="../FUNCIONES/comentar.php" method="POST" name="comentar">
            <p>Escribe tu comentario:</p>
            <textarea name="comentario" rows="4" required></textarea>
            <input type="hidden" name="id" value="'.$fila['id'].'">
            <input type="hidden" name="rol" value="'.$_SESSION['rol'].'">
            <input type="submit" class="botonn" name="comentar" value="Publicar comentario">
        </form>
        <button class="cerrar-form" onclick="cerrar_comentario('.$fila['id'].')">Cerrar comentario</button>
    </div>
</div>';


          };
          ?>
          </div>
          </div>
        </section>
</body>
<script src="../FUNCIONES/mostrar.js"></script>

</html>
