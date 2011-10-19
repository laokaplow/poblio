http = require "http"

writePage = (out, statusCode, body) ->
    out.writeHead statusCode, "content-type": "text/html"
    out.end body

server = http.createServer (req, res) ->
    switch req.url
        when '/'
            writePage res, 200, "hello Poblio"
        else
            writePage res, 404, "not found"
            
    console.log "Request Handled for #{req.url} @ #{new Date()}"

server.listen 8080
console.log "Server Started on port 8080"
