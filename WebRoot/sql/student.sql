/*
SQLyog v10.2 
MySQL - 5.7.4-m14 : Database - students
*********************************************************************
*/

/*!40101 SET NAMES utf-8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`students` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `students`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `AdminName` varchar(20) DEFAULT NULL COMMENT '绠＄悊鍛樼櫥褰曞悕',
  `AdminPassword` varchar(20) DEFAULT NULL COMMENT '绠＄悊鍛樺瘑鐮�
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `AlbumId` int(11) NOT NULL AUTO_INCREMENT COMMENT '鐩稿唽缂栧彿',
  `AlbumDesc` varchar(50) DEFAULT NULL COMMENT '鐩稿唽鎻忚堪',
  `AlbumDate` varchar(50) DEFAULT NULL COMMENT '鐩稿唽涓婁紶鏃ユ湡',
  PRIMARY KEY (`AlbumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `album` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `MessageId` int(20) NOT NULL AUTO_INCREMENT COMMENT '鐣欒█Id',
  `MessageDate` date DEFAULT NULL COMMENT '鐣欒█鏃ユ湡',
  `MessageTitle` varchar(50) DEFAULT NULL COMMENT '鐣欒█鏍囬',
  `StuName` varchar(20) DEFAULT NULL COMMENT '鐣欒█浣滆�',
  PRIMARY KEY (`MessageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `NewsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '鏂伴椈Id',
  `NewsName` varchar(30) DEFAULT NULL COMMENT '鏂伴椈鏍囬',
  `NewsCategory` int(11) DEFAULT NULL COMMENT '鏂伴椈绫诲埆  閫氱煡鍏憡锛�锛�鏈嶅姟淇℃伅锛�锛夋牎鍐呮柊闂伙紙3锛�缁煎悎鏂伴椈锛�锛�,
  PRIMARY KEY (`NewsId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`NewsId`,`NewsName`,`NewsCategory`) values (1,NULL,1),(2,NULL,2),(3,NULL,3),(4,NULL,4);

/*Table structure for table `share` */

DROP TABLE IF EXISTS `share`;

CREATE TABLE `share` (
  `ShareId` int(11) NOT NULL AUTO_INCREMENT COMMENT '鏂囦欢缂栧彿',
  `ShareName` varchar(50) DEFAULT NULL COMMENT '鏂囦欢鍚�,
  PRIMARY KEY (`ShareId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `share` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `StuId` int(11) NOT NULL COMMENT '鏅�鐢ㄦ埛鐧诲綍鍚�,
  `UserPassword` varchar(20) DEFAULT NULL COMMENT '鏅�鐢ㄦ埛瀵嗙爜',
  PRIMARY KEY (`StuId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`StuId`) REFERENCES `userinfo` (`StuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`StuId`,`UserPassword`) values (2013210963,'2013210963'),(2013210964,'2013210964'),(2013210965,'2013210965'),(2013210966,'2013210966'),(2013210967,'2013210967');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `StuId` int(11) NOT NULL COMMENT '瀛﹀彿',
  `StuName` varchar(20) NOT NULL COMMENT '濮撳悕',
  `StuSex` varchar(2) DEFAULT NULL COMMENT '鎬у埆',
  `StuAge` int(11) DEFAULT NULL COMMENT '骞撮緞',
  `StuPhone` varchar(20) DEFAULT NULL COMMENT '鐢佃瘽',
  `StuBirthday` date DEFAULT NULL COMMENT '鐢熸棩',
  `StuHome` varchar(30) DEFAULT NULL COMMENT '瀹跺涵浣忓潃',
  `StuAddress` varchar(30) DEFAULT NULL COMMENT '瀛︽牎浣忓潃',
  PRIMARY KEY (`StuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`StuId`,`StuName`,`StuSex`,`StuAge`,`StuPhone`,`StuBirthday`,`StuHome`,`StuAddress`) values (2013210963,'鏌愪竴','濂�,18,'18883841234','1996-02-14','鍥涘窛鐪佸箍鍏冨競鏌愭煇','19-711'),(2013210964,'鏌愪簩','鐢�,20,'18883841235','1994-02-05','瀹夊窘鐪佹煇鏌愬競鏌愭煇','18-511'),(2013210965,'鏌愪笁','鐢�,20,'18883841236','1994-01-13','鍥涘窛鐪佹垚閮藉競鏌愭煇','18-512'),(2013210966,'鏌愬洓','鐢�,19,'18883841237','1995-08-09','闄曡タ鐪佽タ瀹夊競鏌愭煇','18-512'),(2013210967,'鏌愪簲','濂�,19,'18883841238','1995-09-18','閲嶅簡甯傚崡宀稿尯鏌愭煇','19-711');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
