var models = require('../models');
// function for userList

exports.user_list = function(req, res){
	models.User.findAndCountAll({
		limit: req.body.limit,
		offset: req.body.offset,
		include: [ models.UserNumber ]
		}).then(function(users){
		res.send({"status":200, "result":users.rows,"totalCount":users.count});
	});
};
exports.search_user = function(req, res){
	models.User.findAndCountAll({
			where:{
			name: {$like: '%'+req.body.keyword+'%',}
		}, 
		include: [ models.UserNumber ] ,
		offset: req.body.offset, limit: req.body.limit
		}).then(function(users){
			console.log(users);
		res.send({"status":200, "result":users.rows,"totalCount":users.count});
	});
};
exports.del_user = function(req, res){
	models.User.destroy({
		where: {
	    	id: req.body.formVal
	  	}
	}).then(function(){
		res.send({"status":200, "message":"users delete successfully"});
	});
};
exports.add_user = function(req, res){
	for(var i=0; i<req.body.formVal.length; i++){
		models.User.update({
			name:req.body.formVal[i].name,
			card_detail:req.body.formVal[i].card_detail,
			total_number:req.body.formVal[i].total_number
		},{
			where:{
				id:req.body.formVal[i].id
			}
		})
		models.UserNumber.update({
			english:req.body.formVal[i].english,
			maths:req.body.formVal[i].maths,
		},{
			where:{
				userId:req.body.formVal[i].id
			}
		})
	}
	res.send({"status":200});	

}
/*exports.add_user = function(req, res){
	for(var i=0; i<req.body.formVal.length; i++){
		console.log(req.body.formVal[i]);
		models.User.update({
			name:req.body.formVal[i].name,
			card_detail:req.body.formVal[i].card_detail,
			total_number:req.body.formVal[i].total_number
		},{
			where:{
				id:req.body.formVal[i].id
			}
		})
	}
	res.send({"status":200});
}*/


