http = require "http"

writePage = (out, statusCode, body) ->
    out.writeHead statusCode, "content-type": "text/html"
    out.end body

server = http.createServer (req, res) ->
    writePage res, out, 200, "hello Poblio"
    console.log "Request Handled for #{req.url} @ #{new Date()}"

server.listen 8080
console.log "Server Started on port 8080"
