// var colors = ["green", "red", "white", "orange"];
// var horses= ["jim", "larry", "moe", "tom"];

// console.log(colors);
// console.log(horses);

// colors.push("brown");
// horses.push("bill");

// console.log(colors);
// console.log(horses);

// var horseColors = {};

// for (var i = colors.length - 1; i >= 0; i--) {
// 	horseColors[horses[i]] = colors[i]
// }

// console.log(horseColors)

function Car(make, year, color) {
	console.log("building a new car")

	this.make = make;
	this.year = year;
	this.color = color;

	this.horn = function() {
		console.log(this.make + " " + "driver honks the horn" );
	}
}

var prius = new Car("toyota", 2010, "white");
prius.horn();
var mustang = new Car("ford", 2013, "red");
var pickup = new Car("chevy", 2002, "blue" );

for (var propt in prius) {
	console.log(propt+ ":" +  prius[propt])
}