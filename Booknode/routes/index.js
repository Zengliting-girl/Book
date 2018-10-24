const express=require("express");
// 路由器：管理多个路由的一个对象
var router=express.Router();
var pool=require("../pool");

// 定义一个路由("路由路径"，"请求处理函数")
// req:请求对象参数，从此对象中可以读取请求消息中的数据
// res:响应对象参数，向客户端输出响应数据
/*接收get请求，返回响应消息 */
//发送首页图书数据
router.get("/",(req,res)=>{									
	var sql="select * from indexbooks";
	pool.query(sql,(err,result)=>{
		res.writeHeader(200,{"Access-Control-Allow-Origin":"*"});
		res.write(JSON.stringify(result));
		res.end();
	})
});

//发送轮播图数据
router.get("/carousel",(req,res)=>{
	var sql="select * from indexcarousel";
	pool.query(sql,(err,result)=>{
		res.writeHeader(200,{"Access-Control-Allow-Origin":"*"});
		res.write(JSON.stringify(result));
		res.end();
	})
})

/*导出路由器对象*/
module.exports=router;					