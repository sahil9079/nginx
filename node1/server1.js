const http = require('http');
http.createServer((req, res) => {
  res.end('Hello from Node.js server1 backend!');
}).listen(3001);

