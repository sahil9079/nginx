const http = require('http');
http.createServer((req, res) => {
  res.end('Hello from Node.js server2 backend!');
}).listen(3002);

