function Make() {
    const crear = document.getElementById('Crear');
    const editar = document.getElementById('Editar');
    crear.style.display = 'flex';
    editar.style.display = 'none';
}
function Edit() {
    const crear = document.getElementById('Crear');
    const editar = document.getElementById('Editar');
    crear.style.display = 'none';
    editar.style.display = 'flex';
}