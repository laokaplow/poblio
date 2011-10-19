exports.routes = []

exports.addRoute = (path, handle) ->
    exports.routes.push {path, handle}

router = (req, res) ->
    for handler in exports.routes
        if handler.path == req.url
            handler.handle res
            return
    #else
    res.writeHeader 400, "Not Found", {"text/plain"}
    res.end "ERROR 404: Not Found."
        
exports.start = ->
    require("http").createServer(router).listen 8080
    console.log "Server Started on port 8080"
