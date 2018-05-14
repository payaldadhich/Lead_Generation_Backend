'use strict';
module.exports = (sequelize, DataTypes) => {
  var Answer = sequelize.define('Answer', {
    answer: DataTypes.STRING,
    questionid: DataTypes.INTEGER
  }, {});
  Answer.associate = function(models) {
    // associations can be defined here
  };
  return Answer;
};