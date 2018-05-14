'use strict';
module.exports = (sequelize, DataTypes) => {
  var Age = sequelize.define('Age', {
    age: DataTypes.STRING(50)
  }, {});
  Age.associate = function(models) {
    // associations can be defined here
  };
  return Age;
};