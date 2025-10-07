<?php 
    include("../../funciones/connect.php");
    session_start();
  if (!isset($_SESSION['rol']) || $_SESSION['rol'] !== 'ALUMNO') {
    header("Location: ../../index.php");
    exit();
}
    $sql = "SELECT * FROM flashcards WHERE id = 4";
    $resultado = mysqli_query($conexion, $sql);
    $fila = mysqli_fetch_assoc($resultado);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
    <link rel="stylesheet" href="../../css/navegacion.css">
    <link rel="shortcut icon" href="../../img/image.png" type="image/x-icon">
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
</header>
        <section id="contenido">
            <h1>Bienvenido a la sección de Tarjetas</h1>
            <p>Aquí podrás gestionar tus tarjetas de estudio.</p>
            <h1></h1>
            <p></p>
            <img src="<?php echo htmlspecialchars($fila['imgURL']) ?>" alt="">
        </section>
</body>
</html>