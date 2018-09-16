/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - pain
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `describe` */

DROP TABLE IF EXISTS `describe`;

CREATE TABLE `describe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `describe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `describe` */

/*Table structure for table `node_test` */

DROP TABLE IF EXISTS `node_test`;

CREATE TABLE `node_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `isdel` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否删除： 0 表示未删除 ： 1 表示已删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `node_test` */

insert  into `node_test`(`id`,`username`,`age`,`gender`,`isdel`) values (1,'??',18,'?','1'),(2,'??',19,'?','1'),(3,'??',20,'?','1'),(4,'??',21,'?','1'),(5,'??',18,'?','1');

/*Table structure for table `text` */

DROP TABLE IF EXISTS `text`;

CREATE TABLE `text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `isdel` varchar(255) NOT NULL DEFAULT '0' COMMENT '0表示未删除 1表示已删除',
  `img` varchar(255) NOT NULL,
  `describe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `text` */

insert  into `text`(`id`,`username`,`age`,`gender`,`isdel`,`img`,`describe`) values (1,'大乔',19,'女','0','./static/images/pain.jpg','大桥（？－200年？），庐江郡皖县人（今安徽安庆潜山），中国东汉末的女性，系乔公之女、孙策之妾、小桥之姊。'),(2,'张飞',20,'男','0','./static/images/pain.jpg','张飞（约166-221）字翼德，幽州涿郡（今河北涿州市）人氏，三国时期蜀汉名将。因其勇武过人，而与关羽并称为“万人敌”。羽年长数岁，飞兄事之。184年黄巾起义爆发，刘备在涿县组织起了一支义勇军参与扑灭黄巾军的战争，张飞与关羽一起加入，随刘备辗转各地。三人情同兄弟，寝则同床，刘备出席各种宴会时，和关羽终日侍立在刘备身旁。197年在曹操进攻吕布，吕布败亡之后，张飞被任命为中郎将。公元200年刘备衣带召事情泄漏，率领关羽、张飞逃走，杀下邳太守车胄，刘备战败，关羽被擒，刘备与张飞投奔袁绍。208年刘备于长坂坡败退'),(3,'小甜甜',18,'女','0','./static/images/pain.jpg',NULL),(4,'小乔',18,'女','0','./static/images/pain.jpg','小桥（180年代－？），本姓桥（小乔为后世误传）。中国东汉末年时期的美女，庐江皖县（今安徽潜山）人。桥公的次女，汉末名将周瑜之妾。'),(12,'雅典娜',21,'女','0','./static/images/pain.jpg',NULL),(6,'钱少少',22,'女','0','./static/images/pain.jpg',NULL),(11,'王昭君',19,'女','0','./static/images/pain.jpg','王昭君（约前52年—约8年），名嫱，字昭君，乳名皓月，西汉南郡秭归人，今湖北省宜昌市兴山县人，西汉元帝时和亲宫女，与貂蝉、西施、杨玉环（杨贵妃）并称中国古代四大美女，是中国古代四大美女之一的落雁，晋朝时为避司马昭讳，又称“明妃”，王明君。王昭君维护汉匈关系稳定半个世纪，昭君出塞的故事千古流传。'),(5,'貂蝉',20,'女','0','./static/images/pain.jpg','貂蝉是历史小说《三国演义》中的人物，是中国古代四大美女之一。在民间传说中她原名任红昌，是山西一村姑，也有人认为吕布部将秦宜禄前妻杜氏（杜秀娘）即是貂蝉。她为了报答义父王允的养育之恩而甘愿献身完成连环计的故事在民间广为流传。'),(9,'鱼多多',20,'女','0','./static/images/pain.jpg',NULL),(10,'婷婷',20,'女','0','./static/images/pain.jpg',NULL),(13,'星星',22,'女','0','./static/images/pain.jpg',NULL),(14,'熊',19,'男','0','./static/images/pain.jpg',NULL),(15,'蒙拉丽莎',30,'女','0','./static/images/pain.jpg',NULL),(22,'老王',14,'男','0','./static/images/pain.jpg',NULL),(27,'潘婷',18,'女','0','./static/images/pain.jpg',NULL);

/*Table structure for table `websites` */

DROP TABLE IF EXISTS `websites`;

CREATE TABLE `websites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL DEFAULT '' COMMENT '站点名称',
  `url` varchar(255) NOT NULL DEFAULT '',
  `alexa` int(11) NOT NULL DEFAULT '0' COMMENT 'Alexa 排名',
  `country` char(10) NOT NULL DEFAULT '' COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `websites` */

insert  into `websites`(`id`,`name`,`url`,`alexa`,`country`) values (1,'Google','https://www.google.cm/',1,'USA'),(2,'淘宝','https://www.taobao.com/',13,'CN'),(3,'菜鸟教程','http://www.runoob.com/',4689,'CN'),(4,'微博','http://weibo.com/',20,'CN'),(5,'Facebook','https://www.facebook.com/',3,'USA');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
