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

// -------------------------------------------------------------------
// driver code
var test1 = ["long phrase","longest phrase","longer phrase"];
console.log(longPhrase(test1))

var test2 = ["1234", "2345", "123", "12345", "4567"]
console.log(longPhrase(test2))