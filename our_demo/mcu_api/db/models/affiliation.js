'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Affiliation extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Affiliation.init({
    name: DataTypes.STRING,
    baseLocation: DataTypes.STRING,
    isGood: DataTypes.BOOLEAN
  }, {
    sequelize,
    modelName: 'Affiliation',
  });
  return Affiliation;
};