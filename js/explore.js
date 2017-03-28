//psuedocode
//input:    String
//steps:    Create a blank string
//			Loop thrugh string backwards.
//			Store each character in the blank array
//output:  reverse_string

var str = "test";

var reverse_string = '';

for (i = str.length - 1; i >= 0; i--) {
	reverse_string += str[i]
}

console.log(reverse_string);