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
  imgUrl.addEventListener('input', img())
}
window.onload = imagen