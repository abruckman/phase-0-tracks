$( init );

function init() {
	var picture = $('img.think');
  picture.fadeOut('slow');
  picture.fadeIn('slow');
}

function reveal(){
	var image = $('img.tableImg');
	image.css("visibility","visible");
}


$("input.show").click(function(){
	reveal();
});
// var picture  = $("img.think")
// picture.style.border = "red solid 2px"