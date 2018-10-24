
（一）文件结构
1.mtnode文件夹
package.json            npm init
node_modules         引入所有第三方的包
routes                      包含所有路由器
app.js                      项目入口文件
db.sql                      数据库文件
pool.js                     连接池


2.mtvue文件夹
package.json
node_modules
public                               不会被webpack打包编译，而是直接访问的资源
    img
    index.html                     唯一完整的HTML页面文件
src                                     包含了项目的所有源代码，外部的css文件要注意避免组件间样式冲突
    assets                            需要打包的静态资源（如：css及js:bootstrap.js / jquery.js）
        css
    components                   组件文件
        Header.vue
        Footer.vue
    views                            所有出现在路由当中的组件
        Admin.vue
        AdminLogin.vue
        Details.vue
        Home.vue                Home中有子组件Header和Footer,Home中的子路由Index和Detail也都拥有了Header和Footer页面组件
        Index.vue
        Login.vue
        Register.vue

        App.vue
        router.js              路由器,包含路由列表
        main.js                 根组件实例

（一）配置文件
1.新建mtnode文件夹
（1）在cmd下运行npm init 生成package.json
（2）npm install 包名   生成node_modules文件夹并安装包
（3）新建public文件夹
（4）在public文件夹下新建js/css/img文件夹
（5）新建app.js
（6）新建db.sql以及pool.js

2.mtvue文件夹
（1）下载vue-CLI脚手架工具：npm i -g @vue/cli (-g指全局安装)
（2）为本次项目创建脚手架代码：在MovieTime下运行 vue create mtvue 生成mtvue文件夹
（3）进入项目文件夹mtvue给项目安装axios：npm i -s axios
（4）给项目安装jquery.js/bootstrap.js/popper.js ->npm i -s jquery/bootstrap/popper.js

