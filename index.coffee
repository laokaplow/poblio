server = require "./server"

server.addRoute '/', (res) -> 
    res.writeHead 200, "content-type": "text/html"
    res.end "Hello Poblio."

server.start()
