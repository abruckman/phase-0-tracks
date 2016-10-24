// declare a reverse function with a word paramter
function reverse(word){
// create a new variable to put the reversed string into.
	var reversedword = '';
	
// iterate the length of the word 
	for (var i = 0; i<word.length ; i++){
// from back to front of the word, adding each letter to the reversed word variable
	reversedword = reversedword + word[word.length -1 -i]
	}
// return the reversed word
	return reversedword
}
//test with hello, should yield "olleh"
console.log(reverse('hello'))
var correct = reverse('hello')
if (1 == 1) {
	console.log(correct)
}