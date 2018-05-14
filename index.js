var createError = require('http-errors');
var app = require('express')();
var bodyParser = require('body-parser');
var questionRouter = require('./routes/question');

var cors = require('cors');
app.use(cors());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

var acceptedOrigin = ['http://localhost:3000'];

app.use('/',function(req, res,next) {
  if(acceptedOrigin.indexOf(req.headers.origin) > -1){
    next();
  } else { 
    res.status(403);
    res.send('Un Authorized Access');
  }

});
app.use('/', questionRouter);

app.use(function(req, res, next){
	
	next(createError(404));
});

app.listen('8000',function(){
	console.log("working proper");
});