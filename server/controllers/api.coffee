express = require 'express'

router = express.Router()

test = (req, res, next) -> res.sendStatus 200

add = (req, res, next) -> res.sendStatus 200

router.get '/test', test
router.post '/add', add

module.exports = router