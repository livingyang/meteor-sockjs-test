Meteor.startup ->
	sockjs_echo = sockjs.createServer()
	sockjs_echo.on "connection", (conn) ->
		conn.on "data", (message) ->
			conn.write message

	sockjs_echo.installHandlers WebApp.httpServer, prefix: "/echo"