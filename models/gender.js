'use strict';
module.exports = (sequelize, DataTypes) => {
  var Gender = sequelize.define('Gender', {
    gender: DataTypes.ENUM('Male', 'Female'),
    image: DataTypes.STRING
  }, {});
  Gender.associate = function(models) {
    // associations can be defined here
  };
  return Gender;
};