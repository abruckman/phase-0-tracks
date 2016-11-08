console.log("it's linked up!");

var pict = document.getElementById("think");

function addRedBorder(event){
	event.target.style.border = "red dashed 2px";
}

pict.addEventListener("click", addRedBorder);