<?php
    include("./connect.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <link rel="stylesheet" href="./index.css">
    <link rel="shortcut icon" href="./img/F. C (1).png" type="image/x-icon">
</head>
<body>
    <header>
        <h1 class="titulo">Bienvenidos a FlashCards</h1>
    </header>

    <div>
          <form action="./check.php" method="POST">
            <p>Ingresa el usuario</p>
            <input id="user" type="text" maxlength="10" placeholder="usuario" name="name" required>
            <p>Ingresa la contraseña</p>
            <input id="password" type="password" maxlength="10" placeholder="contraseña" name="password" required>
            <input type="submit" id="check"  name="entrar"  value="¡Aprende ahora!" >
        </form>
    </div>
      
</body>
</html>