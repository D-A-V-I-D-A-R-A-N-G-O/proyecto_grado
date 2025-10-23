function mostrar(id) {
    let tarjeta = document.getElementById(id);
    let botones = document.querySelectorAll(
        "#botones_ciencias button, #botones_sociales button, #botones_literatura button, #botones_matematicas button"
    );
    tarjeta.style.display = "flex";
    botones.forEach(boton => boton.style.display = "none");
}

function cerrar(id) {
    let targeta = document.getElementById(id);
let botones = document.querySelectorAll(
        "#botones_ciencias button, #botones_sociales button, #botones_literatura button, #botones_matematicas button"
    );
    targeta.style.display = "none";
    botones.forEach(boton => boton.style.display = "flex");
}
function filtrar(tipo) {
    let sociales = document.getElementById("botones_sociales");
    let lenguaje = document.getElementById("botones_literatura");
    let matematicas = document.getElementById("botones_matematicas");
    let ciencias = document.getElementById("botones_ciencias");
    switch (tipo) {
        case "M":
             matematicas.style.display = "flex";
             sociales.style.display = "none";
             lenguaje.style.display = "none";
             ciencias.style.display = "none";
            break;
    
        case "CN":
             matematicas.style.display = "none";
             sociales.style.display = "none";
             lenguaje.style.display = "none";
             ciencias.style.display = "flex";
                        
            break;
    
        case "CS":
             matematicas.style.display = "none";
             sociales.style.display = "flex";
             lenguaje.style.display = "none";
             ciencias.style.display = "none";
            
            break;
    
        case "LL":
             matematicas.style.display = "none";
             sociales.style.display = "none";
             lenguaje.style.display = "flex";
             ciencias.style.display = "none";
            
            break;
    
        default:
            break;
    }
}