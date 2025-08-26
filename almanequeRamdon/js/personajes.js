// async function obtenerPersonajes() {
//     try {
//         const response = await fetch('http://localhost:8080/API/personajes');
//         const data = await response.json();
//         const personajesContainer = document.getElementById('personajes-container');
//         console.log(data); 
//         data.forEach(personaje => {
//             const personajeElement = document.createElement('div');
//             personajeElement.classList.add('personaje');
//             personajeElement.innerHTML = 
//             `<div id="${personaje.id}">
//                 <h2 id="nombre">${personaje.nombre}</h2>
//                 <div id="img">
//                 <img id="imgUrlS" src="${personaje.imgUrl}" alt="${personaje.nombre}">
//                 </div>
//                 <h3>APODO: ${personaje.apodo}</h3>
//                 <h3>DESCRIPCION: ${personaje.descripcion}</h3>
//                 <h3>EDAD: ${personaje.edad}</h3>
//                 <button id="eliminar" onclick="eLiminar()"></button>
//             </div>`;
//             personajesContainer.appendChild(personajeElement);
//         });
//     } catch (error) {
//         console.error("no se pudo hacer", error);
//     }
// } 

// window.onload = obtenerPersonajes;

// async function eLiminar() {
//   let Pepe = document.getElementById('lista').value
//    try {
//     const response = await fetch('http://localhost:8080/API/personajes/'+ Pepe, {
//       method: 'DELETE',
//       headers: {
//         'Content-Type': 'application/json',
//    }
//    });
//     const datos = await response.json();
//     console.log(datos);
//     window.location.reload();
//     alert('a sido exterminado')
//   } catch (error) {
//    console.error('No se pudo crear', error);
// }
// }

//Eliminar por parte de gpt

async function obtenerPersonajes() {
  try {
    const response = await fetch('http://localhost:8080/API/personajes');
    const lista = await response.json();
    const data = lista.reverse();
    const personajesContainer = document.getElementById('personajes-container');

    data.forEach(personaje => {
      const personajeElement = document.createElement('div');
      personajeElement.id = personaje.id
      personajeElement.classList.add('personaje');

      personajeElement.innerHTML = `
        <div id="personaje-${personaje.id}" class="perso">
          <h2>${personaje.nombre}</h2>
          <div id="contenedor-img">
            <img class="img" src="${personaje.imgUrl}" alt="${personaje.nombre}">
          </div>
          <h3>APODO: ${personaje.apodo}</h3>
          <h3>DESCRIPCIÓN: ${personaje.descripcion}</h3>
          <h3>EDAD: ${personaje.edad}</h3>
          <button class="eliminar-btn">Eliminar personaje</button>
        </div>
      `;

      // 🔥 Agregas funcionalidad de eliminación al botón
      const botonEliminar = personajeElement.querySelector('.eliminar-btn');
      botonEliminar.addEventListener('click', () => eLiminar(personaje.id));

      personajesContainer.appendChild(personajeElement);
    });
  } catch (error) {
    console.error("no se pudo hacer", error);
  }
}

window.onload = obtenerPersonajes;

async function eLiminar(id) {
  try {
    const response = await fetch(`http://localhost:8080/API/personajes/${id}`, {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
      }
    });
    const datos = await response.json();
    console.log(datos);
    const divEliminar = document.getElementById(`${id}`);
    if (divEliminar) divEliminar.remove();
    alert('Ha sido exterminado 😈');
  } catch (error) {
    console.error('No se pudo eliminar', error);
  }
}