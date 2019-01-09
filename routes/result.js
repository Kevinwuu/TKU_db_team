var express = require('express');
var router = express.Router();

const resultController = require('../controllers/result');

/* GET home page. */
router.get('/', resultController.getResults);
router.post('/', resultController.postResults);
router.get('/search', resultController.getSearch);
router.get('/detail', resultController.getDetail);
// router.post('/detail', resultController.postMember);
router.get('/delete', resultController.delTeam);
router.get('/detail/delete', resultController.delMember);


// router.get('/edit', postController.getEditPost);

// router.post('/add', postController.postAddPost);

// router.post('/update', postController.postUpdatePost);

// router.get('/delete', postController.getDeletePost);

module.exports = router;