'use strict';
module.exports = (sequelize, DataTypes) => {
  var Question = sequelize.define('Question', {
    question: DataTypes.STRING,
    genderid: DataTypes.INTEGER
  }, {});
  Question.associate = function(models) {
    Question.hasOne(models.Answer)
  };
  return Question;
};