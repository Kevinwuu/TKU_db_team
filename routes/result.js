var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('result', {
        title: '排球盃線上報名系統'
    });
});

module.exports = router;