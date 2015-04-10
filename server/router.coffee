fs = require 'fs'
path = require 'path'

routes = fs.readdirSync('./server/controllers').map (f) ->
	path.basename(f, path.extname(f))

addRouter = (app, name) ->
	name = name.replace 'index', ''
	# app.use '/' + name, require './controllers/' + name

	router = require './controllers/' + name
	app.use '/' + name, router

	for route in router.stack
		for k, v of route.route.methods
			console.log "#{k}: #{route.route.path}" 

module.exports = (app) ->
	for route in routes
		addRouter app, route