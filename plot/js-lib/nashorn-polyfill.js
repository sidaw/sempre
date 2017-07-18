// https://gist.github.com/dasniko/6494bf2c3e0eb8dc2e8a
var global = this;
var window = this;
var process = {env: {}};

var console = {};
console.debug = print;
console.warn = print;
console.log = print;

function readFile(path) {
  var BufferedReader = Java.type('java.io.BufferedReader');
  var FileReader = Java.type('java.io.FileReader');
  var result = "";
  var reader = new BufferedReader(new FileReader(path));
  var line = reader.readLine();
  while (line != null) {
      result += line + "\n";
      line = reader.readLine();
  }
  reader.close();
  return result;
}
