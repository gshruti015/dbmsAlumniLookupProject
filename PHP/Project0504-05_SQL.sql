# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: smith_alumni
# Generation Time: 2018-12-05 17:25:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Alumni
# ------------------------------------------------------------

CREATE DATABASE Smith.Alumni
; USED DATABASE SmithAlumni;

DROP TABLE IF EXISTS `Alumni`;

CREATE TABLE `Alumni` (
  `uid` decimal(9,0) NOT NULL,
  `almFName` varchar(20) NOT NULL,
  `almMName` varchar(20) DEFAULT NULL,
  `almLName` varchar(20) NOT NULL,
  `dOB` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `initialVisaStatus` varchar(10) NOT NULL,
  `alumniLinkdin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Alumni` WRITE;
/*!40000 ALTER TABLE `Alumni` DISABLE KEYS */;

INSERT INTO `Alumni` (`uid`, `almFName`, `almMName`, `almLName`, `dOB`, `gender`, `address`, `email`, `phone`, `initialVisaStatus`, `alumniLinkdin`)
VALUES
	(85045267,'John',NULL,'Malone','1960-03-19','male','777 Brockton Avenue, Rockville MD 20430','john.malone@rhsmith.umd.edu',1776052543,'Citizen','https://www.linkedin.com/in/john-malone-consultant/'),
	(85087383,'Prachiti',NULL,'Phadke','1989-12-09','female','280 Washington Street, Hudson MA 1749','prachiti.phadke@rhsmith.umd.edu',1874456431,'F1','https://www.linkedin.com/in/prachiti-a-phadke/'),
	(88567489,'Ravi',NULL,'Pandey','1973-05-12','male','200 Ridgewood Road, Baltimore, MD 21210','ravi.pandey@rhsmith.umd.edu',1973990928,'F1','https://www.linkedin.com/in/ravi-pandey1/'),
	(95074545,'Ameya',NULL,'Chavan','1995-02-14','male','42417 Hwy 195, Haleyville AL 35565','ameya.chavan@rhsmith.umd.edu',1608695291,'F1','https://www.linkedin.com/in/ameya-chavan/'),
	(95087383,'Melissa',NULL,'Delcid','1990-05-07','female','3191 County rd 10, Canandaigua NY 14424','melissa.delcid@rhsmith.umd.edu',1784478712,'Citizen','https://www.linkedin.com/in/melissa-delcid/'),
	(95774528,'Kushagra',NULL,'Sinha','1991-08-31','male','318 Canino Road, Houston, TX 77076','kushagra.sinha@rhsmith.umd.edu',1205211036,'F1','https://www.linkedin.com/in/kushagra-sinha/'),
	(95986383,'Akshat',NULL,'Maltare','1993-11-17','male','43 Elmwood St. Cornelius, NC 28031','akshat.maltare@rhsmith.umd.edu',1973990928,'F1','https://www.linkedin.com/in/akshat-maltare/'),
	(103215641,'Pallavi',NULL,'Kambiri','1991-01-20','female','3 South San Pablo Dr. New Rochelle, NY 10801','pallavi191@gmail.com',1888656702,'F1',NULL),
	(105081255,'Jiapei',NULL,'Hu','1990-09-26','female','1607 23rd Street NW, Washington, DC 20008','jiapei.hu@rhsmith.umd.edu',1301683883,'F1','https://www.linkedin.com/in/jiapei-hu/'),
	(105084712,'Saloni',NULL,'Kanakia','1995-11-23','female','664 Dickens Road, Lilburn, Georgia 30047','saloni.kanakia@rhsmith.umd.edu',1347815665,'F1','https://www.linkedin.com/in/kanakiasaloni/'),
	(105087485,'Sragdhara',NULL,'Pattanaik','1987-10-04','female','677 Timpany Blvd, Gardner MA 1440','srahdhara.pattanaik@rhsmith.umd.edu',1720297220,'F1','https://www.linkedin.com/in/sragdhara-pattanaik-b8a7ab13b/'),
	(105087486,'Gauri',NULL,'Bhide','1993-08-17','female','650 Main Ave, Norwalk CT 6851','gauri.bhide@rhsmith.umd.edu',1240344092,'F1','https://www.linkedin.com/in/gauribhide/'),
	(106087890,'Don',NULL,'Lunaria','1987-03-22','male','3469 Pheasant Ridge Rd. Philadelphia, PA 19146','don.lunaria@gmail.com',NULL,'J1',NULL),
	(107658253,'Gagandeep',NULL,'Singh','1992-08-31','male','55 Brooksby Village Way, Danvers MA 1923','gagandeep.singh@hotmail.com',1302664179,'F1','https://www.linkedin.com/in/singh-gagandeep/'),
	(109086676,'Ben',NULL,'Brown','1995-06-18','male','8933 Lincoln St. Faribault, MN 55021','ben.brown95@gmail.com',1983990928,'Citizen','https://www.linkedin.com/in/ben-brown-748b56b3/'),
	(109782234,'Ed',NULL,'Stockton','1970-02-23','male','3634 Spencer St #220\nTorrance, California(CA), 90503','edstockton@gmail.com',1903544765,'Citizen','https://www.linkedin.com/in/edstockton/'),
	(115076255,'Karan',NULL,'Arora','1988-07-23','male','66 North Railroad St. Canonsburg, PA 15317','karanarora@gmail.com',1865399123,'F1','https://www.linkedin.com/in/arorakaran/'),
	(116087653,'Jiening',NULL,'Wu','1994-04-19','female','84 Rr 1 Clio, Alabama(AL), 36017','jieningwu94@gmail.com',1301658860,'F1','https://www.linkedin.com/in/jieningwu/'),
	(116097681,'Reese',NULL,'LaRocque','1990-06-27','female','43 Elmwood St. Cornelius, NC 28031','reese.laRoc@gmail.com',1632334981,'Citizen','https://www.linkedin.com/in/reese-larocque-4b838424'),
	(116098789,'Brett',NULL,'Darrah','1994-08-29','male','261 Bancroft Rd\nRindge, New Hampshire(NH), 03461','brettdarrah.94@yahoo.com',1649077621,'Citizen','https://www.linkedin.com/in/brett-darrah-6731155a/');

/*!40000 ALTER TABLE `Alumni` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Company
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Company`;

CREATE TABLE `Company` (
  `seqNum` int(11) NOT NULL AUTO_INCREMENT,
  `comName` varchar(50) DEFAULT NULL,
  `visaSponsorship` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`seqNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;

INSERT INTO `Company` (`seqNum`, `comName`, `visaSponsorship`)
VALUES
	(5002,'Deloitte','Yes'),
	(5003,'Ernst & Young','Yes'),
	(5004,'Mckinsey & Company','Yes'),
	(5005,'PwC','Yes'),
	(5006,'Grant Thorton','No'),
	(5007,'Deloitte','Yes'),
	(5008,'Ernst & Young','Yes'),
	(5009,'High Radius','Yes'),
	(5010,'ZS','Yes'),
	(5011,'Target','No'),
	(5012,'Accenture','No'),
	(5013,'FedEx','Yes'),
	(5014,'Walmart','No'),
	(5015,'Chegg','Yes'),
	(5016,'Sabre','No'),
	(5017,'Nutanix','Yes'),
	(5018,'Textron','Yes'),
	(5019,'Privco','Yes'),
	(5020,'ZS','No'),
	(5021,'Target','No');

/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Expertise
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Expertise`;

CREATE TABLE `Expertise` (
  `uid` decimal(9,0) NOT NULL,
  `technicalSkill` varchar(50) DEFAULT NULL,
  `softSkillPrimary` varchar(100) DEFAULT NULL,
  `softSkillSecondary` varchar(100) DEFAULT NULL,
  `certification` varchar(100) DEFAULT NULL,
  KEY `uid` (`uid`),
  CONSTRAINT `expertise_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `Alumni` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Expertise` WRITE;
/*!40000 ALTER TABLE `Expertise` DISABLE KEYS */;

INSERT INTO `Expertise` (`uid`, `technicalSkill`, `softSkillPrimary`, `softSkillSecondary`, `certification`)
VALUES
	(116097681,NULL,'Marketing','Event planning','Google Adwords'),
	(115076255,'Web analytics','Software integration','Google adwords',NULL),
	(116087653,'Financial analysis','Customer service','Team leadership','Certified Associate in Project Management'),
	(107658253,'Python','Project management',NULL,'ITIL V3 Foundation'),
	(109086676,'C/C++','Public speaking','Sales','EPA Lead Safe Certification'),
	(116098789,'SQL','Management',NULL,NULL),
	(103215641,'Core java',NULL,NULL,NULL),
	(109782234,'SQL',NULL,NULL,NULL),
	(106087890,NULL,'Computer security','Operational planning','Certified Information systems security professional'),
	(95087383,'Python','Accounting','Customer service',NULL),
	(95986383,'Java, sql, C','NULL','NULL','DB2 10 IBM'),
	(85087383,'Sql,C#','Project management','Management accounting',NULL),
	(85045267,NULL,'Market research','Business strategy',NULL),
	(88567489,'Sql','Data warehousing','Requirements analysis','Data visualization in R with ggvis'),
	(105087485,'Tableau',NULL,NULL,'Salesforce certified administrator'),
	(105087486,'C++,mySql','Agile methodologies',NULL,'Salesforce certified service cloud consultant'),
	(95074545,'Sql,java','Management','Health economics',NULL),
	(105081255,'Python,R,Sql',NULL,NULL,'Data Analyst python track'),
	(105084712,'Python,Sql',NULL,NULL,NULL),
	(95774528,'R,Sql,pHp','Web development','Marketing','Google Analytics');

/*!40000 ALTER TABLE `Expertise` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Job
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Job`;

CREATE TABLE `Job` (
  `uid` decimal(9,0) NOT NULL,
  `seqNum` int(11) NOT NULL,
  `jobId` int(11) NOT NULL AUTO_INCREMENT,
  `jobTitle` varchar(50) DEFAULT NULL,
  `network` varchar(100) DEFAULT NULL,
  `jobDesc` varchar(200) DEFAULT NULL,
  `rating` decimal(10,2) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jobId`),
  KEY `uid` (`uid`),
  KEY `seqNum` (`seqNum`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `Alumni` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_ibfk_2` FOREIGN KEY (`seqNum`) REFERENCES `Company` (`seqNum`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Job` WRITE;
/*!40000 ALTER TABLE `Job` DISABLE KEYS */;

INSERT INTO `Job` (`uid`, `seqNum`, `jobId`, `jobTitle`, `network`, `jobDesc`, `rating`, `industry`)
VALUES
	(116097681,5002,1003,'Data Analyst','LinkedIn','Consulting,Information Technology, Project Management',4.50,'Consulting'),
	(115076255,5003,1004,'Assurance Associate','LinkedIn','Consulting, Analyst, Strategy/Planning',4.40,'Consulting'),
	(116087653,5004,1005,'Data Scientist','LinkedIn','Engineering, Information Technology',5.00,'IT'),
	(107658253,5005,1006,'Business Data Analyst','HireSmith','Finance, Analyst',4.80,'Finance'),
	(109086676,5006,1007,'Data Analytics Consultant','HireSmith','Business Development, Sales',4.50,'Consulting'),
	(116098789,5007,1008,'Implementation Project Manager','LinkedIn','Project Management, Information Technology',4.00,'IT'),
	(103215641,5008,1009,'Solutions Analyst','Indeed','Information Technology',4.20,'IT'),
	(109782234,5009,1010,'Data Engineer','LinkedIn','Information Technology, Engineering, Customer Service',3.90,'IT'),
	(106087890,5010,1011,'Senior Digital Analyst','Indeed','Consulting, Design, Information Technology',4.00,'Consulting'),
	(95087383,5011,1012,'Data Scientist','LinkedIn','Engineering, Information Technology',3.50,'IT'),
	(95986383,5012,1013,'Data Analytics Consultant','HireSmith','Business Development,Finance',4.50,'Finance'),
	(85087383,5013,1014,'Project Manager','LinkedIn','Project Management, Information Technology',4.00,'IT'),
	(85045267,5014,1015,'Data Scientist Intern','LinkedIn','Engineering, Information Technology',4.50,'IT'),
	(88567489,5015,1016,'Business Analyst Intern','Indeed','Consulting, Design, Information Technology',4.00,'Consulting'),
	(105087485,5016,1017,'Business Analyst Intern','LinkedIn','Consulting, Analyst, Strategy/Planning',4.00,'Consulting'),
	(105087486,5017,1018,'Project Management Intern','Indeed','Business Development, Sales',4.20,'Consulting'),
	(95074545,5018,1019,'Data Analyst Intern','LinkedIn','Consulting, Analyst',3.50,'IT'),
	(105081255,5019,1020,'Project Management Intern','Indeed','Business Development, Sales',4.20,'Consulting'),
	(105084712,5020,1021,'Product Intern','Indeed','Analyst, Research, Finance',3.80,'Finance'),
	(95774528,5021,1022,'Federal Reserve Board','LinkedIn','Information Technology, Finance',3.20,'IT');

/*!40000 ALTER TABLE `Job` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table JobStatus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `JobStatus`;

CREATE TABLE `JobStatus` (
  `uid` decimal(9,0) NOT NULL,
  `jobId` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`jobId`),
  KEY `jobId` (`jobId`),
  CONSTRAINT `jobstatus_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `Alumni` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `jobstatus_ibfk_2` FOREIGN KEY (`jobId`) REFERENCES `Job` (`jobId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `JobStatus` WRITE;
/*!40000 ALTER TABLE `JobStatus` DISABLE KEYS */;

INSERT INTO `JobStatus` (`uid`, `jobId`)
VALUES
	(116097681,1003),
	(115076255,1004),
	(116087653,1005),
	(107658253,1006),
	(109086676,1007),
	(116098789,1008),
	(103215641,1009),
	(109782234,1010),
	(106087890,1011),
	(95087383,1012),
	(85087383,1013),
	(85045267,1014),
	(88567489,1015),
	(105087485,1016),
	(105087486,1017),
	(95074545,1018),
	(105081255,1019),
	(105084712,1020),
	(95774528,1021),
	(95986383,1022);

/*!40000 ALTER TABLE `JobStatus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SCHOOLINFORMATION
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SCHOOLINFORMATION`;

CREATE TABLE `SCHOOLINFORMATION` (
  `uid` decimal(9,0) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `GPA` decimal(3,2) DEFAULT NULL,
  `elective` varchar(50) DEFAULT NULL,
  `assistantship` char(5) DEFAULT NULL,
  KEY `uid` (`uid`),
  CONSTRAINT `schoolinformation_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `Alumni` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SCHOOLINFORMATION` WRITE;
/*!40000 ALTER TABLE `SCHOOLINFORMATION` DISABLE KEYS */;

INSERT INTO `SCHOOLINFORMATION` (`uid`, `startDate`, `endDate`, `GPA`, `elective`, `assistantship`)
VALUES
	(116097681,'2010-08-15','2011-12-05',4.00,'Google Analytics','No'),
	(115076255,'2010-08-15','2011-12-05',4.00,'Data Mining','Yes'),
	(116087653,'2012-08-27','2013-12-15',3.00,'Google Analytics','No'),
	(107658253,'2016-08-02','2017-12-15',4.00,'Big data','No'),
	(109086676,'2017-08-27','2018-12-15',4.00,'Data Mining','Yes'),
	(116098789,'2011-08-02','2012-12-15',3.00,NULL,'No'),
	(103215641,'2016-08-17','2016-12-15',3.00,'Decision Analytics','Yes'),
	(109782234,'2010-08-15','2011-12-05',4.00,NULL,'No'),
	(106087890,'2016-08-17','2017-12-15',4.00,NULL,'No'),
	(95087383,'2017-08-27','2018-12-15',4.00,'Computer simulation for business applications','No'),
	(95087383,'2016-08-17','2017-12-15',4.00,'Python','No'),
	(85087383,'2016-08-17','2017-12-15',4.00,'Data mining','No'),
	(85045267,'2015-08-20','2016-12-15',4.00,'Computer simulation for business applications','Yes'),
	(88567489,'2015-08-20','2016-12-15',4.00,'Google Analytics','Yes'),
	(105087485,'2016-08-17','2017-12-15',4.00,'Data mining','No'),
	(105087486,'2014-08-05','2015-12-20',4.00,NULL,'No'),
	(95074545,'2015-08-20','2016-12-15',4.00,NULL,'No'),
	(105081255,'2016-08-17','2017-12-15',3.00,NULL,'No'),
	(105084712,'2017-08-04','2018-12-07',4.00,'Google Analytics','No'),
	(95774528,'2017-08-04','2018-12-07',4.00,'Data mining','No');

/*!40000 ALTER TABLE `SCHOOLINFORMATION` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table smith_all
# ------------------------------------------------------------

DROP VIEW IF EXISTS `smith_all`;

CREATE TABLE `smith_all` (
   `UID` DECIMAL(9) NOT NULL,
   `ALMFNAME` VARCHAR(20) NOT NULL,
   `ALMLNAME` VARCHAR(20) NOT NULL,
   `DOB` DATE NOT NULL,
   `GENDER` VARCHAR(10) NOT NULL,
   `ADDRESS` VARCHAR(100) NOT NULL,
   `EMAIL` VARCHAR(100) NOT NULL,
   `PHONE` DECIMAL(10) NULL DEFAULT NULL,
   `INITIALVISASTATUS` VARCHAR(10) NOT NULL,
   `ALUMNILINKDIN` VARCHAR(100) NULL DEFAULT NULL,
   `JOBID` INT(11) NOT NULL DEFAULT '0',
   `JOBTITLE` VARCHAR(50) NULL DEFAULT NULL,
   `NETWORK` VARCHAR(100) NULL DEFAULT NULL,
   `JOBDESC` VARCHAR(200) NULL DEFAULT NULL,
   `RATING` DECIMAL(10) NULL DEFAULT NULL,
   `INDUSTRY` VARCHAR(50) NULL DEFAULT NULL,
   `SEQNUM` INT(11) NULL DEFAULT '0',
   `COMNAME` VARCHAR(50) NULL DEFAULT NULL,
   `VISASPONSORSHIP` VARCHAR(10) NULL DEFAULT NULL,
   `SALARY` DECIMAL(8) NULL DEFAULT NULL,
   `PAYPERHOUR` DECIMAL(8) NULL DEFAULT NULL,
   `CERTIFICATION` VARCHAR(100) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table smith_uc
# ------------------------------------------------------------

DROP VIEW IF EXISTS `smith_uc`;

CREATE TABLE `smith_uc` (
   `ALMFNAME` VARCHAR(20) NOT NULL,
   `ALMLNAME` VARCHAR(20) NOT NULL,
   `PHONE` DECIMAL(10) NULL DEFAULT NULL,
   `INITIALVISASTATUS` VARCHAR(10) NOT NULL,
   `JOBTITLE` VARCHAR(50) NULL DEFAULT NULL,
   `NETWORK` VARCHAR(100) NULL DEFAULT NULL,
   `INDUSTRY` VARCHAR(50) NULL DEFAULT NULL,
   `COMNAME` VARCHAR(50) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table WorkFullTime
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WorkFullTime`;

CREATE TABLE `WorkFullTime` (
  `uid` decimal(9,0) DEFAULT NULL,
  `jobId` int(11) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  KEY `uid` (`uid`),
  KEY `jobId` (`jobId`),
  CONSTRAINT `workfulltime_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `Alumni` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `workfulltime_ibfk_2` FOREIGN KEY (`jobId`) REFERENCES `Job` (`jobId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WorkFullTime` WRITE;
/*!40000 ALTER TABLE `WorkFullTime` DISABLE KEYS */;

INSERT INTO `WorkFullTime` (`uid`, `jobId`, `salary`, `startDate`)
VALUES
	(116097681,1003,80000.00,'2017-02-11'),
	(115076255,1004,70000.00,'2016-02-20'),
	(116087653,1005,98000.00,'2018-01-28'),
	(107658253,1006,85000.00,'2017-03-04'),
	(109086676,1007,68000.00,'2016-02-18'),
	(116098789,1008,73000.00,'2016-02-20'),
	(103215641,1009,90000.00,'2017-03-20'),
	(109782234,1010,75000.00,'2017-02-18'),
	(106087890,1011,98000.00,'2016-02-18'),
	(95087383,1012,83000.00,'2016-02-20'),
	(85087383,1013,90000.00,'2017-03-20'),
	(85045267,1014,75000.00,'2017-02-18');

/*!40000 ALTER TABLE `WorkFullTime` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WorkInternship
# ------------------------------------------------------------

DROP TABLE IF EXISTS `WorkInternship`;

CREATE TABLE `WorkInternship` (
  `uid` decimal(9,0) DEFAULT NULL,
  `jobId` int(11) DEFAULT NULL,
  `payPerHour` decimal(8,2) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  KEY `uid` (`uid`),
  KEY `jobId` (`jobId`),
  CONSTRAINT `workinternship_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `Alumni` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `workinternship_ibfk_2` FOREIGN KEY (`jobId`) REFERENCES `Job` (`jobId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WorkInternship` WRITE;
/*!40000 ALTER TABLE `WorkInternship` DISABLE KEYS */;

INSERT INTO `WorkInternship` (`uid`, `jobId`, `payPerHour`, `startDate`, `endDate`)
VALUES
	(88567489,1015,30.00,'2018-05-14','2018-07-06'),
	(105087485,1016,25.00,'2018-05-21','2018-07-13'),
	(105087486,1017,40.00,'2016-05-23','2016-07-11'),
	(95074545,1018,32.00,'2017-05-28','2017-07-20'),
	(105081255,1019,30.00,'2018-06-04','2018-07-06'),
	(105084712,1020,22.00,'2017-05-16','2017-07-18'),
	(95774528,1021,25.00,'2016-05-28','2016-07-13'),
	(95986383,1022,28.00,'2015-06-06','2015-07-25');

/*!40000 ALTER TABLE `WorkInternship` ENABLE KEYS */;
UNLOCK TABLES;




# Replace placeholder table for smith_all with correct view syntax
# ------------------------------------------------------------

DROP TABLE `smith_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `smith_all`
AS SELECT
   `A`.`uid` AS `UID`,
   `A`.`almFName` AS `ALMFNAME`,
   `A`.`almLName` AS `ALMLNAME`,
   `A`.`dOB` AS `DOB`,
   `A`.`gender` AS `GENDER`,
   `A`.`address` AS `ADDRESS`,
   `A`.`email` AS `EMAIL`,
   `A`.`phone` AS `PHONE`,
   `A`.`initialVisaStatus` AS `INITIALVISASTATUS`,
   `A`.`alumniLinkdin` AS `ALUMNILINKDIN`,
   `J`.`jobId` AS `JOBID`,
   `J`.`jobTitle` AS `JOBTITLE`,
   `J`.`network` AS `NETWORK`,
   `J`.`jobDesc` AS `JOBDESC`,
   `J`.`rating` AS `RATING`,
   `J`.`industry` AS `INDUSTRY`,
   `C`.`seqNum` AS `SEQNUM`,
   `C`.`comName` AS `COMNAME`,
   `C`.`visaSponsorship` AS `VISASPONSORSHIP`,
   `F`.`salary` AS `SALARY`,
   `I`.`payPerHour` AS `PAYPERHOUR`,
   `E`.`certification` AS `CERTIFICATION`
FROM (((((`alumni` `A` join `job` `J` on((`A`.`uid` = `J`.`uid`))) left join `company` `C` on((`J`.`seqNum` = `C`.`seqNum`))) left join `expertise` `E` on((`A`.`uid` = `E`.`uid`))) left join `workfulltime` `F` on((`J`.`jobId` = `F`.`jobId`))) left join `workinternship` `I` on((`J`.`jobId` = `I`.`jobId`)));


# Replace placeholder table for smith_uc with correct view syntax
# ------------------------------------------------------------

DROP TABLE `smith_uc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `smith_uc`
AS SELECT
   `A`.`almFName` AS `ALMFNAME`,
   `A`.`almLName` AS `ALMLNAME`,
   `A`.`phone` AS `PHONE`,
   `A`.`initialVisaStatus` AS `INITIALVISASTATUS`,
   `J`.`jobTitle` AS `JOBTITLE`,
   `J`.`network` AS `NETWORK`,
   `J`.`industry` AS `INDUSTRY`,
   `C`.`comName` AS `COMNAME`
FROM (((((`alumni` `A` join `job` `J` on((`A`.`uid` = `J`.`uid`))) left join `company` `C` on((`J`.`seqNum` = `C`.`seqNum`))) left join `expertise` `E` on((`A`.`uid` = `E`.`uid`))) left join `workfulltime` `F` on((`J`.`jobId` = `F`.`jobId`))) left join `workinternship` `I` on((`J`.`jobId` = `I`.`jobId`)));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
