'use strict';
module.exports = (sequelize, DataTypes) => {
  var User = sequelize.define('User', {
    name: DataTypes.STRING,
    email:DataTypes.STRING,
    phone: DataTypes.STRING,
    gender: DataTypes.STRING,
    plan: DataTypes.STRING,
    age: DataTypes.STRING,
    question: DataTypes.STRING,
    answer: DataTypes.TEXT
  }, {});
  User.associate = function(models) {
    // associations can be defined here
  };
  return User;
};