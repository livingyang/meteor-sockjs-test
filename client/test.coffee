Template.hello.greeting = ->
	"Welcome to test."

Template.hello.events "click input": ->
	console.log "input"