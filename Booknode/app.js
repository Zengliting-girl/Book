var express=require("express");
var app = express();
app.listen(3000);

/*中间件*/
const bodyParser = require('body-parser');	
app.use(bodyParser.urlencoded({extended:false}));

/*引入路由*/
var index=require("./routes/index");

app.use(express.static(__dirname+"/public"));
app.use("/index",index);