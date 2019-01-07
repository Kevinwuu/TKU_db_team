var express = require('express');
var router = express.Router();

const signupController = require('../controllers/signup');

/* GET home page. */
router.get('/', signupController.getData);
router.post('/', signupController.postAddMember);

// router.get('/edit', postController.getEditPost);


// router.post('/update', postController.postUpdatePost);

// router.get('/delete', postController.getDeletePost);

module.exports = router;