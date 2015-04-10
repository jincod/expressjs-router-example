express = require 'express'

router = express.Router()

index = (req, res, next) -> res.sendStatus 200

router.get '/', index
router.post '/', index

module.exports = router