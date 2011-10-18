http = require "http"

server = http.createServer (req, res) ->
    res.writeHead 200, "Content-Type": "text/html"
    res.write "Hello Poblio"
    res.end()
    console.log "Request Handled for #{req.url} @ #{new Date()}"

server.listen 8080
console.log "Server Started on port 8080"
