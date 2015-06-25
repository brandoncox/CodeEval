/*
  You will be given a hexadecimal (base 16) number. Convert it into decimal (base 10).
*/
var hex = {
		0 : 0,
		1 : 1,
		2 : 2,
		3 : 3,
		4 : 4,
		5 : 5,	
		6 : 6,
		7 : 7,
		8 : 8,
		9 : 9,
		a : 10,
		b : 11,
		c : 12,
		d : 13,
		e : 14,
		f : 15,
		power : function(x, i){ return Math.pow(16, i) * x; },
	}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        var sp = line.split(''), decimal = 0;
        
        for(var i = 0; i < sp.length; i++){
        	decimal = decimal + hex.power( 
        		hex[sp[i]], 
        		sp.length - 1 - i);
        }

        console.log(decimal);
    }
});