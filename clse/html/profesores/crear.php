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
    <link rel="stylesheet" href="../../css/navegacion.css">
    <link rel="shortcut icon" href="../../img/F. C (1).png" type="image/x-icon">
    <link rel="stylesheet" href="../../css/contenido.css">
    <link rel="stylesheet" href="../../css/crear.css">

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
    <div id="formu">
        <form action="../../funciones/make.php" method="POST" name="crear">
            <p>Título</p>
            <input type="text" maxlength="40" name="titulo" required>
            <p>Contenido</p>
            <textarea type="text" name="contenido" id="contenido" row="10"  size="50"  required></textarea>
            <p>Notas</p>
            <input type="text" name="notas" required>
            <p>imgURL</p>
            <input type="url" name="imgURL" id="imgUrl" required>
            <?php echo '<input type="hidden" value="'.$_SESSION['nombre'].'" name="creador">'; ?>
            <label>
                Seleccione la materia
                <select name="materia" required>
                    <option value="">Seleccione la materia</option>
                    <option value="M">Matemáticas</option>
                    <option value="CN">Ciencias Naturales</option>
                    <option value="CS">Ciencias Sociales</option>
                    <option value="LL">Lenguaje y Literatura</option>
                </select>
            </label>
            <input type="submit" class="botonn" name="crear" value="Crear">
        </form>
        <div id="imagen">
        <h3>Pre Ver Imagen</h3>
        <div id="contenedor-imagen"></div>
    </div>
    </div>
   </section>
</body>
<script src="../../funciones/mostrar.js"></script>
<script src="../../funciones/img.js">
</script>
</html>