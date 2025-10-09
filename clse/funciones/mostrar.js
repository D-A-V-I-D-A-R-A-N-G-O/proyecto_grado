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