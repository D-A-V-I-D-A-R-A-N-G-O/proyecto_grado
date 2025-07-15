async function obtenerPersonajes() {
    try {
        const response = await fetch('http://181.133.27.242:8080/API/personajes');
        const data = await response.json();
        const personajesContainer = document.getElementById('botones');
        console.log(data); 
        data.forEach(personaje => {
            const personajeElement = document.createElement('div');
            personajeElement.classList.add('personaje');
            personajeElement.innerHTML = 
            `<button id="${personaje.id}">${personaje.nombre}</button>`;
            personajesContainer.appendChild(personajeElement);
        });
    } catch (error) {
        console.error("no se pudo hacer", error);
    }
}
async function obtenerlistaPersonajes() {
  try {
      const response = await fetch('http://181.133.27.242:8080/API/personajes');
      const data = await response.json();
      const listaContainer = document.getElementById('lista');
      listaContainer.innerHTML = ' <option value="">Seleccione</option>';  
      data.forEach(personaje => {
          const personajeElement = document.createElement('option');
          personajeElement.value = personaje.id;
          personajeElement.textContent = personaje.nombre;
          listaContainer.appendChild(personajeElement);
             document.getElementById('todo').style.display = 'none'
      });
      console.log(data);
  } catch (error) {
      console.error("no se pudo hacer", error);
  }
}

function reciBir() { 
    let idPersonaje = document.getElementById('lista').value
    
    try {
      fetch('http://181.133.27.242:8080/API/personajes/'+ idPersonaje)
    .then(respuesta => respuesta.json())
    .then(datos => {
      document.getElementById('formularioo').style.display = 'none';
     
        if (!datos.nombre) {
          return alert("ese man no existe"),
          window.location.reload()
        } else {
          document.getElementById('personaje-container').innerHTML =    
            `
                <h2 >${datos.nombre}</h2>
                <img src="${datos.imgUrl}" alt="${datos.nombre}">
                <h2>apodo: ${datos.apodo}</h2>
                <h2>descripcion: ${datos.descripcion}</h2>
                <button id="eDitar" onclick="eDitar()" >EDITAR</button>
            
              `
              document.getElementById('todo').style.display = 'flex'
              document.getElementById('personaje-container').style.display = 'flex'
        }
      
    })
    } catch (error) {
      console.error('no se pudo encontrar', error)
      window.location.reload()

    }
  }
  
function eDitar() {
        
  let idPersonaje = document.getElementById('lista').value 
    
    try {
      fetch('http://181.133.27.242:8080/API/personajes/'+ idPersonaje)
    .then(respuesta => respuesta.json())
    .then(datos => {
      
      document.getElementById('formularioo').innerHTML =    
            `
        <h2>Nombre</h2>
        <input type="text" id="nombre" placeholder="${datos.nombre}">
        <h2>Alimentación</h2>
        <input type="text" id="apodo" placeholder="${datos.apodo}">
        <h2>Viene</h2>
        <input type="text" id="descripcion"  placeholder="${datos.descripcion}">
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
  function moDificar() {
    let idPersonaje = document.getElementById('lista').value
     
          fetch('http://181.133.27.242:8080/API/personajes/'+ idPersonaje, {
          method: 'PUT',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            nombre: document.getElementById('nombre').value,
            apodo: document.getElementById('apodo').value,
            descripcion : document.getElementById('descripcion').value,
            imgUrl: document.getElementById('imgUrl').value
          }),
        })
        .then(respuesta => respuesta.json())
        .then(datos => {
          console.log(datos);
          reciBir(); 
        })
        .catch(error => 
          console.error('no se pudo modificar', error));
      }
      

      async function cRear() {      
        try {
           
            const response = await fetch('http://181.133.27.242:8080/API/personajes');
            const data = await response.json();
           
            document.getElementById('formularioo').innerHTML =    

            `      
            <h2>personaje nuevo</h2>
                  <h2>Nombre</h2>
                  <input type="text" id="nombre" placeholder="NOMBRE">
                  <h2>Alimentación</h2>
                  <input type="text" id="apodo" placeholder="APODO">
                  <h2>Viene</h2>
                  <input type="text" id="descripcion"  placeholder="DESCRIPCION">
                  <h2>URL de la imagen</h2>
                  <input type="text" id="imgUrl" placeholder="URL DE IMAGEN">
                  <button onclick="mAke()" id="guardar">Guardar</button>
            `
              
            document.getElementById('todo').style.display = 'flex';
            document.getElementById('formularioo').style.display = 'flex';
            document.getElementById('personaje-container').style.display = 'none'

        } catch (error) {
            console.error('No se pudo encontrar', error);
        }
    }
    
    async function mAke() {
        try {
            const nombre = document.getElementById('nombre').value
            const apodo = document.getElementById('apodo').value
            const descripcion = document.getElementById('descripcion').value
            const imgUrl = document.getElementById('imgUrl').value

            if (!nombre || !apodo || !descripcion || !imgUrl) {
              return alert('Todos los campos son obligatorios');
          }

            const response = await fetch('http://181.133.27.242:8080/API/personajes', {
              
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                nombre,
                apodo, 
                descripcion,  
                imgUrl
                
              }),
            });
    
            const datos = await response.json();
            console.log(datos);
            await reciBir();  
            obtenerlistaAves();

          } catch (error) {
            console.error('No se pudo crear', error);
        }
    }
    
async function eLiminar() {
  let Pepe = document.getElementById('lista').value
   try {
    const response = await fetch('http://181.133.27.242:8080/API/personajes/'+Pepe, {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
   }
   });
    const datos = await response.json();
    console.log(datos);
    window.location.reload();
    alert('a sido exterminado')
  } catch (error) {
   console.error('No se pudo crear', error);
}
}
  
async function img() {
  let imgUrl = document.getElementById("imgUrl")
    if(imgUrl.value === null)
      document.getElementById("imagen").innerHTML = '<p>No ha montado imagen</p>'
    else {
      document.getElementById("imagen").innerHTML = '<img src="${}" alt="logo" id="logo">'
    }
}