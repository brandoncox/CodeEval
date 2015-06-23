/*
	Players generally sit in a circle. The first player says the number “1”, 
	and each player says next number in turn. However, any number divisible 
	by X (for example, three) is replaced by the word fizz, and any divisible 
	by Y (for example, five) by the word buzz. Numbers divisible by both become 
	fizz buzz. A player who hesitates, or makes a mistake is eliminated from the game.

	Write a program that prints out the final series of numbers where those 
	divisible by X, Y and both are replaced by “F” for fizz, “B” for 
	buzz and “FB” for fizz buzz.
*/

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        var sp = line.split(" ");
        var f = sp[0], b = sp[1], end = sp[2], it = 1, output = "";

        while(it <= end){
        	if( it % f == 0 && it % b == 0){
        		output += "FB";
        	}
        	else if(it % f == 0){
        		output += "F";
        	}
        	else if(it % b == 0){
        		output += "B";
        	}
        	else{
        		output += it
        	}
        	output += " ";
        	it++;
        }
        console.log(output);
    }
});
