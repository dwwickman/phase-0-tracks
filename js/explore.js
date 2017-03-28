//psuedocode
//input:    String
//steps:    Create a blank string
//			Loop thrugh string backwards.
//			Store each character in the blank array
//output:  reverse_string

function reverse_reverse(str) {

var reverse_string = '';

for (i = str.length - 1; i >= 0; i--) {
	reverse_string += str[i]
}
return reverse_string;
}

var str = "test";

//test to see if function works
//console.log(reverse_reverse(str));

rev_str = reverse_reverse(str);

var num = 1

if (num == 1) {
	console.log(rev_str);
}
