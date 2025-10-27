<?php
function prueba() {
    echo "Hola, esta es una función de prueba.";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>prueba</title>
</head>
<body>
    <div id="prueba">vvv</div>
    <button onclick="prueba()">Ejecutar Prueba</button>
</body>
    <script>
        function prueba() {
            document.getElementById('prueba').innerText ="<?php prueba(); ?>";
        }
    </script>
</html>