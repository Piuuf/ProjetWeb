var express = require('express');
var app = express();
var path = require('path');

app.get('/', function(req,res) {
app.use(express.static('css'));
  res.sendfile('index.html');

});

app.listen(8080);
