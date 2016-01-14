/**
 * Main application file
 */

'use strict';

// Set default node environment to development
process.env.NODE_ENV = process.env.NODE_ENV || 'development';
var express = require('express');
import config from './config/environment/index';
require('source-map-support').install();

// Populate DB with sample data
//if(config.seedDB) { require('./config/seed'); }

// Setup server
var app = express();
var server = require('http').createServer(app);
  
  // install middleware
  require('./config/express')(app);
  require('./routes')(app);
  app.set('etag', false);
  
  // Start server  
  server.listen(config.port, config.ip, function () {
    console.log('Express server listening on %d, in %s mode', config.port, app.get('env'));
  });
 

module.exports = app;
  