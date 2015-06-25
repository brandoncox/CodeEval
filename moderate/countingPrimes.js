/*
  Given two integers N and M, count the number of prime numbers between N and M (both inclusive)
*/

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
       
       var sp = line.split(',');
       var start = parseInt(sp[0]), end = parseInt(sp[1]), primeCount = 0;
       while(start <= end){
       	var prime = true;

       	for(var i = start - 1; i > 1; i--){
       		if(start % i == 0){
       			prime = false;
       			break;
       		}	
       	}
       	
       	if(prime){
       		primeCount++;
       	}
       	start++;
       }
       console.log(primeCount);
    }
});
