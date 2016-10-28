var colors = ["green", "red", "white", "orange"];
var horses= ["jim", "larry", "moe", "tom"];

console.log(colors);
console.log(horses);

colors.push("brown");
horses.push("bill");

console.log(colors);
console.log(horses);

var horseColors = {};

for (var i = colors.length - 1; i >= 0; i--) {
	horseColors[horses[i]] = colors[i]
}

console.log(horseColors)