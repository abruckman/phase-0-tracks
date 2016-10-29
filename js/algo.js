// make an algorithm that takes an array of words or phrases and returns the longest word or phrase

// create a function that takes a single argument, which is an array
var longPhrase = function(list){
// declare an empty variable to hold the  'longest phrase'
	var str = "aa" ;
// loop though the array
	for (var i = 0; i < list.length; i++) {
		if (list[i].length > str.length){
			str = list[i];
		}
	}
// if the string is longer than the 'longest phrase' sting
// replace the current longest pharse with it
// return the longest phrase
	return str;
}

// declare a matchtest function with 2 parameters, both objects
var matchTest = function(obj1, obj2){
// declare a matchTrue variable as false
	matchTrue = false	
// loop through the object
	for (var property in obj1) {
		if (obj1.hasOwnProperty(property)){
			if (obj1[property] == obj2[property])
				matchTrue = true
		}
	}
// check each property to see if it's the same
// if it is, matchTrue should be changed to true
	return matchTrue
// return matchTrue
}


// -------------------------------------------------------------------
// driver code
// var test1 = ["long phrase","longest phrase","longer phrase"];
// console.log(longPhrase(test1))

// var test2 = ["1234", "2345", "123", "12345", "4567"]
// console.log(longPhrase(test2))

var steven = {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54}
console.log ("expect: true")
console.log(matchTest(steven, tamir))

var steven = {name: "Steven", age: 54, location: "tree"};
var tamir = {name: "Tamir", age: 54, location: "house" };
console.log ("expect: true")
console.log(matchTest(steven, tamir))

var steven = {name: "Steven", age: 54, location: "tree"};
var tamir = {name: "Tamir", age: 52, location: "house" };
console.log ("expect: false")
console.log(matchTest(steven, tamir))