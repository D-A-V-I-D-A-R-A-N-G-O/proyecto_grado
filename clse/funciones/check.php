<?php
include("connect.php");
    session_start();

    if (isset($_POST['entrar'])) {
        $nombre_temporal = mysqli_real_escape_string($conexion, $_POST["name"]);
        $password_temporal = mysqli_real_escape_string($conexion, $_POST["password"]);
        $_sql = "SELECT * FROM users
        WHERE ti = '$nombre_temporal' AND password = '$password_temporal' ";
        $resultado = mysqli_query($conexion, $_sql); 

        if(mysqli_num_rows($resultado) == 1) {
            $fila = mysqli_fetch_assoc($resultado);
            session_start();
            $_SESSION['nombre_usuario'] = $fila['name'];
            header("Location: ../html/estudiantes/inicio.php");
            exit();
        }else {
            echo "<script>
            alert('Usuario o contraseña incorrecta');
            window.location = '../index.php';
            </script>";
        }
    }
?>