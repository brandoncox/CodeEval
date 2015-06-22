/*
You are given a text. Write a program which outputs its lines according to the following rules:

If line length is ≤ 55 characters, print it without any changes.
If the line length is > 55 characters, change it as follows:
	trim the line to 40 characters.
	If there are spaces ‘ ’ in the resulting string, trim it once again to the last space (the space should be trimmed too).
	Add a string ‘... <Read More>’ to the end of the resulting string and print it.
*/

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        if(line.length <= 55){
        	console.log(line);
        }
        else{
        	var trimmed = line.substring(0, 39);
        	var space_index = 0;
        	for(var i = 0; i < trimmed.length; i++){
        		if(trimmed[i] == " "){
        			space_index = i;
        		}
        	}
        	if(space_index > 0 ){{
        		trimmed = trimmed.substring(0, space_index);
        	}}
        	console.log(trimmed + "... <Read More>");
        }
    }
});
