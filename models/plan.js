'use strict';
module.exports = (sequelize, DataTypes) => {
  var Plan = sequelize.define('Plan', {
    plan: DataTypes.STRING
  }, {});
  Plan.associate = function(models) {
    // associations can be defined here
  };
  return Plan;
};