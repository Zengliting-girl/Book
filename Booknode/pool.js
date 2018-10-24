const mysql=require('mysql');
var pool=mysql.createPool({
	host:'127.0.0.1',
	user:'root',
	password:'',
	database:'Book',
	connectionLimit:10
});

//导出连接池
module.exports=pool;