server = require "./server"

server.addRoute '/', (res) -> 
    res.writeHead statusCode, "content-type": "text/html"
    res.end "Hello Poblio."

server.start()
