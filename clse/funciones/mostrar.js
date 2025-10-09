function mostrar(id) {
    let targeta = document.getElementById(id);
    if (targeta.style.display === "none") {
        targeta.style.display = "flex";
    } else {
        targeta.style.display = "none";
    }
}