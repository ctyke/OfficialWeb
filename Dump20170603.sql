-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ctyke
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `cover_img` varchar(100) DEFAULT NULL,
  `summary` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (2,1,'Jason 參與開發的目標','http://d225fqn1pkg6mt.cloudfront.net/wp-content/uploads/2013/11/How_to_start_a_business_crop.jpg','首先得說說這個Blog, 將會是Ctyke團隊第一件開發的成品, 算是吧? 我很高興Ctyke終於開始踏上開發之路！絕不容易啊！ 以後所有開發過程中的感受以及困難都會在此網站發表， 當然最新開發的進度也不例外，一併發到這版上。 ','<span style=\"font-size: x-large;\">前言:&nbsp;</span><div>首先得說說這個Blog, 將會是Ctyke團隊第一件開發的成品, 算是吧? 我很高興Ctyke終於開始踏上開發之路！絕不容易啊！ 以後所有開發過程中的感受以及困難都會在此網站發表， 當然最新開發的進度也不例外，一併發到這版上。&nbsp;<div><br></div><div><span style=\"font-size: x-large;\">目標:&nbsp;</span></div><div>當然希望可以有第一個開發的產品計劃，這方面我們會盡快去討論。 然而，第一步我們應該去先看看這個市場需求：遊戲? 工具? 還是…? 一切都是未知之數—— 我們作為一個小團隊，希望可以各施其職，每個人都盡自己的能力， 至於團隊介紹將會不久補上。 總結，這個Blog將為Ctyke團隊開發邁進一大步！&nbsp;</div><div><br></div><div><span style=\"font-size: x-large;\">後記:&nbsp;</span></div><div>其實我是第一次公開發表自己的感想， 在文章內容方面有待改善，請見諒， 下次我會再寫更好文章。</div></div><div><img src=\"http://www.improgrammer.net/wp-content/uploads/2014/06/10437663_10152464190569592_4346610243548046850_n1.jpg\"><br></div>','2038-01-19 03:14:08'),(3,1,'Hello World - Blog 開發心得和感言','https://www.theblogstarter.com/wp-content/uploads/2016/01/start-your-blog-4-steps.png','一直想將我們的開發心得集中起來，令到團隊每一個人都可以隨時和其他人交流心得。因此我們最終決定將分享放到全世界，建立了我們的博客。','<span style=\"font-size: x-large;\">序:&nbsp;</span><div>Ctyke 的 Blog 終於開通了。 2016 年，科技正不停進步，而 Ctyke 終於有屬於自己的平台了。 一直想將我們的開發心得集中起來，令到團隊每一個人都可以隨時和其他人交流心得。因此我們最終決定將分享放到全世界，建立了我們的博客。 而再詳細的產品介紹和內容則會放在我們的官網，雖然現在是沒什麼成功的產品，但未來將會不停開發我們感興趣的事物，因此多多關注我們Ctyke吧。&nbsp;<div><br></div><div><span style=\"font-size: x-large;\">正文:&nbsp;</span></div><div>接下来作為第一篇的文章，我來說說建立這個Blog的心得吧。 建立Blog前一直在找各種的平台，亦有考慮直接建立在我們的伺服器，但最終都選擇了用 GitHub 來作為我們Blog 的伺服器。原因如下: 所有網頁架在GitHub的伺服器，而現時來說GitHub還算很穩定的 完全支援Jekyll+Markdown技術，令到博客建立變得非常容易(以後會寫一篇如何用Jekyll+github建立Blog的文章) 支援自定義域名(當然前提你要有屬於自己的域名) Git 的便利性(一句Commit 便可以上傳/刪除/修改文章) 當然用Github也有缺點，就是整個網站都是開源的，因此不能建立私人的文章。不過原來也打算將所有內容分享，所以對我們也沒什麼影響。 整個配置過程大概只花了半天(找Template花時間最多呢)，算是相當快捷了。 而網站的Theme 是基于 Bootstrap 定制的，再加上Hux的Jekyll模板，有興趣的可以參考我的GitHub&nbsp;</div><div><br></div><div><span style=\"font-size: x-large;\">后记:&nbsp;</span></div><div>最後，希望這個平台會增強我們團隊的技術和動力，開發更多次世代的產品吧。 同時未來亦會不停發表文章，亦會優化網站的UI。希望你們會喜歡這個Blog~。</div></div>','2038-01-19 03:14:08'),(4,1,'dfsafsdf','','asdfadsdfadsf','asdfadsdfadsf','2017-05-26 11:14:45');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Administer2','admin','123456','https://i2.read01.com/uploads/0D14K501.jpg'),(2,'BenbEN','ben','123456','http://allthingsd.com/files/2013/07/hunterwalk5-e1320001548309-300x300.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-03 19:43:46
