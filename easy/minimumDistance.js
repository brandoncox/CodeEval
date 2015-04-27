var fs  = require("fs");

var calc = function(total, users, middle){
	var distance = 0;
	for ( var i = 0; i < total; i++){
		
		if(middle > users[i]){
			distance += (middle - users[i]);
		}
		else if(middle <= users[i]){
			distance += (users[i] - middle);
		}
	}
	return distance;
}

var processLine = function(total, users, callback){
	var sum = 0;
	var middle = 0;
	
	for(var i = 0; i < total; i++){
		sum += +users[i];
	}
	middle = sum / total;
	var distance = 0;
	var tmp_mid = middle - 1;
	var bestCase = 1000;
	while(tmp_mid < middle + 1){
		var hold = calc(total, users, tmp_mid);
		if(hold < bestCase){
			bestCase = hold;
		}
		tmp_mid++;
	}
	console.log(bestCase);
}




fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
    	line = line.split(" ");
    	processLine(line[0], line.slice(
    		1, 
    		( line[0] + 1 ) )
    	);
    }
});
