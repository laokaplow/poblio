exports.routes = []

exports.addRoute = (route, action) ->
    exports.routes.push {route, action}
    
router = (req, res) ->
    console.log "processing request for #{req.url}"
    for handler in exports.routes
        if handler.route == req.url
            handler.action res
            return
    #else
    res.writeHeader 404
    res.end "ERROR 404: Not Found."
        
exports.start = ->
    require("http").createServer(router).listen 8080
    console.log "Server Started on port 8080"
