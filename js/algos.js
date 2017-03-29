//pseudocode
// input: array
//	steps:  create a longest_word variable to store longest variable
//  		loop through array
//			if current word length is longer than previous length replace
// output:  longest_word



function long(array) {
var longest_word = "";

for (i = 0; i < array.length; i++) {
	if (array[i].length > longest_word.length) {
		longest_word = array[i];
	}
}
return longest_word
}

var array = ["long phraseasdfadsfasdfa","longest phrase","longer phrasexxxxxxx"];

console.log(long(array));