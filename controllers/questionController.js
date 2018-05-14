var models = require('../models');
// function for quizList

exports.plan_list = function(req, res){
	models.Plan.findAll({}).then(function(plan){
		res.send({"status":200, "result":plan});
	});
};
exports.gender_list = function(req, res){
	models.Gender.findAll({}).then(function(gender){
		res.send({"status":200, "result":gender});
	});
};
exports.age_list = function(req, res){
	models.Age.findAll({}).then(function(age){
		res.send({"status":200, "result":age});
	});
}
exports.question_list = function(req, res){
	models.Question.findAll({
		include: [ models.Answer ],
		where:{
			genderid:req.body.genderid
		}
	}).then(function(question){
		res.send({"status":200, "result":question});
	});
};
// if check email already exist or not if exist return true if not then return false
exports.add_user =function(req,res){
	models.User.create({
		name:req.body.name,
		email:req.body.email,
		phone:req.body.phone,
		plan:req.body.plan,
		gender:req.body.gender,
		age:req.body.age,
		question:req.body.question,
		answer:req.body.answer
	}).then(user=>{
		res.send({"status":200, "result":user.get({plain: true})});
	})
};


