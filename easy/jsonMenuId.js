var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        json = JSON.parse(line);
        var sum = 0;
        json['menu']['items'].forEach(function(obj){
        	if(obj != null){
        		if(obj['label'] != null){
        			sum += obj['id'];
        		}
    		}
          }
        );
        console.log(sum);
    }
});
