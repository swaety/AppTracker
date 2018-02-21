'use strict';
module.exports = function(app) {
  var methodApp = require('../controllers/methodApp');

  // methodApp Routes
  app.route('/app')
    .get(methodApp.list_app)
};