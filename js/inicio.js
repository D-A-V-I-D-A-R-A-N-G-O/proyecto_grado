async function obtenerPersonajes() {
    try {
        const response = await fetch('http://181.133.27.242:8080/API/personajes');
        const data = await response.json();
        const personajesContainer = document.getElementById('personajes-container');
        console.log(data); 
        data.forEach(personaje => {
            const personajeElement = document.createElement('div');
            personajeElement.classList.add('personaje');
            personajeElement.innerHTML = 
            `<div>
                <h2 id="nombre">${personaje.nombre}</h2>
                <div id="img">
                <img id="imgUrlS" src="${personaje.imgUrl}" alt="${personaje.nombre}"></div>
                <h3>APODO: ${personaje.apodo}</h3>
                <h3>DESCRIPCION: ${personaje.descripcion}</h3>
                <h3>EDAD: ${personaje.edad}<h3>
            </div>`;
            personajesContainer.appendChild(personajeElement);
        });
    } catch (error) {
        console.error("no se pudo hacer", error);
    }
}

window.onload = obtenerPersonajes;