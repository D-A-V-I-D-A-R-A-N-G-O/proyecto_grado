<?php
include("connect.php");

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (isset($_POST['entrar'])) {
    $nombre_temporal = mysqli_real_escape_string($conexion, $_POST["name"]);
    $password_temporal = mysqli_real_escape_string($conexion, $_POST["password"]);
    
    $_sql = "SELECT * FROM usuarios
    WHERE ti = '$nombre_temporal' AND password = '$password_temporal'";
    $resultado = mysqli_query($conexion, $_sql);

    if (mysqli_num_rows($resultado) == 1) {
        $fila = mysqli_fetch_assoc($resultado);

        // Guardamos los datos del usuario en la sesión
        $_SESSION = $fila;

        if ($fila['rol'] == 'DOCENTE') {
            header("Location: ../PROFESORES/PHP/inicio.php");
            exit();
        } elseif ($fila['rol'] == 'ALUMNO') {
            header("Location: ../ALUMNOS/PHP/inicio.php");
            exit();
        }
    } else {
        echo "<script>
        alert('Usuario o contraseña incorrecta');
        window.location = './index.php';
        </script>";
    }
}
?>
