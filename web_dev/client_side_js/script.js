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

var newDiv = document.createElement("div"); 
var newContent = document.createTextNode("Hi there and greetings!"); 
newDiv.appendChild(newContent); 

// add the newly created element and its content into the DOM 
 var currentDiv = document.getElementById("picture"); 
 document.body.insertBefore(newDiv, currentDiv);

 //add the text node to the newly created div.

