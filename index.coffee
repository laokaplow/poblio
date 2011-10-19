server = require "./server"


server.addRoute '/', (req, res) -> 
    res.writeHead 200, "content-type": "text/html"
    res.end "Hello Poblio."    
    
    
server.addRoute '/favicon.ico', (req, res) ->
    res.writeHead 200, "content-type": "image/png"
    res.end "image data goes here"

server.start()
