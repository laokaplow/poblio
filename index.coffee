server = require "./server"

writePage = (out, statusCode, body) ->
    out.writeHead statusCode, "content-type": "text/html"
    out.end body


server.addRoute '/', (res) -> writePage res, 200, "Hello Poblio"

server.start()
