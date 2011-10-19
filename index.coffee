server = require "./server"


server.addRoute '/', (res) -> 
    res.writeHead 200, "content-type": "text/html"
    res.end "Hello Poblio."    
    
    
server.addRoute '/favicon.ico', (res) ->
    res.writeHead 200, "content-type": "image/png"
    res.end "image data goes here"

server.start()
