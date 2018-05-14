var express = require('express');
var router = express.Router();
var question_controller = require('../controllers/questionController');

// get request for all quiz list

router.post('/questions', question_controller.question_list);
router.get('/age', question_controller.age_list);
router.get('/gender', question_controller.gender_list);
router.get('/questions', question_controller.question_list);
router.post('/addUser', question_controller.add_user);
router.get('/plans', question_controller.plan_list);

module.exports = router;