--
-- Table structure for table `author`
--
 
 
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `profile` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
 
--
-- Dumping data for table `author`
--
 
INSERT INTO `author` VALUES (1,'egoing','developer');
INSERT INTO `author` VALUES (2,'duru','database administrator');
INSERT INTO `author` VALUES (3,'taeho','data scientist, developer');
 
--
-- Table structure for table `topic`
--
 
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `description` text,
  `created` datetime NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
 
--
-- Dumping data for table `topic`
--
 
INSERT INTO `topic` VALUES (1,'MySQL','MySQL is...','2020-08-17 00:00:11',1);
INSERT INTO `topic` VALUES (2,'Oracle','Oracle is ...','2020-08-17 00:00:11',1);
INSERT INTO `topic` VALUES (3,'SQL Server','SQL Server is ...','2020-08-17 00:00:11',2);
INSERT INTO `topic` VALUES (4,'PostgreSQL','PostgreSQL is ...','2020-08-17 00:00:11',3);
INSERT INTO `topic` VALUES (5,'MongoDB','MongoDB is ...','2020-08-17 00:00:11',1);