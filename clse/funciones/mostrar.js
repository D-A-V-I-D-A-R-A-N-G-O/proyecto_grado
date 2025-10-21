function mostrar(id) {
    let targeta = document.getElementById(id);
    let botones = document.getElementById("botones");
    if (targeta.style.display === "none") {
        targeta.style.display = "flex";
        botones.style.display = "none";
    } else {
        targeta.style.display = "none";
    }

}
function cerrar(id) {
    let targeta = document.getElementById(id);
    let botones = document.getElementById("botones");
    if (targeta.style.display === "flex") {
        targeta.style.display = "none";
        botones.style.display = "flex";
    } else {
        targeta.style.display = "flex";
    }
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