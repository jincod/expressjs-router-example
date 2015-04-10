express = require 'express'

app = express()

require('./router')(app)

app.use (err, req, res, next) ->
	res.status(err.status || 500).send(err.message)

module.exports = app