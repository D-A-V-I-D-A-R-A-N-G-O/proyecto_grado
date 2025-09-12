function eDitar() {
        
  let Pepe = document.getElementById('lista').value 
    
    try {
      fetch('http://localhost:8080/API/personajes/'+Pepe)
    .then(respuesta => respuesta.json())
    .then(datos => {
      let caRita = () => {
        let pepe
        if (datos.Viene === "Mucho") { 
            pepe = [datos.Viene, "😁"];
        } else if (datos.Viene === "A Veces") { 
            pepe = [datos.Viene, "😐"];
        } else if (datos.Viene === "Casi Siempre") {
            pepe = [datos.Viene,  "😅"];
        } else if  (datos.Viene === "Ya No") {
            pepe = [datos.Viene, "😔"];
        } else if(datos.Viene)
            pepe = [datos.Viene]
        return pepe}
      document.getElementById('formularioo').innerHTML =    
            `
        <h2>Nombre</h2>
        <input type="text" id="nombre" placeholder="${datos.nombre}">
        <h2>Alimentación</h2>
        <input type="text" id="alimento" placeholder="${datos.alimentacion}">
        <h2>Viene</h2>
        <input type="text" id="viene"  placeholder="${caRita()}">
        <h2>URL de la imagen</h2>
        <input type="url" id="imgUrl" placeholder="url de la imagen">
          <div id="boton">
            <button onclick="moDificar()"  id="moDificar">GUARDAR</button>
            <button id="borrar" onclick="eLiminar()">BORRAR</button>
        </div>
        `
    document.getElementById('formularioo').style.display = 'flex';
    })
    } catch (error) {
      console.error('no se pudo encontrar', error)
    }
}

async function listaPersonajes() {
  try {
      const response = await fetch('http://localhost:8080/API/personajes/');
      const data = await response.json();
      const listaContainer = document.getElementById('lista');
      data.forEach(personaje => {
          const personajeElement = document.createElement('button');
          personajeElement.value = personaje.id;
          personajeElement.textContent = personaje.nombre;
          listaContainer.appendChild(personajeElement);
      });
      console.log(data);
  } catch (error) {
      console.error("no se pudo hacer", error);
  }
}
window.onload = listaPersonajes;