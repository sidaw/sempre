// Source: https://gist.github.com/dasniko/6494bf2c3e0eb8dc2e8a
var global = this;
var window = this;
var process = {env: {}};

var console = {};
console.debug = print;
console.warn = print;
console.log = print;
