var express = require('express');
var router = express.Router();



/* GET users listing. */
router.get('/', function(req, res, next) {
    res.render('about', {
        title: '排球盃線上報名系統'
    });
});

module.exports = router;