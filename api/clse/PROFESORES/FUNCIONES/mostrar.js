function mostrar_tarjetas(id) {
    let tarjeta = document.getElementById(id);
    let botones = document.querySelectorAll(
        "#botones_ciencias button, #botones_sociales button, #botones_literatura button, #botones_matematicas button"
    );
    tarjeta.style.display = "flex";
    botones.forEach(boton => boton.style.display = "none");
}

function cerrar_tarjetas(id) {
    let targeta = document.getElementById(id);
    let botones = document.querySelectorAll(
        "#botones_ciencias button, #botones_sociales button, #botones_literatura button, #botones_matematicas button"
    );
    targeta.style.display = "none";
    botones.forEach(boton => boton.style.display = "flex");
}
function mostrar_botones_tarjetas(tipo) {
    let sociales = document.getElementById("botones_sociales");
    let lenguaje = document.getElementById("botones_literatura");
    let matematicas = document.getElementById("botones_matematicas");
    let ciencias = document.getElementById("botones_ciencias");
    let materias = document.getElementById("materias");

    
    switch (tipo) {
        case "M":
             matematicas.style.display = "flex";
             sociales.style.display = "none";
             lenguaje.style.display = "none";
             ciencias.style.display = "none";
             materias.style.display = "none";
            break;
    
        case "CN":
             matematicas.style.display = "none";
             sociales.style.display = "none";
             lenguaje.style.display = "none";
             ciencias.style.display = "flex";
             materias.style.display = "none";
            break;
    
        case "CS":
             matematicas.style.display = "none";
             sociales.style.display = "flex";
             lenguaje.style.display = "none";
             ciencias.style.display = "none";
             materias.style.display = "none";
            
            break;
    
        case "LL":
             matematicas.style.display = "none";
             sociales.style.display = "none";
             lenguaje.style.display = "flex";
             ciencias.style.display = "none";
             materias.style.display = "none";
            
            break;
    
        default:
            break;
    }
}
function mostrar_botones_materias() {
    let materias = document.getElementById("materias");
    materias.style.display = "flex";
    let botones = document.querySelectorAll(
        "#botones_ciencias, #botones_sociales, #botones_literatura, #botones_matematicas"
    );
    botones.forEach(boton => boton.style.display = "none");
}
    
function eliminar_tarjeta(id) {
    if (confirm("¿Eliminar esta tarjeta?")) {
        fetch(`../FUNCIONES/eliminar_tarjeta.php?id=${id}`)
            .then(r => r.text())
            .then(alert);
        document.getElementById(id).remove(); 
        window.location.reload();
    }
}
function editar_tarjeta(id) {
    document.getElementById("parte1" + id).style.display = "none";
    document.getElementById("parte2" + id).style.display = "none";
    document.getElementById("botones_tarjetas" + id).style.display = "none";

    document.getElementById("formu" + id).style.display = "flex";
}

function cerrar_form(id) {
    document.getElementById("parte1" + id).style.display = "flex";
    document.getElementById("parte2" + id).style.display = "flex";
    document.getElementById("botones_tarjetas" + id).style.display = "flex";
    document.getElementById("formu" + id).style.display = "none";
}

function comentar_tarjeta(id) {
    document.getElementById("parte1" + id).style.display = "none";
    document.getElementById("parte2" + id).style.display = "none";
    document.getElementById("botones_tarjetas" + id).style.display = "none";
    document.getElementById("comentario" + id).style.display = "flex";
}

function cerrar_comentario(id) {
    document.getElementById("parte1" + id).style.display = "flex";
    document.getElementById("parte2" + id).style.display = "flex";
    document.getElementById("botones_tarjetas" + id).style.display = "flex";
    document.getElementById("comentario" + id).style.display = "none";
}