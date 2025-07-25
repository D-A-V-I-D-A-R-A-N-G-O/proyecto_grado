function img() {
  try {
    let imgUrl = document.getElementById("imgUrl")
    console.log(imgUrl.value)
   if(imgUrl.value === "")
      document.getElementById("contenedor-imagen").innerHTML = '<p>No ha montado imagen</p>'
    else {
      document.getElementById("contenedor-imagen").innerHTML = `<img src="${imgUrl.value}" alt="logo" id="pre-imagen">`
    }
  } catch (error) {
        console.error("no se pudo hacer", error);    
  }
}

function imagen() {
  const imgUrl = document.getElementById("imgUrl")
  imgUrl.addEventListener('input', img)
}
window.onload = imagen

    async function Crear() {
        try {
            const nombre = document.getElementById('nombre').value
            const apodo = document.getElementById('apodo').value
            const descripcion = document.getElementById('descripcion').value
            const edad = document.getElementById('edad').value
            const imgUrl = document.getElementById('imgUrl').value

            if (!nombre || !apodo || !descripcion ||!edad || !imgUrl) {
              return alert('Todos los campos son obligatorios');
          }

            const response = await fetch('http://18.133.27.242:8080/API/personajes', {
              
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                nombre,
                apodo, 
                descripcion,
                edad,  
                imgUrl
                
              }),
            });
    
            const datos = await response.json();
            console.log(datos);
            window.location.replace("/html/Personajes.html")
          } catch (error) {
            console.error('No se pudo crear', error);
        }
    }
    