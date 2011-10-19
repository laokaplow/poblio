server = require "./server"


server.addRoute '/', (req, res) -> 
    res.writeHead 200, "content-type": "text/html"
    res.end "Hello Poblio."       
    
server.addRoute '/favicon.ico', (req, res) ->
    res.writeHead 200, "content-type": "image/png"
    res.end "image data goes here"
    
server.addRoute /^\/static\/(.+)$/g, (req, res) ->
    filename = req.url
    res.writeHead 200, "content-type": "text/plain"
    res.end "just pretending we have "#{filename}", didn't actually check."

server.start()
