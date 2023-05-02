'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Characters', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING(50),
        allowNull: false, // NOT NULL
        unique: true //UNIQUE
      },
      age: {
        type: Sequelize.INTEGER
      },
      powered: {
        type: Sequelize.BOOLEAN,
        defaultValue: false
      },
      alias: {
        type: Sequelize.STRING(150)
      },
      popularity: {
        type: Sequelize.NUMERIC(4, 2)
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
        defaultValue: new Date()
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
        defaultValue: new Date()
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Characters');
  }
};