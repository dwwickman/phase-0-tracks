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

function compare(obj_one, obj_two) {
var key_value_equal = false;
var key_value_string = "";
var array_one = []
var array_two = []


for (var [key, value] of Object.entries(obj_one)) {
     key_value_string = key + ' ' + value
     array_one.push(key_value_string);
}


for (var [key, value] of Object.entries(obj_two)) {
     key_value_string = key + ' ' + value
     array_two.push(key_value_string);
}

for (i = 0; i < array_one.length; i++) {
	for (j = 0; j < array_one.length; j++) {
		if (array_one[i] == array_two[j]) {
			key_value_equal = true;
		}
	}
}

return key_value_equal
}


var obj_one = {a: 5, b: 7, c: 9};
var obj_two = {d: 5, c: 2, a: 5};

console.log(compare(obj_one, obj_two));


function random_array(number) {

var alphabet = "abcdefghijklmnopqrstuvwxyz"

var array_letters = [];

for (i = 0; i < number; i++) {
	var random_number = Math.floor((Math.random() * 10) + 1);
	var string = "";
	for (j = 0; j < random_number; j++ ) {
		var alphabet_random = Math.floor(Math.random() * 26);
		string += alphabet[alphabet_random];
	}
	array_letters.push(string);
}
return array_letters
}

number = 3


console.log(random_array(number));











