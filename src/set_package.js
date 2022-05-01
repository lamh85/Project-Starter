var fs = require("fs");
var jsonParsed = JSON.parse(fs.readFileSync("package.json", "utf8"));

jsonParsed.type = "module";

var dataToWrite = JSON.stringify(jsonParsed, null, 2);

fs.writeFileSync("package.json", dataToWrite);

console.log("Done setting package.json");
