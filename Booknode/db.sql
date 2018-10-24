set names utf8;
drop database if exists book;
create database book charset=utf8;
use book;

/*用户表*/
create table users(
uid int primary key auto_increment,
uname VARCHAR(128),
upwd varchar(64),
gender int,
avatar varchar(128)                     #头像图片路径
);
insert into users values(null,'Tom','123456',0,null);
insert into users values(null,'Peter','123456',0,null);
insert into users values(null,'Alex','123456',0,null);
insert into users values(null,'小红','123456',1,null);
insert into users values(null,'小明','123456',0,null);
insert into users values(null,'小芳','123456',1,null);
insert into users values(null,'Clala','123456',1,null);
insert into users values(null,'Haidi','123456',1,null);
insert into users values(null,'张三','123456',1,null);


/****首页轮播图书****/
create table indexcarousel(
  id int primary key auto_increment,
  img varchar(128),
  href varchar(128)
);
insert into indexcarousel values(null,'img/index/banner1.jpeg',null);
insert into indexcarousel values(null,'img/index/banner2.jpeg',null);
insert into indexcarousel values(null,'img/index/banner3.jpeg',null);
insert into indexcarousel values(null,'img/index/banner4.jpeg',null);


/*首页图书表*/
create table indexbooks(
bid int primary key auto_increment,
bname varchar(64),
author varchar(64),
intr varchar(225),
img varchar(128),
href varchar(128)
);
insert into indexbooks values(null,'嫌疑人x的献身','东野圭吾','百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐...','img/index/todaybook.jpg',null);
insert into indexbooks values(null,'你饿不饿，我做饭给你吃','胡舒欣','愿意与你分享食物的人，代表着愿意让你加入他的人生...','img/index/hotbook1.jpg',null);
insert into indexbooks values(null,'呼兰河传','萧红','花开了，就像睡醒了似的。鸟飞了，就像在天上逛似的...','img/index/hotbook2.jpg',null);
insert into indexbooks values(null,'城南旧事','林海音','这是爸爸说的，无论什么困难的事，只要硬着头皮去做，就闯过去了...','img/index/hotbook3.jpg',null);
insert into indexbooks values(null,'第十一根手指','秦明','法医，与死者朝夕相处的神秘职业，即将剖开震撼人心的亡灵之声','img/index/hotbook4.jpg',null);
insert into indexbooks values(null,'偷影子的人','【法】马克·李维','不知道姓氏的克蕾儿。这就是你在我生命里的角色，我童年时的小女孩','img/index/hotbook5.jpg',null);
insert into indexbooks values(null,'月亮与六便士','【英】威廉·萨默塞特·毛姆','一位四十岁的证券经纪人，放弃优裕的生活,疯狂迷恋上了绘画...','img/index/hotbook6.jpg',null);
insert into indexbooks values(null,'她知道一切','肖尧月','一次死亡现场的相遇，开启了靳海洋和沈留白的缘分...','img/index/newbook1.jpg',null);
insert into indexbooks values(null,'追风筝的人','卡勒德·胡赛尼','许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的','img/index/newbook2.jpg',null);
insert into indexbooks values(null,'时时刻刻','弗吉尼亚·伍尔芙','小说中以一天的活动为框架，展现了女主人公一生的事情、她的性格与命运、她的亲人和朋友','img/index/newbook3.jpg',null);
insert into indexbooks values(null,'浪花少年侦探团','东野圭吾','平安夜，一个女人死在自家浴室，墙上留有“蛋糕”字样...','img/index/newbook4.jpg',null);
insert into indexbooks values(null,'傲慢与偏见','简·奥斯丁','故事围绕贝内特一家几个女儿的婚姻大事展开...','img/index/newbook5.jpg',null);
insert into indexbooks values(null,'一个叫欧维的男人决定去死','弗雷德里克·巴克曼','认识一下欧维。他59岁，脾气古怪，嫌东嫌西，带着坚不可摧的原则、每天恪守的常规以及随时发飙的脾性在社区晃来晃去','img/index/newbook6.jpg',null);


create table books(
    bid int primary key auto_increment,
    bname varchar(64),
    author varchar(64),
    intr varchar(225),
    img varchar(128),
    newPrice varchar(24),
    oldPrice varchar(24),
    href varchar(128)
);