console.log("it's linked up!");

var pict = document.getElementById("think");

function addRedBorder(event){
	event.target.style.border = "red dashed 2px";
	console.log(event)
}

pict.addEventListener("click", addRedBorder);

var para = document.getElementById("lorem");

function showParagraph(event){
	para.style.display = "block";
}
var header = document.getElementById("header")

header.addEventListener("click", showParagraph)

para.addEventListener("click", addRedBorder)

