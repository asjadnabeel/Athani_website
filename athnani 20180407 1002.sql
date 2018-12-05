-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.2.3-falcon-alpha-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema registration
--

CREATE DATABASE IF NOT EXISTS registration;
USE registration;

--
-- Definition of table `account_expense`
--

DROP TABLE IF EXISTS `account_expense`;
CREATE TABLE `account_expense` (
  `idaccount_expense` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vno` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `particular` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `dat` date NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `month` varchar(500) NOT NULL,
  `salarymonth` varchar(500) DEFAULT NULL,
  `year` varchar(450) NOT NULL,
  `Months` varchar(450) NOT NULL,
  PRIMARY KEY (`idaccount_expense`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_expense`
--

/*!40000 ALTER TABLE `account_expense` DISABLE KEYS */;
INSERT INTO `account_expense` (`idaccount_expense`,`vno`,`name`,`particular`,`amount`,`dat`,`remark`,`month`,`salarymonth`,`year`,`Months`) VALUES 
 (1,'1','SBI 67385421853','BANK','5000','2018-02-15','','Feb','Feb','2018','Feb'),
 (2,'5','SAMEER','Salary','12000.0','2018-02-01','','Feb','Feb','2018','Feb');
/*!40000 ALTER TABLE `account_expense` ENABLE KEYS */;


--
-- Definition of table `account_income`
--

DROP TABLE IF EXISTS `account_income`;
CREATE TABLE `account_income` (
  `idaccount` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bno` varchar(40) NOT NULL,
  `rno` varchar(40) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(200) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `dat` date NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `Mnth` varchar(450) NOT NULL,
  `year` varchar(450) NOT NULL,
  PRIMARY KEY (`idaccount`,`rno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_income`
--

/*!40000 ALTER TABLE `account_income` DISABLE KEYS */;
INSERT INTO `account_income` (`idaccount`,`bno`,`rno`,`name`,`type`,`amount`,`dat`,`remark`,`month`,`Mnth`,`year`) VALUES 
 (1,'1','2','FAHAD K','MONTHLY','500.0','2018-02-01','','Feb','Feb','2018'),
 (2,'1','1','FAHAD K','MONTHLY','500.0','2018-02-01','','Feb','Feb','2018'),
 (3,'1','3','fahad azzi','DONATION','10000','2018-02-15','psy','Feb','Feb','2018'),
 (4,'0','0','Opening balance','OB','1000','2018-02-01','','Jan','Feb','2018'),
 (5,'1','4','cv','DONATION','120000','2018-02-01','','Feb','Feb','2018'),
 (6,'1','7','NIHAL PAVITHRAN','MONTHLY','100.0','2018-02-20','','March','Feb','2018');
/*!40000 ALTER TABLE `account_income` ENABLE KEYS */;


--
-- Definition of table `accuser`
--

DROP TABLE IF EXISTS `accuser`;
CREATE TABLE `accuser` (
  `idaccuser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(450) NOT NULL,
  `pass` varchar(450) NOT NULL,
  PRIMARY KEY (`idaccuser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accuser`
--

/*!40000 ALTER TABLE `accuser` DISABLE KEYS */;
INSERT INTO `accuser` (`idaccuser`,`username`,`pass`) VALUES 
 (1,'Shaharban','Shah79'),
 (2,'fahad','1216');
/*!40000 ALTER TABLE `accuser` ENABLE KEYS */;


--
-- Definition of table `acreport`
--

DROP TABLE IF EXISTS `acreport`;
CREATE TABLE `acreport` (
  `idacreport` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dat` date NOT NULL,
  `incometype` varchar(450) DEFAULT NULL,
  `iamount` varchar(450) DEFAULT NULL,
  `month` varchar(450) DEFAULT NULL,
  `year` varchar(450) DEFAULT NULL,
  `exptype` varchar(450) DEFAULT NULL,
  `eamount` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`idacreport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acreport`
--

/*!40000 ALTER TABLE `acreport` DISABLE KEYS */;
INSERT INTO `acreport` (`idacreport`,`dat`,`incometype`,`iamount`,`month`,`year`,`exptype`,`eamount`) VALUES 
 (1,'2018-02-01','MONTHLY','500.0','Feb','2018',NULL,NULL),
 (2,'2018-02-01','MONTHLY','500.0','Feb','2018',NULL,NULL),
 (3,'2018-02-15','DONATION','10000','Feb','2018',NULL,NULL),
 (4,'2018-02-01','OB','1000','Feb','2018',NULL,NULL),
 (5,'2018-02-01','DONATION','120000','Feb','2018',NULL,NULL),
 (6,'2018-02-20','MONTHLY','100.0','Feb','2018',NULL,NULL);
/*!40000 ALTER TABLE `acreport` ENABLE KEYS */;


--
-- Definition of table `additional`
--

DROP TABLE IF EXISTS `additional`;
CREATE TABLE `additional` (
  `idAdditional` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `slno` text NOT NULL,
  `types` text NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`idAdditional`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additional`
--

/*!40000 ALTER TABLE `additional` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional` ENABLE KEYS */;


--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `idadmin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(450) NOT NULL,
  `pass` varchar(450) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`idadmin`,`username`,`pass`) VALUES 
 (1,'Abdul Hameed','Pkah');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE `adminlogin` (
  `idadminlogin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `pass` varchar(450) NOT NULL,
  PRIMARY KEY (`idadminlogin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` (`idadminlogin`,`name`,`pass`) VALUES 
 (1,'admin','123');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;


--
-- Definition of table `aparutus`
--

DROP TABLE IF EXISTS `aparutus`;
CREATE TABLE `aparutus` (
  `idaparutus` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(200) NOT NULL,
  `dat` date NOT NULL,
  `itemname` varchar(450) NOT NULL,
  `ad` varchar(450) NOT NULL DEFAULT '0',
  `co` varchar(450) NOT NULL,
  `mob` varchar(450) NOT NULL,
  `pname` varchar(450) NOT NULL,
  `status` varchar(450) NOT NULL,
  PRIMARY KEY (`idaparutus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aparutus`
--

/*!40000 ALTER TABLE `aparutus` DISABLE KEYS */;
INSERT INTO `aparutus` (`idaparutus`,`regno`,`dat`,`itemname`,`ad`,`co`,`mob`,`pname`,`status`) VALUES 
 (1,'2/15','2017-12-26','ab01','ummathur\nvettathur\nkavala\nthekenmala','a','12','mymoona','1'),
 (2,'tp10','2018-01-27','br01','adzvsv','axc','1234','az','1'),
 (3,'5/15','2018-01-20','ab02','pallikunnan\nvettathur\nezhuthala\n','q','12','abdullakutti','1');
/*!40000 ALTER TABLE `aparutus` ENABLE KEYS */;


--
-- Definition of table `aparutusdetails`
--

DROP TABLE IF EXISTS `aparutusdetails`;
CREATE TABLE `aparutusdetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `code` varchar(450) NOT NULL,
  `issuedate` date NOT NULL,
  `redate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aparutusdetails`
--

/*!40000 ALTER TABLE `aparutusdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `aparutusdetails` ENABLE KEYS */;


--
-- Definition of table `apparutus`
--

DROP TABLE IF EXISTS `apparutus`;
CREATE TABLE `apparutus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apparutus`
--

/*!40000 ALTER TABLE `apparutus` DISABLE KEYS */;
INSERT INTO `apparutus` (`id`,`item`,`code`,`status`) VALUES 
 (1,'air bed','ab01','0'),
 (2,'back rest','br01','0'),
 (3,'air bed','ab02','0'),
 (4,'air bed','ab03','1');
/*!40000 ALTER TABLE `apparutus` ENABLE KEYS */;


--
-- Definition of table `aseet`
--

DROP TABLE IF EXISTS `aseet`;
CREATE TABLE `aseet` (
  `idaseet` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` text NOT NULL,
  `quantity` varchar(450) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idaseet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aseet`
--

/*!40000 ALTER TABLE `aseet` DISABLE KEYS */;
INSERT INTO `aseet` (`idaseet`,`itemname`,`quantity`,`status`) VALUES 
 (1,'WATER BED','9','active'),
 (2,'air bed','5','active'),
 (3,'WHEEL CHAIR','11','damaged'),
 (4,'WAKER','16','active'),
 (5,'oxygen cylinder','5','active'),
 (6,'BACK REST','4','damaged'),
 (7,'NEBULAISER','4','active'),
 (8,'hospitel cotte','6','damaged'),
 (9,'KAMODE','4','damaged'),
 (10,'SECTION APPATUS','1',NULL),
 (11,'KRACHASE','1',NULL),
 (12,'WAKING STICKE','7',NULL),
 (13,'URINEL','3',NULL),
 (14,'sputten cappe','1','active'),
 (15,'HOTEWATER BAG','1',NULL),
 (16,'WATER KUSHAN','3',NULL),
 (17,'BED PAN','1',NULL),
 (18,'I V STAND','1',NULL),
 (19,'regulator','1','active'),
 (20,'section appatus','1','active'),
 (22,'air bed','5','damaged'),
 (23,'KAMODE','4','active'),
 (24,'hospitel cotte','6','damaged'),
 (25,'REGULATOR','1',NULL),
 (26,'CRUCHES','1',NULL),
 (27,'sputten cappe ','1','active'),
 (28,'OXYGEN CYLINDER','5',NULL);
/*!40000 ALTER TABLE `aseet` ENABLE KEYS */;


--
-- Definition of table `attandance`
--

DROP TABLE IF EXISTS `attandance`;
CREATE TABLE `attandance` (
  `idAttandance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  `timein` varchar(450) DEFAULT NULL,
  `timeout` varchar(450) DEFAULT NULL,
  `days` varchar(450) DEFAULT NULL,
  `status` varchar(450) NOT NULL DEFAULT '0',
  `Month` varchar(450) NOT NULL,
  `Year` varchar(450) NOT NULL,
  PRIMARY KEY (`idAttandance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attandance`
--

/*!40000 ALTER TABLE `attandance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attandance` ENABLE KEYS */;


--
-- Definition of table `backdrive`
--

DROP TABLE IF EXISTS `backdrive`;
CREATE TABLE `backdrive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DriveName` varchar(45) NOT NULL,
  `foldername` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backdrive`
--

/*!40000 ALTER TABLE `backdrive` DISABLE KEYS */;
INSERT INTO `backdrive` (`id`,`DriveName`,`foldername`) VALUES 
 (1,'D','backup');
/*!40000 ALTER TABLE `backdrive` ENABLE KEYS */;


--
-- Definition of table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `idbank` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bankname` varchar(450) NOT NULL,
  `account` varchar(450) NOT NULL,
  `ifsc` varchar(450) NOT NULL,
  `branch` varchar(450) NOT NULL,
  `actype` varchar(450) NOT NULL,
  `balance` varchar(450) NOT NULL,
  PRIMARY KEY (`idbank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` (`idbank`,`bankname`,`account`,`ifsc`,`branch`,`actype`,`balance`) VALUES 
 (1,'sbi','67385421853','sbin0070454','areacode','saving','21500.0');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;


--
-- Definition of table `bankexpence`
--

DROP TABLE IF EXISTS `bankexpence`;
CREATE TABLE `bankexpence` (
  `idbankac` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bno` varchar(400) NOT NULL,
  `cheqno` varchar(450) NOT NULL,
  `bankname` varchar(450) NOT NULL,
  `amount` varchar(450) NOT NULL,
  `remark` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  `balance` varchar(450) NOT NULL,
  PRIMARY KEY (`idbankac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankexpence`
--

/*!40000 ALTER TABLE `bankexpence` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankexpence` ENABLE KEYS */;


--
-- Definition of table `bankincome`
--

DROP TABLE IF EXISTS `bankincome`;
CREATE TABLE `bankincome` (
  `idbankincome` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dat` date NOT NULL,
  `bankname` varchar(450) NOT NULL,
  `narration` varchar(450) NOT NULL,
  `amount` varchar(450) NOT NULL,
  PRIMARY KEY (`idbankincome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankincome`
--

/*!40000 ALTER TABLE `bankincome` DISABLE KEYS */;
INSERT INTO `bankincome` (`idbankincome`,`dat`,`bankname`,`narration`,`amount`) VALUES 
 (1,'2018-02-15','sbi','Debit','5000');
/*!40000 ALTER TABLE `bankincome` ENABLE KEYS */;


--
-- Definition of table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(205) NOT NULL,
  `type` varchar(45) NOT NULL,
  `cdate` date NOT NULL,
  `mob` varchar(100) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `co` varchar(450) NOT NULL,
  `code` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`id`,`name`,`type`,`cdate`,`mob`,`amount`,`co`,`code`) VALUES 
 (1,'fahad k','monthly','2018-02-01','null','500.0','puthalam collection',''),
 (2,'azzi','monthly','2018-02-01','null','100.0','puthalam collection',''),
 (3,'nihal pavithran','monthly','2018-02-01','null','100.0','puthalam collection',''),
 (6,'pavithran','monthly','2018-02-01','null','50.0','puthalam collection','');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;


--
-- Definition of table `collectionagent`
--

DROP TABLE IF EXISTS `collectionagent`;
CREATE TABLE `collectionagent` (
  `idCollectionagent` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(450) NOT NULL,
  PRIMARY KEY (`idCollectionagent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collectionagent`
--

/*!40000 ALTER TABLE `collectionagent` DISABLE KEYS */;
INSERT INTO `collectionagent` (`idCollectionagent`,`Name`) VALUES 
 (1,'unit collection'),
 (2,'office'),
 (3,'puthalam collection');
/*!40000 ALTER TABLE `collectionagent` ENABLE KEYS */;


--
-- Definition of table `committy`
--

DROP TABLE IF EXISTS `committy`;
CREATE TABLE `committy` (
  `idcommitty` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromyr` varchar(450) NOT NULL,
  `frmonth` varchar(450) NOT NULL,
  `toyr` varchar(450) NOT NULL,
  `tomonth` varchar(450) NOT NULL,
  `name` varchar(450) NOT NULL,
  `postt` varchar(450) DEFAULT NULL,
  `charge` varchar(450) DEFAULT NULL,
  `mob` varchar(450) DEFAULT NULL,
  `cid` varchar(450) NOT NULL,
  `unitname` varchar(450) NOT NULL,
  `age` varchar(450) NOT NULL,
  `address` varchar(450) NOT NULL,
  `idf` varchar(450) NOT NULL,
  PRIMARY KEY (`idcommitty`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committy`
--

/*!40000 ALTER TABLE `committy` DISABLE KEYS */;
INSERT INTO `committy` (`idcommitty`,`fromyr`,`frmonth`,`toyr`,`tomonth`,`name`,`postt`,`charge`,`mob`,`cid`,`unitname`,`age`,`address`,`idf`) VALUES 
 (1,'2015','Feb','2016','March','NASSER POOCHENGAL','SECRETARY','PATIENTS CARE','9746465913','NASSER POOCHENGAL','ezhuthala','','',''),
 (2,'2015','Feb','2016','March','VELAYUDHAN. P','PRESIDENT','ADMINISTRATION','9746048158','VELAYUDHAN. P','ezhuthala','','',''),
 (3,'2015','Month','2016','Month','SAKEER KP','TREASURER','ACCOUNTS','9447282945','SAKEER KP','ezhuthala','','',''),
 (4,'2015','Month','2019','Month','NASSER POOCHENGAL','SECRETARY','PATIENTS CARE','','NASSER POOCHENGAL','ezhuthala','','',''),
 (5,'2015','Month','2016','Month','VELAYUDHAN.P','PRESIDENT','ADMINISTRATION','9746048158','VELAYUDHAN.P','ezhuthala','','palamuttath',''),
 (6,'2015','Month','2016','Month','NASSER POOCHENGAL','SECRETARY','PATIENTS CARE','9746465913','NASSER POOCHENGAL','ezhuthala','','',''),
 (7,'2015','Feb','2016','March','VELAYUDHA P','PRESIDENT','ADMINISTRATION','9746048158','VELAYUDHA P','ezhuthala','','',''),
 (8,'2015','Month','2016','Month','VELAYUDHAN P','PRESIDENT','ADMINISTRATION','9746048158','VELAYUDHAN P','ezhuthala','','',''),
 (9,'2015','Month','2016','Month','AZHARUDHEEN','PRESIDENT','ADMINISTRATION','9567321686','AZHARUDHEEN','kavala','','',''),
 (10,'2015','Feb','2016','Month','AZHARUDHEEN','PRESIDENT','ADMINSTRATION','9567321686','AZHARUDHEEN','kavala','','',''),
 (11,'2015','Feb','2016','March','MAJEED  PC','TREASURER','FINANCE','9946163639','MAJEED  PC','paloor colony','','',''),
 (12,'2015','Feb','2016','March','UMMER FAROOQ','PRESIDENT','ADMINISTRATION','9048895046','UMMER FAROOQ','karuvathekunnu','','',''),
 (13,'2015','Feb','2016','Month','SUFAID   ERUTH','SECRETARY','ADMINISTRATION','9567801657','SUFAID   ERUTH','kavala','','',''),
 (14,'2015','Feb','2016','March','MOHAMEDALI  V','TREASURER','FINANCE','9995971726','MOHAMEDALI  V','kavala','','',''),
 (15,'2015','Month','2016','Month','MUSTHAFA  KK','TREASURER','FINANCE','9747325243','MUSTHAFA  KK','kavala','','',''),
 (16,'2015','Month','2016','Month','ANAS    V','TREASURER','ACCOUNTS','','ANAS    V','kavala','','',''),
 (17,'2015','Feb','2016','March','GAFOOR PUTHANKOT','TREASURER','ADMINISTRATION','9744366088','GAFOOR','karuvathakunnu','','',''),
 (18,'2015','Month','2016','Month','SHABEEB  VAZHANGODAN','SECRETARY','PATIENTS CARE','9544707016','SHABEEB  V','nirannaparamb','','',''),
 (19,'2016','Month','2017','Month','JALEEL  KK','TREASURER','FINANCE','9847231011','JALEEL  KK','nirannaparamb','','',''),
 (20,'2015','Month','2016','Month','UMMER  PATTAMBI','TREASURER','ACCOUNT','9446154987','UMMER  PATTAMBI','melkulangara','','',''),
 (21,'2015','Month','2016','Month','RAFI  PANDALOOR','VICE PRESIDENT','ADMIN','9495162614','RAFI  PANDALOOR','melkulangara','','',''),
 (22,'2015','Month','2016','Month','ABU  KAVANNAYIL','TREASURER','FINANCE','9495740538','ABU  KAVANNAYIL','melkulangara','','',''),
 (23,'2015','Month','2016','Month','ASHRAF  K','SECRETARY','PATIENTS CARE','9497809337','ASHRAF  K','melkulangara','','',''),
 (24,'2015','April','2016','March','NANI','TREASURER','ADMINISTRATION','9447959730','NANI','melkulangara','','',''),
 (25,'2015','Feb','2016','March','SAIDALVI   ERADEN','PRESIDENT','ADMINISTRATION','9447623508','SAIDALVI   E','kara','','',''),
 (26,'2015','Oct','2016','March','MUSTHAFA  KT','SECRETARY','PATIENTS CARE','9539300409','MUSTHAFA  KT','kara','','',''),
 (27,'2017','April','2018','March','MUHAMMED HAJI  PM','PRESIDENT','ADMINISTRATION','9995833580','MUHAMMED HAJI  PM','high schoolpadi','','',''),
 (28,'2016','April','2017','March','AZEEZ MASTER','SECRETARY','PATIENT CARE','9745500667','AZEEZ MASTER','high schoolpadi','','',''),
 (29,'2016','April','2017','March','USMAN MASTER N','TREASURER','FINANCE','9495090114','USMAN MASTER','high schoolpadi','','',''),
 (30,'2017','April','2018','March','MAJEED  K M A','PRESIDENT','ADMINISTRATION','7025132446','MAJEED  K M A','gvs','','',''),
 (31,'2015','Month','2016','Month','AFSAL T','SECRETARY','PATIENTS CARE','8137049511','AFSAL T','gvs','','',''),
 (32,'2015','Feb','2016','March','AZHARUDHEEN','PRESIDENT','ADMINISTRATION','9567321686','AZHARUDHEEN','kavala','','',''),
 (33,'2015','Feb','2016','Month','VEERANKUTTY  P','PRESIDENT','ADMINISTRATION','9995273071','VEERANKUTTY  P','parayarkunnu','','',''),
 (34,'2015','Feb','2016','March','SALAM MASTER','SECRETARY','PATIENTS CARE','9495531064','SALAM MASTER','parayarkunnu','','',''),
 (35,'2015','Feb','2016','Month','SHAMSUDHEEN  PV','TREASURER','ACCOUNTS','9447843193','SHAMSUDHEEN  PV','parayarkunnu','','',''),
 (36,'2016','April','2017','March','ALI  PALLIKUNNAN','PRESIDENT','ADMINISTRATION','9605742093','ALI  PALLIKUNNAN','thekenmala','','',''),
 (37,'2017','Month','2019','Month','SHAMEEJ PACHEERI','SECRETARY','EXCUTIVE MEMBER','9961399655','SHAMEEJ PACHEERI','governing body','','',''),
 (38,'2016','April','2017','March','RISILBABU  KALATHIL','TREASURER','FINANCE','9526741595','RISILBABU  KALATHIL','thekanmala','','',''),
 (39,'2016','April','2017','March','BASHEER  PS','SECRETARY','PATIENT CARE','','BASHEER  PS','high schoolpadi','','',''),
 (40,'2016','April','2017','March','MUSTHAFA  PT','SECRETARY','PATIENTS CARE','9633302020','MUSTHAFA  PT','oduvankund','','',''),
 (41,'2016','April','2017','March','BSHEER  PT','TREASURER','FINANCE','8086140730','BSHEER  PT','oduvankund','','',''),
 (42,'2016','April','2017','March','PARADEEP  P','PRESIDENT','ADMINISTRATION','9846976297','PARADEEP  P','parayarkunnu','','',''),
 (43,'2016','April','2017','March','MUHAMMED SAFWAN','VICE PRESIDENT','ADMINIATRATION','8156831248','MUHAMMED SAFWAN','parayarkunnu','','',''),
 (44,'2016','April','2017','March','SALAM MASTER','SECRETARY ','PATIENT CARE','9947693711','SALAM MASTER','parayarkunnu','','',''),
 (45,'2016','April','2017','March','SIVADASSAN  P','JOINT SECRETARY','PATIENT CARE','7025359270','SIVADASSAN  P','parayarkunnu','','',''),
 (46,'2016','April','2017','March','SHIBILI  K','TREASURER','ACCOUNTS','9526562954','SHIBILI  K','pooronakunne','','',''),
 (47,'2016','April','2017','March','MUHAMMED SHERIF','PRESIDENT','ADMINISTRATION','994639104','MUHAMMED SHERIF','pothakallu','','',''),
 (48,'2016','April','2017','Sept','MUHAMMEDALI  K','SECRETARY','PATIENT CARE','9539221818','MUHAMMEDALI  K','pothakallu','','',''),
 (49,'2016','April','2017','Sept','ANILKUMAR','JOINT SECRETARY','PATIENT CARE','9562095709','ANILKUMAR','pothakallu','','',''),
 (50,'2016','April','2017','Sept','APPUNNI','TREASURER','ACCOUNTS','9495378220','APPUNNI','pothakallu','','',''),
 (51,'2016','April','2017','March','MUSTHAFA  NECHITHODI','PRESIDENT','ADMINISTRATION','','MUSTHAFA  NECHITHODI','kundapadam','','',''),
 (52,'2016','April','2017','Dec','RAFEEQ MASTER','SECRETARY','PATIENT CARE','9495762387','RAFEEQ MASTER','kundapadam','','',''),
 (53,'2016','April','2017','Dec','FAISAL  AP','JOINT SECRETARY','PATIENT CARE','9946343905','FAISAL  AP','kundapadam','','',''),
 (54,'2016','April','2017','Dec','FAISAL KUNDAPADAM','TREASURER','ACCOUNTS','9495497749','FAISAL KUNDAPADAM','kundapadam','','',''),
 (55,'2016','April','2017','March','HARIS ELAMKULAYAN','PRESIDENT','ADMINISTRATION','9486518785','HARIS ELAMKULAYAN','pang  ','','',''),
 (56,'2016','April','2017','March','ASLAM  ELAMKULAYAN','SECRETARY','PATIENT CARE','9037163247','ASLAM  ELAMKULAYAN','pang  ','','',''),
 (57,'2016','April','2017','March','ILIYAS NECHITHADAYAN','TREASURER','ACCOUNTS','9946618530','ILIYAS NECHITHADAYAN','pang  ','','',''),
 (58,'2016','April','2017','March','RAJANI TEACHER','PRESIDENT','ADMINISTRATION','9645351063','RAJANI TEACHER','pottachira','','',''),
 (59,'2016','April','2017','March','JASHEELA','PRESIDENT','ADMINISTRATION','9544847684','JASHEELA','kundady','','',''),
 (60,'2016','April','2017','March','MUHAMMED ANEES VP','PRESIDENT','ADMINISTRATION','9946808142','MUHAMMED ANEES VP','s i p','','vliyapedikakkal',''),
 (61,'2016','April','2017','March','MUHAMMED BASIM','SECRETARY','PATIENT CARE','858941865','MUHAMMED BASIM','s i p','','',''),
 (62,'2016','April','2017','March','MUHAMMED ABDURAHMAN','TREASURER','ACCOUNTS','8137049511','MUHAMMED ABDURAHMAN','s i p','','',''),
 (63,'2015','Month','2016','Month','NOUSHAD THUDIKODEN','PRESIDENT','ADMINISTRATION','9446630697','NOUSHAD THUDIKODEN','kavala','','',''),
 (64,'2015','Month','2016','Month','NISAFUDEEN','SECRETARY','PATIENT CARE','9544194641','NISAFUDEEN','kavala','','',''),
 (65,'2015','Month','2016','Month','MUJEEB PALOOR','PRESIDENT','ADMINISTRATION','9961293063','MUJEEB PALOOR','paloor colony','','',''),
 (66,'2015','Month','2016','Month','MUSTHAFA VADAKKETHIL','SECRETARY','PATIENT CARE','9995282610','MUATHAFA VADAKKETHIL','paloor colony','','',''),
 (67,'2015','Month','2016','Month','ASHARF ELAMKULAYAN','SECRETARY','PATIENT CARE','9495386549','ASHARF ELAMKULAYAN','karuvathakunnu','','',''),
 (68,'2015','Month','2016','Month','ASHRAF KALINGAL','PRESIDENT','ADMINISTRATION','99462339362','ASHRAF KALINGAL','nirannaparamb','','',''),
 (69,'2015','Month','2016','Month','MUNAWAR FAIROOS  ','SECRETARY','PATIENT CARE','9544293626','MUNAWAR FAIROOS  VAKKETHIL','nirannaparamb','','kannanthodi vakkethil',''),
 (70,'2015','Month','2016','Month','CHAMI KANNANTHODI','TREASURER','ACCOUNTS','9544656277','CHAMI KANNANTHODI','nirannaparamb','','',''),
 (71,'2015','Month','2016','Month','HASSAIN TP','TRESURER','ACCOUNTS','','HASSAIN TP','kara','','',''),
 (72,'2015','Feb','2016','March','BASHEER  PS','SECRETARY','PATIENT CARE','','BASHEER  PS','high schoolpadi','','',''),
 (73,'2015','Month','2016','Month','MUHAMMED ALIAS NANNI','PRESIDENT','ADMINISTRATION','9605912076','MUHAMMED ALIAS NANNI','pooronakunnu','','',''),
 (74,'2015','Month','2016','Month','SHIHAB MANNEGAL','SECRETARY','PATIENT CARE','9744113149','SHIHAB MANNEGAL','pooronakunnu','','',''),
 (75,'2015','Month','2016','Month','UNEEN MARUTHAMPARA','TREASURER','ACCOUNTS','9946138527','UNEEN MARUTHAMPARA','pooronakunnu','','',''),
 (76,'2015','Feb','2016','March','MUHAMMEDALI  PILAYITHODI','PRESIDENT','ADMINISTRATION','9746006184','MUHAMMEDALI  PILAYITHODI','parayarkunnu','','',''),
 (77,'2015','Feb','2016','March','SHARAFAHIQ TN','TREASURER','ACCOUNTS','8606334856','SHARAFAHIQ TN','parayarkunnu','','',''),
 (78,'2015','Month','2016','Month','ZAINUL ABID MARUTHAPARA','TREASURER','ACCOUNTS','9567690487','ZAINUL ABID MARUTHAPARA','koothuparamb','','',''),
 (79,'2015','Month','2016','Month','SATHAR PUTHANKOT','PRESIDENT','ADMINISTRATION','9746181547','SATHAR PUTHANKOT','pothakallu','','',''),
 (80,'2015','Month','2016','Month','MAJEED PUTHANKOT','TREASURER','ACCOUNTS','9447843033','MAJEED PUTHANKOT','pothakallu','','',''),
 (81,'2015','Month','2016','Month','SHABEER  KE','PRESIDENT','ADMINISTRATION','8111945167','shabeer  ke','gvs','','irimbanottil',''),
 (82,'2015','Month','2016','Month','NAJEEBUDHEEN  K','SECRETARY','PATIENT CARE','7025132447','najeebudheen  k','gvs','','karuvath',''),
 (83,'2015','Month','2016','Month','SHAMEER MOHAMED','TREASURER','ACCOUNTS','9746308624','shameer muhammed','gvs','','thadiyan',''),
 (84,'2015','Month','2016','Month','AYISHA V','PRESIDENT','ADMINISTRATION','9495490331','ayisha  v','ladies wing','','veluthathodi',''),
 (85,'2015','Month','2016','Month','SOORA N','SECRETARY','PATIENT CARE','9605380909','soora  n','ladies wing','','nechikushi',''),
 (86,'2015','Month','2016','Month','AYISHA K','TREASURER','FINANCE','9605374248','ayisha  k','ladies wing','','kannanthodi',''),
 (87,'2016','April','2017','March','MUHAMMEDALI HAJI K ','AGRICULTURIST','VICE PRESIDENT','99 61 28 37 54','muhammedali haji  k','governing body','61','kottarayil house\nvp v11/376\nvettathur\npin  679326','kl/06/042/495013'),
 (88,'2017','April','2018','March','PK  MUHAMMEDALI','AGRICULTURIST','EXCUTIVE MEMBER','9495019596','muhammedali pk','governing body','67','puthankottu house\nvpv/ 301\nthelakkad\npin 679325','677400421096'),
 (89,'2017','April','2018','March','MK  ABDUL SATHAR','TEACHER  RETD','SECRETARY','9447282704','muhammed anwar kk','governing body','62','mulayankayi  house\nvp v11/ 138\nvettathur  po\npin 679326','kl/ 06/ o42/ 495108'),
 (90,'2017','April','2018','March','KV  ABDUL HAMEED ','AGRICULTURIST','SECRETARY','7025936128','abdulhameed kv','governing body','50','kannanthodi\nvakkethil house\nvp ix \nvettathur\npin 679326\npin 679326','fqj 3307345'),
 (91,'2015','Feb','2016','March','SHAMSUDHEEN K','AGRICULTURIST','TREASURER','','shamsudheen k','governing body','56','karuvath house\nvp v11/ 440\nvettathur po\npin 679326','8214 0652 6628'),
 (92,'2017','Month','2018','Month','PK  ABDUL HAMEED ','AGRICULTURIST','PRESIDENT','85 47 34 52 24','abdul hameed pk','governing body','66','puthankottu\nkuttatuparambil house\nvp vii/313\nvettathur po\npin 679326','9131 6773 7380'),
 (93,'2017','April','2018','March','P  VEERANKUTTY ','AGRICULTURIST','EXCUTIVE MEMBER','9995273071','veerankutty p','governing body','41','pallikunnan house\nvp v111/135\nvettathur po\npin 679326','kl/06/042/498430'),
 (94,'2017','Month','2019','Month','KT  ABDUL RAHIMAN','AGRICULTURIST','TREASURER','9526699335','abdul rahiman kt','governing body  3','','',''),
 (95,'2015','Month','2016','Month','ABDUL NASSER PS','BUSINESS','EXECUTIVE MEMBER','9447332200','abdul naseer ps','governing body','54','puthankodu  house\nvp v1/177\nthelakkad  po\npin 679325','nqm 3316015'),
 (96,'2016','Month','2017','Month','MK  ABDUL SATHAR','TEACHER  RETD','SECRETARY','9447282704','abdul sathar mk','governing body','62','mulayankayi  house\nvp v11/ 138\nvettathur  po\npin 679326','kl/ 06/ o42/ 495108'),
 (97,'2017','April','2018','March','KE  HAMSA HAJI ','AGRICULTURIST','EXCUTIVE MEMBER','9746067674','hamsa haji ke','governing body','61','kannanthodi\nirimbanottil  house\nvpx/241\nvettathur  po\npin 679326','kl/06/042/489279'),
 (98,'2017','April','2018','March','KE  ABDULLA  ','TEACHER','EXCUTIVE MEMBER','9526780006','abdulla  ke','governing body','47','kannanthodi\nirimbanottil  hose\nvpx/ 295\nvettathur  po\npin 679326\n','8340 2227 6141'),
 (99,'2015','Month','2016','Month','KURIYAN P','DRIVER','EXECUTIVE MEMBER','9745661214','kuriyan p','governing body','43','podimattathil  house\nvp x/130\nvettathur  po\npin 679326','9547 3378 1366'),
 (100,'2016','April','2017','March','UNEEN TN','TEACHER','EXCUTIVE MEMBER','9447406719','uneen tn','governing body','52','thorakattil\nneerankuzhi  house\nvpx/435\nvettathur  po\npin 679326','kl/06/042/498020'),
 (101,'2017','April','2018','March','PACHEERI  ISHAK ','AGRICULTURIST','EXCUTIVE MEMBER','9633540740','ishak pacheeri','governing body','45','pacheeri  house\nvpx/401\nvettathur  po\npin 679326','nqm 3211448'),
 (102,'2016','April','2017','March','MUHAMMEDALI HAJI K','AGRICULTURIST','VICE PRESIDENT','9961283754','muhammedali haji k','governing body','61','kottarayil  house\nvpv11/376\nvettathur  po\npin 679326','kl/06/042/495013'),
 (103,'2015','Month','2016','Month','MOHAMEDALI PK','AGRICULTURIST','VICE PRESIDENT','','muhammedali pk','governing body','67','puthangottu  house\nvp v/301\nkappu\nthelakkad','6774 0042 1096'),
 (104,'2017','April','2018','March','KK  MUHAMMED ANWAR','TEACHER','GENERAL SECRETARY','9544719729','muhammed anwar kk','governing body','43','kannanthodi\nkavanna  house\nvpix/334\nvettathur  po\npin 679326\n','nqm 3535556'),
 (105,'2015','Month','2016','Month','ABDUL HAMEED KV','AGRICULTURIST','SECRETARY','7025936128','abdul hameed kv','governing body','50','kannanthodi\nvakkajil  house\nvp1x/229\nvettathur\npin 679326','fqj3307345'),
 (106,'2017','Month','2018','Month','K  SHAMSUDHEEN ','AGRICULTURIST','EXCUTIVE MEMBER','8086450021','shasudheen k','governing body','56','karuvath  house\nvpv11/440\nvettathur  po\npin 679326','8214 0652 6628'),
 (107,'2017','Month','2018','Month','ABDUL HAMEED PK','AGRICUTURIST','PRESIDENT','8547345224','abdul hameed pk','governing body','66','puthankot kuttattuparambil  hous\nvp v11/313\nvettathur  po\npin 679326','9131 6773 7380'),
 (108,'2015','Month','2016','Month','VEERANKUTTY P','AGRICULTURIST','EXCUTIVE MEMBER','9995273071','veerankutty p','parayarkunnu','66','pallikunnan   house\nvp  v111/135\nvettathur  po\npin 679326','kl/06/042/498430'),
 (109,'2015','April','2016','March','KT  ABDUL RAHIMAN','AGRICULTURIST','TREASURER','9526699335','abdul rahiman kt','governing body','55','kannanthodi \nthekkekalathil   house\nvp v11/114\nvettathur  po\npin 679326','fq 33355377'),
 (110,'2015','Month','2016','Month','NASSER PS','BUSINESS','EXECUTIVE MEMBER','','abdul naseer ps','ezhuthala','','',''),
 (111,'2016','April','2017','March','P  ABDUL SALAM','TEACHER','EXCUTIVE MEMBER','9495531064','abdul sathar mk','governing body','','\n\n',''),
 (112,'2017','April','2018','March','MK  ABDUL SATHAR ','TEACHER RETED','SECRETARY','','abdul sathar mk','governing body','62','mulyankayi  house\nvp v11/138\nvettathur  po\npin 679326','kl/06/042/495108'),
 (113,'2015','Month','2016','Month','HAMSA HAJI KE','AGRICULTURIST','EXECUTIVE MEMBER','9746067674','hamsa haji ke','governing body','60','kannanthodi\nirimbanottil  house\nvp x/241\nvettathur   po\npin 679326','kl/06/042/489279'),
 (114,'2017','April','2018','March','ABDULLA  KE','TEACHER','EXCUTIVE MEMBER','9526780006','abdulla  ke','governing body','47','kannanthodi\nirimbanottil  house\nvpx /295\nvettathur  po\npin 679326','8340 2227 6141'),
 (115,'2017','April','2018','March','P  KURIYAN  ','DRIVER','EXCUTIVE MEMBER','9745661214','kuriyan  p','governing body','43','podimattathil  house\nvpx/130\nvettathur  po\npin 679326','9547 3378 1366'),
 (116,'2017','April','2018','March','TN  UNEEN  ','TEACHER','EXCUTIVE MEMBER','9447406719','uneen  tn','governing body','52','thorakattil\nnirankuzhi  house\nvpx/435\nvettathur  po\npin 679326','kl/ 06/ 042/498020'),
 (117,'2016','April','2017','March','ISHAK PACHEERI','AGRICULTURIST','EXCUTIVE MEMBER','9633540740','ishak pacheeri','governing body','',' pacheeri  house\nvpx/401\nvettathur  po\npin 679326','nqm 3211448'),
 (118,'2017','April','2018','March','ROY MATHEW','TEACHER','EXCUTIVE MEMBER','','roy mathew','witnesses','','mookanthottathil  house\nvpx/461\nvettathur  po\nmalappuram  dt\nkerala state\npin 679326','kl/06/042/492106'),
 (119,'2017','April','2018','March','AHAMAD KUTTY  PK','TEACHER','EXCUTIVE MEMBER','','ahamad kutty  pk','witnesses','','\nputhankott\nkuttattuparmbil  house\nvpx/488\nvettathur  po\nmalappuram  dt\nkerala state\npin 679326','9044 5916 0558'),
 (120,'2016','April','2017','March','pp  muhammed aslam','teacher','excutive member','8111922604','pp  muhammed aslam','governing body','','vettathur  po\npin 679326',''),
 (121,'2017','Month','2018','Month','K  JALEEL','DRIVER','EXCUTIVE MEMBER','9746485156','k  jaleel','governing body','','vettathur  po\npin 679326',''),
 (122,'2016','April','2017','March','ASHRAF ELAMKULAYAN','AGRICULTURIST','EXCUTIVE MEMBER','9495386549','ashraf elamkulayan','governing body','','elamkulayan\nvettathur  po\npin 679326',''),
 (123,'2017','April','2018','March','K  MUSTHAFA KAMAL','AGRICULTURIST','VICE  PRESIDENT','9846621421','k  musthafa kamal','governing body','','\nvettathur  po\npin 679326',''),
 (124,'2017','April','2018','March','N  USMAN','AGRICUTURIST','EXCUTIVE MEMBER','9495090114','n  usman','governing body','','\nvettathur  po\npin 679326',''),
 (125,'2017','April','2018','March','TP  MUHAMMEDALI','AGRICULTURIST','EXCUTIVE MEMBER','8086014484','tp  muhammedali','governing body','','\nvettathur  po\npin 679326',''),
 (126,'2016','April','2017','March','ali thadiyan','agriculturist','excutive member','9447402427','ali thadiyan','governing body','','\nvettathur  po\npin 679326',''),
 (127,'2017','April','2018','March','ABUBACKER KAVANNAYIL','AGRICULTURIST','EXCUTIVE MEMBER','9495740538','abubacker kavannayil','governing body','','\nvettathur  po\npin 679326',''),
 (128,'2017','April','2018','March','M  MUHAMMED SAKEER','AGRICULTURIST','EXCUTIVE MEMBER','9562889483','m  muhammed sakeer','governing body','','\nvettathur  po\npin 679326',''),
 (129,'2016','April','2017','March','p  abdul naseer','agriculturist','excutive member','9746465913','p  abdul naseer','governing body','','\nvettathur  po\npin 679326',''),
 (130,'2016','April','2017','March','KK  KUNHAHAMED HAJI','AGRICULTURIST','VICE PRESIDENT','9746465899','kk  kunhahamed haji','governing body','','vettathur\npin 679326',''),
 (131,'2017','Month','2018','Month','ABDUL SALAM  PERUKADEN','AGRICULTURIST','SECRETARY','9495531064','abdul sala perukaden','governing body','','vettathur  po\npin  679326\n',''),
 (132,'2017','April','2018','March','kt  abdul rahiman','agriculturist','treasurer','9526699335','kt  abdul rahiman','governing body  3','','',''),
 (133,'2017','April','2018','March','PK  VEERANKUTTY ','AGRICULTURIST','EXCUTIVE MEMBER','9995543366','pk  veerankutty ','governing body','','puthankot \nkuttattuparambil  house\nvettathur  po\npin 679326',''),
 (134,'2017','April','2018','March','UMMER FAROOK','AGRICULTURIST','EXCUTIVE MEMBER','9495090114','ummer farook','governing body','','',''),
 (135,'2017','April','2018','March','ZAKEER HUSSAIN','AGRICULTURIST','EXCUTIVE MEMBER','9497927849','zakeer hussain','governing body','','',''),
 (136,'2016','April','2017','March','P  MUHAMMED BASHEER','AGRICULTURIST','EXCUTIVE MEMBER','9633652405','p  muhammed basheer','governing body','','',''),
 (137,'2017','April','2018','March','PK ABDULHAMEED','AGRICULTURIST','PRESIDENT','8547345224','pk abdulhameed','governing body','','puthankot\nkuttattuparmbil',''),
 (138,'2017','April','2018','March','k muhamedali haji','agriculturist','vice president','9961283754','k muhamedali haji','governing body','','',''),
 (139,'2017','Month','2019','Month','vvv','hhhhh','hjhh','555','vvv','cabal','24','','bbb'),
 (140,'2018','Month','2019','Month','fa','mmm','lll','mmm','fa','cabal','11','mmmm','55'),
 (141,'2018','Month','2020','Month','kkk','mm','mmm','','kkk','cabalmmm','11','mmmm','55'),
 (142,'2019','Month','2021','Month','nmkk','mm','mm','','nmkk','cabalmmm','11','mmmm','55'),
 (143,'2015','Month','2017','Month','qq','qqq','qqq','qqq','qq','df','qq','qqq','qq'),
 (144,'2017','Month','2020','Month','qqq','qq','qq','qq','qqq','qa','q','qqq','qqq');
/*!40000 ALTER TABLE `committy` ENABLE KEYS */;


--
-- Definition of table `daycare`
--

DROP TABLE IF EXISTS `daycare`;
CREATE TABLE `daycare` (
  `iddaycare` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `psy` varchar(450) NOT NULL,
  `psypn` varchar(450) NOT NULL,
  `paraplegia` varchar(450) NOT NULL,
  `ppn` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  `year` varchar(450) NOT NULL,
  `month` varchar(45) NOT NULL,
  PRIMARY KEY (`iddaycare`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daycare`
--

/*!40000 ALTER TABLE `daycare` DISABLE KEYS */;
/*!40000 ALTER TABLE `daycare` ENABLE KEYS */;


--
-- Definition of table `dfltdate`
--

DROP TABLE IF EXISTS `dfltdate`;
CREATE TABLE `dfltdate` (
  `iddfltdate` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dte` date NOT NULL,
  PRIMARY KEY (`iddfltdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dfltdate`
--

/*!40000 ALTER TABLE `dfltdate` DISABLE KEYS */;
INSERT INTO `dfltdate` (`iddfltdate`,`dte`) VALUES 
 (1,'2018-02-27');
/*!40000 ALTER TABLE `dfltdate` ENABLE KEYS */;


--
-- Definition of table `diagonosis`
--

DROP TABLE IF EXISTS `diagonosis`;
CREATE TABLE `diagonosis` (
  `iddiagonosis` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `diname` varchar(200) NOT NULL,
  `code` varchar(250) NOT NULL,
  PRIMARY KEY (`iddiagonosis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagonosis`
--

/*!40000 ALTER TABLE `diagonosis` DISABLE KEYS */;
INSERT INTO `diagonosis` (`iddiagonosis`,`diname`,`code`) VALUES 
 (1,'cancer','lukimia'),
 (2,'ca','ca chest'),
 (3,'ca','ca brest'),
 (4,'ca','ca,f,f,'),
 (5,'lsgf','cvb'),
 (6,'kidney','CKD'),
 (7,'cancer','cancer'),
 (8,'psy','psy'),
 (9,'old age','old age'),
 (10,'sugar','su'),
 (11,'ca','lengs');
/*!40000 ALTER TABLE `diagonosis` ENABLE KEYS */;


--
-- Definition of table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE `doctors` (
  `code` varchar(450) NOT NULL,
  `name` varchar(450) NOT NULL,
  `mob` varchar(450) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` (`code`,`name`,`mob`) VALUES 
 ('DOC01','dr fahad','9876543210');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;


--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `idemployee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `gen` varchar(20) NOT NULL,
  `phon` varchar(45) NOT NULL,
  `pst` varchar(45) NOT NULL,
  `ptype` varchar(45) NOT NULL,
  `salarytpe` varchar(45) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `empdte` varchar(45) NOT NULL,
  PRIMARY KEY (`idemployee`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`idemployee`,`name`,`gen`,`phon`,`pst`,`ptype`,`salarytpe`,`amount`,`empdte`) VALUES 
 (1,'SAMEER','male','9495597811','Nurse','Permenent','Monthly','12000','2015-02-02'),
 (2,'SALEENA','female','9847557646','Nurse','Permenent','Monthly','6000','2016-08-01'),
 (3,'SHAHARBAN','female','9544536319','Office Secratery','Permenent','Monthly','5000','2018-01-01');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `error`
--

DROP TABLE IF EXISTS `error`;
CREATE TABLE `error` (
  `idError` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `days` varchar(45) NOT NULL,
  PRIMARY KEY (`idError`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `error`
--

/*!40000 ALTER TABLE `error` DISABLE KEYS */;
INSERT INTO `error` (`idError`,`sdate`,`edate`,`days`) VALUES 
 (1,'2017-01-01','2019-01-01','308');
/*!40000 ALTER TABLE `error` ENABLE KEYS */;


--
-- Definition of table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE `expense` (
  `idexpense` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(250) NOT NULL,
  PRIMARY KEY (`idexpense`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` (`idexpense`,`type`) VALUES 
 (1,'bank'),
 (2,'salary'),
 (3,'deposite');
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;


--
-- Definition of table `familydetails`
--

DROP TABLE IF EXISTS `familydetails`;
CREATE TABLE `familydetails` (
  `idFamilyDetails` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` text NOT NULL,
  `members` text,
  `relation` text,
  `age` text,
  `Education` text,
  `Job` text,
  `diseas` text,
  `Sl_No` varchar(450) NOT NULL,
  PRIMARY KEY (`idFamilyDetails`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `familydetails`
--

/*!40000 ALTER TABLE `familydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `familydetails` ENABLE KEYS */;


--
-- Definition of table `homecare`
--

DROP TABLE IF EXISTS `homecare`;
CREATE TABLE `homecare` (
  `idhomecare` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(45) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `diagnosis` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `pcon` varchar(45) NOT NULL,
  `hmtyp` varchar(45) NOT NULL,
  `team` varchar(200) NOT NULL,
  `hmdte` date NOT NULL,
  `year` varchar(45) NOT NULL,
  `month` varchar(45) NOT NULL,
  PRIMARY KEY (`idhomecare`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homecare`
--

/*!40000 ALTER TABLE `homecare` DISABLE KEYS */;
/*!40000 ALTER TABLE `homecare` ENABLE KEYS */;


--
-- Definition of table `homecareaudit`
--

DROP TABLE IF EXISTS `homecareaudit`;
CREATE TABLE `homecareaudit` (
  `idHomecareAudit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` text NOT NULL,
  `dte` date NOT NULL,
  `homecare` text NOT NULL,
  `empl` text NOT NULL,
  `visit` text NOT NULL,
  `visittime` text NOT NULL,
  `consultation` text NOT NULL,
  `activity` text NOT NULL,
  `other_treatment` text NOT NULL,
  `care_status` text NOT NULL,
  `last_vhc` text NOT NULL,
  `patient_aptitude` text NOT NULL,
  `m_caregiver` text NOT NULL,
  `s_caregiver` text NOT NULL,
  `commonprob` text NOT NULL,
  `services` text NOT NULL,
  `medicines` text NOT NULL,
  `family_details` text NOT NULL,
  `visit_plan` text NOT NULL,
  `remarks` text NOT NULL,
  `diagnosis` text NOT NULL,
  PRIMARY KEY (`idHomecareAudit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homecareaudit`
--

/*!40000 ALTER TABLE `homecareaudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `homecareaudit` ENABLE KEYS */;


--
-- Definition of table `imageupload`
--

DROP TABLE IF EXISTS `imageupload`;
CREATE TABLE `imageupload` (
  `idimageupload` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `name` varchar(450) NOT NULL,
  `imageu` text NOT NULL,
  PRIMARY KEY (`idimageupload`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imageupload`
--

/*!40000 ALTER TABLE `imageupload` DISABLE KEYS */;
/*!40000 ALTER TABLE `imageupload` ENABLE KEYS */;


--
-- Definition of table `incometype`
--

DROP TABLE IF EXISTS `incometype`;
CREATE TABLE `incometype` (
  `idincometype` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intyp` varchar(450) NOT NULL,
  PRIMARY KEY (`idincometype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incometype`
--

/*!40000 ALTER TABLE `incometype` DISABLE KEYS */;
INSERT INTO `incometype` (`idincometype`,`intyp`) VALUES 
 (1,'donation'),
 (2,'monthly'),
 (3,'palliative day'),
 (4,'box collection'),
 (5,'ramalan'),
 (6,'ob');
/*!40000 ALTER TABLE `incometype` ENABLE KEYS */;


--
-- Definition of table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `idinvoice` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suplayername` varchar(450) NOT NULL,
  `invoicenum` varchar(450) NOT NULL,
  `billamount` varchar(450) NOT NULL,
  PRIMARY KEY (`idinvoice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`idinvoice`,`suplayername`,`invoicenum`,`billamount`) VALUES 
 (1,'old stock','00','00'),
 (2,'old stock','0','0'),
 (3,'Select Suplayer','0','0'),
 (4,'old stock','0','0'),
 (5,'old stock','0','0'),
 (6,'national','00','1000'),
 (7,'national','00','1000');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;


--
-- Definition of table `invoicepayment`
--

DROP TABLE IF EXISTS `invoicepayment`;
CREATE TABLE `invoicepayment` (
  `idinvoicepayment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vno` varchar(450) DEFAULT NULL,
  `suplayername` varchar(450) NOT NULL,
  `invoicenum` varchar(450) NOT NULL,
  `billamount` varchar(450) NOT NULL,
  `payment` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  PRIMARY KEY (`idinvoicepayment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicepayment`
--

/*!40000 ALTER TABLE `invoicepayment` DISABLE KEYS */;
INSERT INTO `invoicepayment` (`idinvoicepayment`,`vno`,`suplayername`,`invoicenum`,`billamount`,`payment`,`dte`) VALUES 
 (1,NULL,'old stock','00','00','0','2018-02-20'),
 (2,NULL,'old stock','0','0','0','2018-02-23'),
 (3,NULL,'Select Suplayer','0','0','0','2018-02-23'),
 (4,NULL,'old stock','0','0','0','2018-02-23'),
 (5,NULL,'old stock','0','0','0','2009-02-02'),
 (6,NULL,'national','00','1000','0','2018-02-24'),
 (7,NULL,'national','00','1000','0','2018-02-24');
/*!40000 ALTER TABLE `invoicepayment` ENABLE KEYS */;


--
-- Definition of table `ipop`
--

DROP TABLE IF EXISTS `ipop`;
CREATE TABLE `ipop` (
  `idipop` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `name` varchar(450) NOT NULL,
  `ipop` varchar(450) NOT NULL,
  `optype` varchar(450) NOT NULL,
  `doctor` varchar(450) NOT NULL,
  `time` varchar(450) DEFAULT NULL,
  `dte` date NOT NULL,
  `nextappoinment` date DEFAULT NULL,
  `Month` varchar(450) NOT NULL,
  `Year` varchar(450) NOT NULL,
  PRIMARY KEY (`idipop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipop`
--

/*!40000 ALTER TABLE `ipop` DISABLE KEYS */;
INSERT INTO `ipop` (`idipop`,`regno`,`name`,`ipop`,`optype`,`doctor`,`time`,`dte`,`nextappoinment`,`Month`,`Year`) VALUES 
 (1,'1/15','MUSTHAFA','Op','psy','fd','10','2018-02-09','2018-02-16','Feb','2018'),
 (2,'a1/18','anushree','Ip','Select Op Type','da','10','2018-02-09','2018-02-16','Feb','2018'),
 (3,'a1/18','gh','Ip','anuyaathra','f','10','2018-02-09','2018-02-16','Feb','2018');
/*!40000 ALTER TABLE `ipop` ENABLE KEYS */;


--
-- Definition of table `kpws`
--

DROP TABLE IF EXISTS `kpws`;
CREATE TABLE `kpws` (
  `idkidney` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reg` varchar(450) DEFAULT NULL,
  `name` varchar(450) DEFAULT NULL,
  `sex` varchar(450) DEFAULT NULL,
  `mobl` varchar(450) DEFAULT NULL,
  `doctor` varchar(450) DEFAULT NULL,
  `hospital` varchar(450) DEFAULT NULL,
  `totaldia` varchar(450) DEFAULT NULL,
  `amount` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`idkidney`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpws`
--

/*!40000 ALTER TABLE `kpws` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpws` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`,`user`,`pass`) VALUES 
 (1,'VETTATHUR','123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `medicineexiprity`
--

DROP TABLE IF EXISTS `medicineexiprity`;
CREATE TABLE `medicineexiprity` (
  `idmedicineexiprity` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suplayername` varchar(450) NOT NULL,
  `invoice` varchar(450) NOT NULL,
  `medname` varchar(450) NOT NULL,
  `qty` varchar(450) NOT NULL,
  `purchasedate` date NOT NULL,
  `expdate` date NOT NULL,
  `showingexpdate` date NOT NULL,
  PRIMARY KEY (`idmedicineexiprity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicineexiprity`
--

/*!40000 ALTER TABLE `medicineexiprity` DISABLE KEYS */;
INSERT INTO `medicineexiprity` (`idmedicineexiprity`,`suplayername`,`invoice`,`medname`,`qty`,`purchasedate`,`expdate`,`showingexpdate`) VALUES 
 (1,'old stock','00','TRAMADOL','1000','2018-02-22','2028-02-22','2027-11-22'),
 (2,'old stock','0','MEFAD','1000','2018-02-23','2018-02-23','2017-11-23'),
 (3,'Select Suplayer','0','MEFAD','0','2018-02-23','2018-02-23','2017-11-23'),
 (4,'old stock','0','ECOSPIRIN 75','500','2018-02-09','2018-02-23','2017-11-23'),
 (5,'old stock','0','DOLO 650','100','2018-02-23','2018-02-23','2017-11-23'),
 (6,'national','00','TRAMADOL','1000','2018-02-01','2019-02-24','2018-11-24'),
 (7,'national','00','ECOSPIRIN 75','100','2018-02-01','2019-02-24','2018-11-24');
/*!40000 ALTER TABLE `medicineexiprity` ENABLE KEYS */;


--
-- Definition of table `medicineexpirity`
--

DROP TABLE IF EXISTS `medicineexpirity`;
CREATE TABLE `medicineexpirity` (
  `idmedicineexpirity` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suplayername` varchar(450) NOT NULL,
  `invoice` varchar(450) NOT NULL,
  `medname` varchar(450) NOT NULL,
  `qty` varchar(450) NOT NULL,
  `purchasedate` date NOT NULL,
  `expdate` date NOT NULL,
  `showingexpdate` date NOT NULL,
  PRIMARY KEY (`idmedicineexpirity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicineexpirity`
--

/*!40000 ALTER TABLE `medicineexpirity` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicineexpirity` ENABLE KEYS */;


--
-- Definition of table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
CREATE TABLE `medicines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` (`id`,`name`) VALUES 
 (1,'TRAMADOL'),
 (2,'MEFAD'),
 (3,'ECOSPIRIN 75'),
 (4,'DOLO 650');
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;


--
-- Definition of table `morphine`
--

DROP TABLE IF EXISTS `morphine`;
CREATE TABLE `morphine` (
  `idmorphine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mg` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `issue` varchar(450) NOT NULL,
  `exp` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  PRIMARY KEY (`idmorphine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morphine`
--

/*!40000 ALTER TABLE `morphine` DISABLE KEYS */;
/*!40000 ALTER TABLE `morphine` ENABLE KEYS */;


--
-- Definition of table `morphinereturn`
--

DROP TABLE IF EXISTS `morphinereturn`;
CREATE TABLE `morphinereturn` (
  `idmorphinereturn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `pname` varchar(450) NOT NULL,
  `mg` varchar(450) NOT NULL,
  `given` varchar(450) NOT NULL,
  `returnqty` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  PRIMARY KEY (`idmorphinereturn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morphinereturn`
--

/*!40000 ALTER TABLE `morphinereturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `morphinereturn` ENABLE KEYS */;


--
-- Definition of table `morphinestock`
--

DROP TABLE IF EXISTS `morphinestock`;
CREATE TABLE `morphinestock` (
  `idmorphinestock` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(200) NOT NULL,
  `pname` varchar(450) NOT NULL,
  `diag` varchar(450) NOT NULL,
  `mg` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `issued` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  `clinic` varchar(450) NOT NULL,
  PRIMARY KEY (`idmorphinestock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morphinestock`
--

/*!40000 ALTER TABLE `morphinestock` DISABLE KEYS */;
/*!40000 ALTER TABLE `morphinestock` ENABLE KEYS */;


--
-- Definition of table `morphineuser`
--

DROP TABLE IF EXISTS `morphineuser`;
CREATE TABLE `morphineuser` (
  `idmorphineuser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(450) NOT NULL,
  `pass` varchar(450) NOT NULL,
  PRIMARY KEY (`idmorphineuser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morphineuser`
--

/*!40000 ALTER TABLE `morphineuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `morphineuser` ENABLE KEYS */;


--
-- Definition of table `ob`
--

DROP TABLE IF EXISTS `ob`;
CREATE TABLE `ob` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ob` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ob`
--

/*!40000 ALTER TABLE `ob` DISABLE KEYS */;
/*!40000 ALTER TABLE `ob` ENABLE KEYS */;


--
-- Definition of table `opappoiment`
--

DROP TABLE IF EXISTS `opappoiment`;
CREATE TABLE `opappoiment` (
  `idopappoiment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `name` varchar(450) NOT NULL,
  `optype` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  `time` varchar(450) NOT NULL,
  PRIMARY KEY (`idopappoiment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opappoiment`
--

/*!40000 ALTER TABLE `opappoiment` DISABLE KEYS */;
/*!40000 ALTER TABLE `opappoiment` ENABLE KEYS */;


--
-- Definition of table `opdetails`
--

DROP TABLE IF EXISTS `opdetails`;
CREATE TABLE `opdetails` (
  `idOpdetails` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optype` varchar(450) NOT NULL,
  `regno` varchar(450) NOT NULL,
  `doctor` varchar(450) NOT NULL,
  `dat` date NOT NULL,
  `year` varchar(45) NOT NULL,
  `month` varchar(450) NOT NULL,
  `pname` varchar(450) DEFAULT NULL,
  `bystander` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`idOpdetails`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opdetails`
--

/*!40000 ALTER TABLE `opdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `opdetails` ENABLE KEYS */;


--
-- Definition of table `optyp`
--

DROP TABLE IF EXISTS `optyp`;
CREATE TABLE `optyp` (
  `idopdetails` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optype` varchar(450) NOT NULL,
  PRIMARY KEY (`idopdetails`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `optyp`
--

/*!40000 ALTER TABLE `optyp` DISABLE KEYS */;
INSERT INTO `optyp` (`idopdetails`,`optype`) VALUES 
 (1,'psy'),
 (2,'para'),
 (3,'dental'),
 (4,'anuyaathra'),
 (5,'clinic');
/*!40000 ALTER TABLE `optyp` ENABLE KEYS */;


--
-- Definition of table `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `idparty` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `mob` varchar(200) NOT NULL,
  PRIMARY KEY (`idparty`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

/*!40000 ALTER TABLE `party` DISABLE KEYS */;
/*!40000 ALTER TABLE `party` ENABLE KEYS */;


--
-- Definition of table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `dat` date NOT NULL,
  `pname` varchar(500) NOT NULL,
  `age` varchar(500) DEFAULT NULL,
  `gender` varchar(500) DEFAULT NULL,
  `ad` text,
  `pan` varchar(500) DEFAULT NULL,
  `ward` varchar(500) DEFAULT NULL,
  `mobile` varchar(500) DEFAULT NULL,
  `care` varchar(500) DEFAULT NULL,
  `mob` varchar(500) DEFAULT NULL,
  `neg` varchar(500) DEFAULT NULL,
  `mobi` varchar(500) DEFAULT NULL,
  `cv` varchar(500) DEFAULT NULL,
  `cvmob` varchar(500) DEFAULT NULL,
  `rfname` varchar(500) DEFAULT NULL,
  `rfmob` varchar(500) DEFAULT NULL,
  `hmc` varchar(500) DEFAULT NULL,
  `scp` varchar(500) DEFAULT NULL,
  `med` varchar(500) DEFAULT NULL,
  `eqp` varchar(500) DEFAULT NULL,
  `aparatus` varchar(500) DEFAULT NULL,
  `diagnosis` varchar(500) DEFAULT NULL,
  `pcon` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `year` varchar(500) NOT NULL,
  `month` varchar(500) NOT NULL,
  `fnsts` varchar(450) DEFAULT NULL,
  `area` varchar(450) DEFAULT NULL,
  `deathyr` varchar(450) NOT NULL,
  `deathmonth` varchar(450) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`id`,`regno`,`dat`,`pname`,`age`,`gender`,`ad`,`pan`,`ward`,`mobile`,`care`,`mob`,`neg`,`mobi`,`cv`,`cvmob`,`rfname`,`rfmob`,`hmc`,`scp`,`med`,`eqp`,`aparatus`,`diagnosis`,`pcon`,`status`,`year`,`month`,`fnsts`,`area`,`deathyr`,`deathmonth`) VALUES 
 (1,'1/15','2018-01-02','MUSTHAFA','45',' ','ATTUKANDATHIL\nTHELAKKAD - P.O\nKAPPU','VETTATHUR','V','9846869650','','','','','','','','','','','',NULL,NULL,'CKD','Stable','Active','2015','Jan','','KAPPU','',''),
 (2,'2/15','2018-01-04','MYMOONA','40 ','female','UMMATHUR\nVETTATHUR\nKAVALA\nTHEKENMALA','VETTATHUR','X','9946591758','','','','','SAMEER','','','','','Social support','',NULL,NULL,'','','Active','2015','Jan','','KAVALA','',''),
 (3,'3/15','2018-01-04','MUHAMMED','50',' ','KARUVATHE\nVETTATHUR\nUP SCHOOL\nAGANVADIKUNNE','VETTATHUR','VII','9746708196','','','','','SAKEENA','','','','','','',NULL,NULL,'PSY','Unstable','Active','2015','Jan','','GVS','',''),
 (4,'4/15','2018-01-04','MUHAMMED KUTTI','50',' ','KOTTARAYIL\nEZHUTHALA\nVETTATHUR','VETTATHUR','','9745766927','','','','','SATHARMASTER','','','','','','',NULL,NULL,'CKD','','Death','2015','Jan','','VETTATHUR','',''),
 (5,'5/15','2018-01-04','ABDULLAKUTTI','30','male','PALLIKUNNAN\nVETTATHUR\nEZHUTHALA\n','VETTATHUR','IX','9745494150','','','','','','','','','','','medicine',NULL,NULL,'PSY','','Active','2015','Jan','','VETTATHUR','',''),
 (6,'6/15','2018-01-04','MYMOONA','42','female','KANNATHODI\nVETTATHUR\nUP SCHOOL\nAGANVADI','VETTATHUR','IX','9605374248','','','','','SAKEENA','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','GVS','',''),
 (7,'7/15','2018-01-04','AYISHABI','59',' ','PANTHALUR\nKAPPU\nVETTATHUR','VETTATHUR','V','9645463815','','','','','IBRAHIMMASTER','','','','','','',NULL,NULL,'CKD','','Death','2015','Jan','','KAPPU','',''),
 (8,'8/5','2018-01-04','MARIYA','65','female','PUTHANKODE\nVADEKEEVEETIL\nKARUVATHEKUNNE\nKAPPU','VETTATHUR','X','04933245542','','','','','UMMERFAROOQ','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','KAPPU','',''),
 (9,'9/15','2018-01-03','RAJANI','38','female','MADATHIL\nVETTATHUR\nHIGH SCHOOLPADI','VETTATHUR','VI','9946813727','','','','','','','','','','Social support','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','VETTATHUR','',''),
 (10,'10/15','2018-01-03','JANAKI','47',' ','NADAKALATHIL   HOUSE\nVETTATHUR\nNADAKALATHIL COLANI\n','VETTATHUR','X','','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','VETTATHUR','',''),
 (11,'11/15','2018-01-03','LATHA','37',' ','MADATHIL\nVETTATHUR\nHIGH SCHOOLPADI\n','VETTATHUR','VII','9946813727','','','','','ABDURAHMAN  KT','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','HIGHSCHOOLPADI','',''),
 (12,'12/15','2018-01-03','FATHIMA','75','female','THACHAGOTTIL\nVETTATHUR\nHIGH SCHOOL \n','VETTATHUR','','9445680324  98466606616','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2015','Jan','','','',''),
 (13,'13/15','2018-01-03','ZAINABA','66','female','KAIPAKAGERI\nKAPPU\nTHELAKKAD','VETTATHUR','V','9745924550','','','','','AMEEN','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','KAPPU','',''),
 (14,'14/15','2018-01-03','KADEEJA      WO    BAPPU','60','female','THADIYAN\nVETTATHUR\n','VETTATHUR','X','9745494207','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KAVALA','',''),
 (15,'15/15','2018-01-03','UNNAMAN','61','male','POTHAKALIGAL\nPURONAKUNNE\nKAPPU','VETTATHUR','VI','9645427637','','','','','MUHAMMED  NANIPPA','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','PURONAKUNNE','',''),
 (16,'16/15','2018-01-03','KIDER MUHAMMED','60','male','MARUTHAPARA\nVETTATHUR\n','VETTATHUR','VI','9946138527  9605795912','','','','','UNEEN  MARUTHAPARA','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','PURONAKUNNE','',''),
 (17,'17/15','2018-01-03','AYISHA','60','female','PUTHANKOTTIL\nKAPPU\nTHELAKKAD','VETTATHUR','V','','','','','','SALEENA  ALI','','','','','','',NULL,NULL,'Cancer','','Death','2015','Jan','','KAPPU','',''),
 (18,'18/15','2018-01-03','MUHAMMED','70',' ','PUTHANKOTTE  \nTHODEKATTE\nVETTATHUR','VETTATHUR','VI','9526074073','','','','','','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','PURONAKUNNE','',''),
 (19,'19/15','2018-01-03','KADEEJA','65','female','VAYAGEERI\nVETTATHUR\n','VETTATHUR','X','9747978339','','','','','SALEENA   ALI','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','KAVALA','',''),
 (20,'20/15','2018-01-03','AMINA','75','female','KUTHARTHODI\nVETTATHUR\nKAVALA','VETTATHUR','X','9633540532','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','KAVALA','',''),
 (21,'21/15','2018-01-03','HAMZA','65',' ','KARUVARAKODAN\nPOTHAKALLE\nVETTATHUR','VETTATHUR','VI','9605373828','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','PURONAKUNNE','',''),
 (22,'22/15','2018-01-03','HAMZA','62','male','ERUTHE\nKUNDUVAYPARAMBE\nKAPPU','VETTATHUR','V','9495173744','','','','','ABUL RAZAK','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','KAPPU','',''),
 (23,'23/15','2018-01-03','NAFEESA','55','female','PONETHE\nKARUVATHEKUNNE\nPAGGE\nKAPPU','VETTATHU','XI','9645085955','','','','','UMMERFAROOQ','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','','',''),
 (24,'24/15','2018-01-03','UNEEN','48',' ','ARAKUPARABAN\nPOTTACHIRA\nKAPPU','VETTATHUR','V','9446881841','','','','','UMMERFAROOQ','','','','','','',NULL,NULL,'Cancer','','Death','2015','Jan','','KAPPU','',''),
 (25,'25/15','2018-01-03','BASEELA','39','female','PUTHANKOTTE\nPUTHANPURAKAL\nDO    MOOSA\nKOLAPARAMBE ROAD\nEZHUTHALA  VETTATHUR','VETTATHUR','VII','8086018376','','','','','BAIJU','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (26,'26/15','2018-01-03','MAJEED','35','male','CHOLAKKAL\nMELKULAGARA\nKAPPU','VETTATHUR','XI','9645140932','','','','','ABDULRAZAK','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','MELKULAGARA','',''),
 (27,'27/15','2018-01-03','MUHAMMED SHAFEEK','35',' ','PARAKKAL\nVETTATHUR NORTH\nKUTHEPARAMBE\n','VETTATHUR','VII','9995167929','','','','','PK  ABDULHAMEED','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','','',''),
 (28,'28/15','2018-01-03','AJMALSHIJAD  SO  ASHARF FAISI','15','male','PERUKADEN\nVETTATHUR\nEZHUTHALA','VETTATHU','VII','9846747419','','','','','MUHAMEDALI PERUKADEN','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','','',''),
 (29,'29/15','2018-01-03','NASIRIYA  DO  SHEHASHADIN','15',' ','THORAKATTIL\nNIRAKUZHI\nEZHUTHALA   PALLIPADI\nVETTATHUR','VETTATHUR','VII','9495490051','','','','','KADEEJA','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','GVS','',''),
 (30,'30/15','2018-01-03','RAMLATHE','40','female','PUTHAKKOTTE\nVADEKEVETTIL\nKARUVATHEKUNNE\nKAPPU','VETTATHUR','XI','04933245542','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','','',''),
 (31,'31/15','2018-01-03','BEEVIUMMA','76','female','THADIYAN\nVETTATHUR','VETTATHUR','IX','9447402427','','','','','SALEENA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','GVS','',''),
 (32,'32/15','2018-01-03','MARAKAR','78','male','AMANETHE\nKARUVATHEKUNNE\n','VETTATHUR','XI','9562582093','','','','','ABDULRZAK','','','','','','',NULL,NULL,'Select diagnosis','','Death','2015','Jan','','','',''),
 (33,'33/15','2018-01-03','HANNATHE    ','35','female','KARUVATHE\nVETTATHUR','VETTATHUR','VII','9544800583','','','','','SALEENA','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','GVS','',''),
 (34,'34/15','2018-01-03','MARIYA','70','female','PUTHANKOTT\nKUTTATEPARAMBIL\nEZHUTHALA','VETTATHUR','VII','808255649','','','','','DASEN  PALAMUTTATHE','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','EZHUTHALA','',''),
 (35,'35/15','2018-01-03','THITHU','63','female','PALOTTIL\nVETTATHUR','VETTATHUR','','9526739515','','','','','SALEENA  ALI  K  SHAMSHUDEEN','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','','',''),
 (36,'36/15','2018-01-03','HAMZA','50','male','KORANCHADI\nMATTUMAL\nVETTATHUR','VETTATHUR','VI','9048781307','','','','','SALEENA ALI','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (37,'37/15','2018-01-03','ABDURAHMAN','65',' ','KARUVATHE\nVETTATHUR\nJUMAMASJID','VETTATHUR','VIII','9562884630','','','','','','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','UPSCHOOL','',''),
 (38,'38/15','2018-01-03','MARIYA     ','54','female','KARUVATHE\nVETTATHUR\n','VETTATHUR','VIII','9562884630','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','GVS','',''),
 (39,'39/15','2018-01-03','HANA   FATHIMA','10','female','DO  ILIYAS\nVADAKKETHIL\nVETTATHUR\nJUMAMASJID','VETTATHUR','VIII','99472440715','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','GVS','',''),
 (40,'40/15','2018-01-03','NEELI','80',' ','NADAKALATHIL COLANI\nVETTATHUR\nNIRANAPARAMBE\n','VETTATHUR','X','7034988616','','','','','','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','NIRANAPARAMBE','',''),
 (41,'41/15','2018-01-03','MUHAMMED  MANU','68',' ','PONAYKURSHI\nMELKULAGARA\nKAPPU','VETTATHUR','II','9539941526','','','','','','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','','',''),
 (42,'42/15','2018-01-03','FATHIMA','85','female','KODANOTTIL\nKAPPU\nKARUVATHEKUNNE','VETTATHUR','XI','9539171616','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','MELKULAGARA','',''),
 (43,'43/15','2018-01-03','KUNGIPATHU','85','female','KARUVATHE\nMELKULAGARA\nKAPPU\nTHELAKKAD','VETTATHUR','11','9495951427','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','MELKULAGARA','',''),
 (44,'44/15','2018-01-03','FATHIMA','85','female','ARIPPAN\nKAPPU \nODUVANKUNDE\n','VETTATHUR','VI','9048864455','','','','','','','','','','','',NULL,NULL,'Bed ridden','','Death','2015','Jan','','KAPPU','',''),
 (45,'45/15','2018-01-03','AYISHA','76','female','ANAMAGADEN\nVETTATHUR','VETTATHUR','X','9288658259','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KAVALA','',''),
 (46,'46/15','2018-01-03','AMINA','65','female','KARKIDAKUNAN\nVETTATHUR\nKAVALA DAM','VETTATHUR','x','9567812007','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2015','Jan','','KAVALA','',''),
 (47,'47/15','2018-01-03','SHOUKATHALI','',' ','KANANTHODI\nTHEKEKALATHI\nVETTATHUR\nKULAPARAMBE  ROAD','VETTATHUR','IX','9946250583','','','','','','','','','','','',NULL,NULL,'CKD','','Active','2015','Jan','','GVS','',''),
 (48,'48/15','2018-01-03','MARIYAMA','87','female','KANNABALLI\nVETTATHUR\nTHEKENMALAYI','VETTATHUR','IX','9747822724','','','','','','','','','','','',NULL,NULL,'CKD','','Death','2015','Jan','','KAVALA','',''),
 (49,'49/15','2018-01-03','SAIDALAVI  KP','75','male','KALUPALATHIGAL\nTHELAKKAD\nKAPPU  SCHOOLPADI','VETTATHUR','V','9747329526','','','','','HAMZA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KAPPU','',''),
 (50,'50/15','2018-01-03','MARIYA','45','female','KUTHARTHODIKA\nVETTATHUR\nKUTHARTHODI\nKAVALA\nVETTATHUR\n\n\n\n','VETTATHUR','X','9633540532','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','KAVALA','',''),
 (51,'51/15','2018-01-03','CHINNAMA','64','female','MATHAKAVILLA\nTHEKANMALA\nVETTATHUR','VETTATHUR','X','9847186904','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KAVALA','',''),
 (52,'52/15','2018-01-03','ABDU','85','male','ARAKUPARABEN\nKARUVATHEKUNNE\nTHELAKKAD\nKAPPU SCHOOLPADI','VETTATHUR','XI','9495261345','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Death','2015','Jan','','KARUVATHEKUNNE','',''),
 (53,'53/15','2018-01-03','UMMACHU','70','female','MATHONI\nCO  MUHAMMEDHAJI\nVETTATHUR','VETTATHUR','VIII','9048258165','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','VETTATHUR','',''),
 (54,'54/15','2018-01-03','ALI','75','male','PUTHANKOTTIL\nCHORUDAKALATHIL\nHIGHSCHOOLPADI\nVETTATHUR','VETTATHUR','VII','9605373780','','','','','USMANMASTER','','','','','','',NULL,NULL,'Select diagnosis','','Death','2015','Jan','','HIGHSCHOOLPADI','',''),
 (55,'55/15','2018-01-03','FATHIMA','60',' ','PUTHANKOTTIL\nCHORUNDAKALATHIL\nHIGHSCHOOLPADI','VETTATHUR','VII','','','','','','USMANMASTER','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','HIGHSCHOOLPADI','',''),
 (56,'56/15','2018-01-03','MUHAMMED NISAMUDEEN','25','male','VALLIKATTETHODI\nVETTATHUR  JUNCTION\n','VETTATHUR','IX','9537699146','','','','','','','','','','','',NULL,NULL,'CKD','','Active','2015','Jan','','JUNCTION','',''),
 (57,'57/15','2018-01-03','THASLEENA','27','female','DO   ASSAINAR\nPONPARA\nNIRANAPARAMBE','VETTATHUR','IX','9605833307','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (58,'58/15','2018-01-03','SOUDHA','36','female','DO   ASSAINAR\nPONPARA\nNIRANAPARAMBE\n','VETTATHUR','IX','9605833307','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (59,'59/15','2018-01-03','ASSAINAR','67','male','PONPARA\nNIRANAPARAMBE\n','VETTATHUR','IX','9605833307','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (60,'60/15','2018-01-03','AYISHA','85',' ','PUZHIKUNAN\nKARA\nNIRANAPARAMBE','','VIII','9495167168','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','NIRANAPARAMBE','',''),
 (61,'61/15','2018-01-03','SULOJANA','28','female','NADAKALATHIL\n,NIRANAPARAMBE\n','VETTATHUR','X','9946521049','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (62,'62/15','2018-01-04','ABDURAHMAN','40','male','VELUTHATHODI\nNIRANAPARAMBE\nKARA ROAD\n','VETTATHUR','IX','9048914680','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (63,'63/15','2018-01-04','ZAINABA','60','female','THUDIKODEN\nNIRANAPARAMBE\n','VETTATHR','IX','9847710022','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (64,'64/15','2018-01-04','HAMZA','82','male','KARIBANA\nKAPPU','VETTATHUR','','9605820240','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2015','Jan','','','',''),
 (65,'65/15','2018-01-04','HAMZA  ','60',' ','SAIDALAVI  SO\nTHUDIKODEN\nNIRANAPARAMBE','VETTATHUR','IX','9562283972','','','','','','','','','','','',NULL,NULL,'CKD','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (66,'66/15','2018-01-04','MUHAMMED','58','male','THATTARAKADEN\nNIRANAPARMBE\n','VETTATHUR','IX','9048937174','','','','','','','','','','','',NULL,NULL,'PVD','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (67,'67/15','2018-01-04','MUHAMMED AJVADE','5','male','SO  FAISAL\nTHATTARAKADEN\nVETTATHUR','VETTATHUR','IX','9048428275','','','','','','','','','','','',NULL,NULL,'PSY','','Death','2015','Jan','','NIRANAPARAMBE','',''),
 (68,'68/15','2018-01-04','MUHAMMED','60',' ','THUDIKODEN\nNIRANAPARAMBE\n','VETTATHUR','IX','9745362452','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (69,'69/15','2018-01-04','SAHEED','18','male','THODIYIL\nKARA\nVETTATHUR','VETTATHUR','VIII','9048518052','','','','','FATHIMA','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KARA','',''),
 (70,'70/15','2018-01-04','NEELI   AMINI','50',' ','THORAKATTIL\nKONDAYATHE   COLANI','VETTATHUR','IX','8086012881','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (71,'71/15','2018-01-04','KAMAPPA','54',' ','KUMBALAKUZHIYEN\nKARA','','VIII','7290518347','','','','','','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','NIRANAPARAMBE','',''),
 (72,'72/15','2018-01-04','NAFEESA','65','female','KODATHE\nKARA','VETTATHUR','VIII','9633206526','','','','','FATHIMA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (73,'73/15','2018-01-04','ABDULNASER','43','male','PUZHIKUNNAN\nKARA','VETTATHUR','VIII','9048391749','','','','','FATHIMA','','','','','','',NULL,NULL,'Paraplegia','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (74,'74/15','2018-01-04','GOPALAN','42','male','KIZHEKALATHIL\nKARA','VETTATHUR','VIII','','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (75,'75/15','2018-01-04','FATHIMA','75','female','KOLAKATTIL\nKAPPU\nKUNDADI','VETTATHUR','V','9605723953','','','','','JASEELA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KAPPU','',''),
 (76,'76/15','2018-01-04','AYISHA','75','female','KANAKAPILLA\nKAVALA\nVETTATHUR','','IX','9746485156','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KAVALA','',''),
 (77,'77/15','2018-01-04','MUHAMMED','75','male','KUTHARTHODI\nKAVALA','VETTATHUR','X','9562743603','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KAVALA','',''),
 (78,'78/15','2018-01-04','ASIYA','62','female','CHELAKADEN\nKAPPU','VETTATHUR','V','9745958183','','','','','SUHARA','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KAPPU','',''),
 (79,'79/15','2018-01-04','FATHIMA','85','female','ALPATTA\nKAPPU','','V','9544061225','','','','','','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','KAPPU','',''),
 (80,'80/15','2018-01-04','PATHUMA','85','female','ERADEN\nWO  KADER\nEZHUTHALA','','VII','9740260019','','','','','ABDULNASER','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','EZHUTHALA','',''),
 (81,'81/15','2018-01-04','MOIDUTTI','53','male','PUTHANKOTTIL\nKUTHEPARAMBE','VETTATHUR','VII','9645750850','','','','','BAIJU','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (82,'82/15','2018-01-04','CHAKEN','60','male','MADATHODI\nKUTHEPARAMBE\nMADATHODI COLANI','','VII','9895708520','','','','','VEERANKUTTI','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','KUTHEPARAMBE','',''),
 (83,'83/15','2018-01-04','NAFEESA','68','female','KORAJADI\nKUTHEPARAMBE','VETTATHUR','VII','9544488667','','','','','VEERANKUTTI','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (84,'84/15','2018-01-04','KADEEJA','54','female','VADAKEN\nPALAKUNNE\nKUTHEPARAMBE','VETTATHUR','VII','974455508','','','','','NASER','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (85,'85/15','2018-01-04','AYISHA','62','female','KANAKACHERI\nVETTATHUR\nJUMAMASJID','VETTATHUR','','9562032430','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','GVS','',''),
 (86,'86/15','2018-01-04','MUHAMADALI','82','male','KOYISSAN\nMELKULAGARA','','IX','9447806042','','','','','KADEEJA','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','MELKULAGARA','',''),
 (87,'87/15','2018-01-04','ABDU','76','male','KAPPUGAL\nMRLKULAGARA\n','VETTATHUR','XI','9747261955','','','','','NUSRATHE','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','MELKULAGARA','',''),
 (88,'88/15','2018-01-04','RAMLATHE','30','female','MAGAKUZHIYIL\nMELKULAGARA\n','VETTATHUR','XI','9605690658','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','MELKULAGARA','',''),
 (89,'89/15','2018-01-04','IYATHUMA','70','female','UNNIYAMBETH\nMELKULAGARA\n','VETTATHUR','','8086280102','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','MELKULAGARA','',''),
 (90,'90/15','2018-01-04','SHOUKATHALI','46','male','MADATHODI\nMELKULAGARA','','XI','9495740473','','','','','NASER    PP','','','','','','',NULL,NULL,'CKD','','Death','2015','Jan','','MELKULAGARA','',''),
 (91,'91/15','2018-01-04','SAIDALAVI','50','male','MADATHODI\nKARUVATHEKUNNE','','XI','9446243855','','','','','','','','','','','',NULL,NULL,'PSY','','Death','2015','Jan','','KARUVATHEKUNNE','',''),
 (92,'92/15','2018-01-04','PATHUMA','60','female','MADATHODI\nKARUVATHEKUNNE\n','VETTATHUR','XI','9446243855','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (93,'93/15','2018-01-04','AYISHA','65','female','NECHITHODI\nKARUVATHEKUNNE\n','VETTATHUR','XI','9495808039','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (94,'94/15','2018-01-04','BEEVI','66','female','PONAKURSHI\nKARUVATHE\nMELKULAGARA','VETTATHUR','XI','9747158410','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (95,'95/15','2018-01-04','ABU','70','male','NECHITHAYEN\nKARUVATHEKUNNE','','XI','','','','','','','','','','homecare','','medicine',NULL,NULL,'CVA','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (96,'96/15','2018-01-04','PATHUTTI','65','female','PONAKURSHI\nKARUVATHEKUNNE\nWARD   II\n','VETTATHUR','XI','7558960993','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (97,'97/15','2018-01-04','ASIYA','50','female','ARAKUPARAMBEN\nMELKULAGARA','VETTATHUR','XI','9840450259','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','MELKULAGARA','',''),
 (98,'98/15','2018-01-04','ZAINABA','70','female','ARAGOTTIL\nMELKULAGARA','','XI','7025315207','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','MELKULAGARA','',''),
 (99,'99/15','2018-01-04','MUHAMMED SALEEM','35','male','KANATHODI\nUPPILTHODI\nUP  SCHOOLPADI\nVETTATHUR','VETTATHUR','X','9947425729','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','GVS','',''),
 (100,'100/15','2018-01-04','RAMYA  P','18','female','PATTAMBI    HOUSE\nNELAKANDEN\nMELKULAGARA\nPARUTHANI COLANI\n','','XI','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','MELKULAGARA','',''),
 (101,'101/15','2018-01-04','FUHAD SINEEN','19',' ','SO  KUNGIMOIDEEN\nKAJIRATHIGAL  HOUSE\nMELKULAGARA','','XI','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','MELKULAGARA','',''),
 (102,'102/15','2018-01-04','KADEEJA','65','female','ELAMKULAYEN\nKARUVATHEKUNNE\nELAMKULAYAN\n\n\n','','XI','9495139986','','','','','','','','','','','',NULL,NULL,'PSY','','Death','2015','Jan','','MELKULAGARA','',''),
 (103,'103/15','2018-01-04','KADEEJA','60','female','PILAYITHODI\nVETTATHUR \nUP SCHOOL','VETTATHUR','VII','9567585879','','','','','NUSAIBA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','GVS','',''),
 (104,'104/15','2018-01-04','INNIPATHU','65','female','MANARAPUZHI  HOUSE\nUP SCHOOL\nVETTATHUR\n','VETTATHUR','IX','','','','','','NUSIBA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','GVS','',''),
 (105,'105/15','2018-01-04','SAINUDEEN','50','female','THADIYEN  HOUSE\nVETTATHUR\nUP SCHOOL','','IX','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','GVS','',''),
 (106,'106/15','2018-01-04','AALU','63',' ','THORAKATTIL\nNIRANKUZHI\nKODATHE','','VIII','9847204302','','','','','','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','PARAYARKUNNE','',''),
 (107,'107/15','2018-01-04','PARIYANI','70','male','KANANTHODI  HOUSE\nNIRANAPARAMBE\nKANANTHODI COLANI','','IX','9562461344','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (108,'108/15','2018-01-04','CHATHEN','56','male','KANAMTHODI  HOUSE\nKANAMHTODI COLANI\nNIRANAPARAMBE','','IX','9744105906','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (109,'109/15','2018-01-04','VELLUTHAKI','75','female','KAVANAYIL\nBANKE PADI\nVETTATHUR','','X','9495511582','','','','','PRAMEELA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KAVALA','',''),
 (110,'110/15','2018-01-04','NAFEESA','65','female','WO  HAMZA\nPARIYARM  HOUSE\nKARA    LP   SCHOOLPADI\n','','VIII','9495489368','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (111,'111/15','2018-01-04','AACHUTTI','73','female','KOTTAYIL\nMUHAMADALI\nODUVANKUNDE\nKAPPU','','VI','9961261387','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2015','Jan','','HIGHSCHOOLPADI','',''),
 (112,'112/15','2018-01-04','PATHUMA','60','female','KUNNEMAL\nKARUVATHEKUNNE\nKUNDAPADEM','','XI','','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (113,'113/15','2018-01-04','AYISHA','85','female','MADAMPARA  HOUSE\nNIRANAPARAMBE\n','','IX','9526711886','','','','','SAIFUNEESA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (114,'114/15','2018-01-04','AYAPPEN','70','female','KANAMTHODI \nVAKAYIL\nNIRANAPARAMBE\n','','IX','9744522497','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (115,'115/15','2018-01-04','FATHIMA','73','female','MADAMPARA\nMELKULAGARA\n','','XI','9446993615','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','MELKULAGARA','',''),
 (116,'116/15','2018-01-04','KADEEJA  C','75','female','CHEMBEN\nMELKULAGARA\n','','XI','9847010387','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','MELKULAGARA','',''),
 (117,'117/15','2018-01-04','RUKIYA','50','female','WO  MUHAMMED\nKARUVATH\nUP  SCHOOLPADI','','VII','9746708196','','','','','','','','','','','medicine',NULL,NULL,'Other','','Active','2015','Jan','','GVS','',''),
 (118,'118/15','2018-01-04','KUNGUNNI','75','male','PUTHAMKOTTE\nCHERUNDKULATHIL\nHIGHSCHOOLPADI','','VII','9995090713  9847510225','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','HIGHSCHOOLPADI','',''),
 (119,'119/15','2018-01-04','MOIDUTTI  HAJI','75','male','KUNDAPADEM\nKAPPU','','','9497895398','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Death','2015','Jan','','KAPPU','',''),
 (120,'120/15','2018-01-04','KURUBA','82',' ','MADATHIL\nEZHUTHALA\n','','VII','9746028672','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KUTHEPARAMBE','',''),
 (121,'121/15','2018-01-04','THIRUVALA','90','female','THONIYIL  HOUSE\nKUTHEPARAMBE\nMADATHODI COLANI','','VII','9567475957','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KUTHEPARAMBE','',''),
 (122,'122/15','2018-01-04','ABDULGAFOOR','62','male','KALIGALTHODI\nKUTHEPARAMBE','','VII','9446629797','','','','','PK  HAMEEDHAJI','','','','','','',NULL,NULL,'Select diagnosis','','Death','2015','Jan','','KUTHEPARAMBE','',''),
 (123,'123./15','2018-01-04','KRISHNABABU','34','male','MADATHODI\nKUTHEPARAMBE','','VII','9747049333','','','','','VINODE','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (124,'124/15','2018-01-04','ALI','62','male','MARUTHAPARA\nKUTHEPARAMBE','','VII','','','','','','BAIJU','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (125,'125/15','2018-01-04','AYISHA','55','female','KOTTAYIL\nKUTHEPARAMBE\n','','VII','9847818823','','','','','NASEELA','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (126,'126/15','2018-01-04','PARAGODI','70',' ','PERUPULLI\nKARUVATHEKUNNE','','XI','9895441974','','','','','SULOJANA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (127,'127/15','2018-01-04','FATHIMA','61','female','KAPPUGAL\nKARUVATHEKUNNE','','XI','9846793768','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KARUVATHEKUNNE','',''),
 (128,'128/15','2018-01-04','KUNGIMUHAMMED','54','male','SO  MUHAMMED MUSLIYAR\nKAPPILAKATHE\nMUSLIARKATHE  VEED\nKAPPU PALIPADI   THELAKKAD  PO','','V','9961232902','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Death','2015','Jan','','KAPPU','',''),
 (129,'129/15','2018-01-04','SAIDALAVI','43','male','THERKALATHIL\nKAPPU\nPOTTACHIRA\nTHELAKAD  PO','','XI','9562889986','','','','','HAMZA','','','','','','',NULL,NULL,'CKD','','Active','2015','Jan','','KAPPU','',''),
 (130,'130/15','2018-01-04','SUSHEELA  VP','54','female','WO  APPUKUTTAN\nVEETCHOLAPARAMBIL\nVETTATHUR   JUMAMASJID','','VII','8086426348','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','GVS','',''),
 (131,'131/15','2018-01-04','RAMAKRISHNAN   KUNGAN','60','male','MADATHIL\nVETTATHUR','','X','8606543545','','','','','JALEEL  K','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KAVALA','',''),
 (132,'132/15','2018-01-04','MUHAMMED MUSTHAFA','47','male','CHOLAKKAL   HOUSE\nKARUVATHEKUNNE\nTHELAKKAD  PO\n','','XI','9645140932','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (133,'133/15','2018-01-04','JAMEELA','45','female','WO  MUHAMMED MUSTHAFA\nCHOLAKAL \nKARUVATHEKUNNE\nTHELAKKAD','','XI','9645140932','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (134,'134/15','2018-01-04','RAMEN  T','69','male','THONIYIL\nMADATHODI COLANI\nRAMACHADI\nPALATHIGAL\nVETTATHUR','','VII','9746818009','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (135,'135/15','2018-01-04','KARTHYANI','60','female','THONIYIL\nWO  RAMEN\nRAMCHADI\nVETTATHUR\nREG  DATE  14   08   15','','VII','9746818009','','','','','VINODE        SAJNI','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','ALAKKALPARA  KUTHEPARAMBE','',''),
 (136,'136/15','2018-01-04','FATHIMAKUTTI','70','female','VEGUR KALATHIL\nPOTHAKALE\nCO  ALI\nREGI     29  08  15 ','','VI','7558937285','','','','','','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','POTHAKALE','',''),
 (137,'137/15','2018-01-04','MARIYA','34','female','MANARAPUZHIYIL \nVETTATHUR\nUP SCHOOLPADI\nWO   ASHRAF\nREG   29 08 15\n','','X','99466205552','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','UPSCHOOL','',''),
 (138,'139/15','2018-01-04','MUHAMMED','66','male','VEGURKALATHIL\nPOTHAKALE\nREG  29 08 15','','VI','9847252980','','','','','','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','POTHAKALE','',''),
 (139,'140/15','2018-01-04','RAMEES','19',' ','SO  ALIAKBER\nPUTHKOTTE\nKARUVATHE\nREG  01 09 15','','II','','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (140,'141/15','2018-01-04','MARIYA','60','female','PALATHIGAL\nWO  MUHAMMED\nNIRANAPARAMBE\nNADAKALATHIL\nREG  01 09 15','','','9656702423','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (141,'142/15','2018-01-04','PATHUMAKUTTI','70','female','WO  MUHAMMED\nTHATTARAKADEN\nKARA SCHOOL\nREG  01 09 15','','','9048172350','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KARA','',''),
 (142,'143/15','2018-01-04','SANA FATHIMA','4',' ','PAZHAKULAYEN\nHAMZA  \nHIGHSCHOOLPADI\nREG  17 09 15\n','','VII','','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2015','Jan','','HIGHSCHOOLPADI','',''),
 (143,'144/15','2018-01-04','KADEEJA','76','female','CO  JALEEL FAIZI\nKUNDANKADAVIL\nKAPPU VETTATHUR\nREG  29 09 15\n','VETTATHUR','V','9846070407','','','','','HAMZA  KP','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','KAPPU','',''),
 (144,'145/15','2018-01-04','AFSATHE','53','female','VEGURKALATHIL\nKUTHEPARAMBE\nREG  25 09 15','','VII','9847252980','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (145,'146/15','2018-01-04','NAFEESA','76','female','THUDIKODEN\nVETTATHUR\nUPSCHOOL  PALIPADI\nREG  30 09 15','','VII','','','','','','SULAIKHA','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','UPSCHOOL','',''),
 (146,'147/15','2018-01-04','MUHAMMEDKUTTI','62','male','KARAKUNAN\nPOTHAKALE\nVETTATHUR\nREG  01 10 15','VETTATHUR','VI','','','','','','','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','POTHAKALE','',''),
 (147,'148/15','2018-01-04','AYISHA','65','female','KARAGOTTE  HOUSE\nKARUVATHEKUNNE\nREG  09 10 15','VETTATHUR','II','9846407746','','','','','','','','','','','',NULL,NULL,'CKD','','Death','2015','Jan','','KARUVATHEKUNNE','',''),
 (148,'149/15','2018-01-04','VELLARA','45','male','PATTAMBI\nMELKULAGARA\nREG  15 10 15 ','VETTATHUR','II','8157862448','','','','','','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','MELKULAGARA','',''),
 (149,'150/15','2018-01-04','CHAKI  P','65','female','PATTAMBI\nMELKULAGARA\nREG  15 10 15','VETTATHUR','II','9605544294','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','MELKULAGARA','',''),
 (150,'151/15','2018-01-04','AYISHA','85','female','KAPPILAKATHE\nKUTHEPARAMBE\nREG  18  10  10\n','VETTATHUR','VII','9961981357','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KUTHEPARAMBE','',''),
 (151,'152/15','2018-01-04','ACHUMMA','80','female','MADAMPARA\nBANK PADI\nVETTATHUR\nREG  21 10 15 ','','IX','9745098812','','','','','','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','UPSCHOOL','',''),
 (152,'153/15','2018-01-04','PATHUMMA','85','female','NECHITHODI \nKARUVATHEKUNNE\nREG  22  10  15\n\n','VETTATHUR','II','9745124112','','','','','','','','','','','',NULL,NULL,'Old age','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (153,'154/15','2018-01-04','NAFEESA','57','female','KOYISSAN\nMELKULAGARA\nWO  HAIDRU\nREG  30 10 15\n','','II','9961282496','','','','','','','','','','','',NULL,NULL,'Old age','','Active','2015','Jan','','MELKULAGARA','',''),
 (154,'155/15','2018-01-04','KADEEJA','62','female','WO   HAMZA\nARIPPAN\nMELKULAGARA\nREG  30 10 15\n','','II','9495100968','','','','','','','','','','','',NULL,NULL,'CKD','','Death','2015','Jan','','MELKULAGARA','',''),
 (155,'156/15','2018-01-04','BEEVIUMMA','82','female','KOLOTHODI  HOUSE\nKARA  PAZHATHOTTIGAL\nREG  0 11  15','','IX','9539300409','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KARA','',''),
 (156,'157/15','2018-01-04','ABID ABALAN','','male','MUHAMMED  SO\nABALAN  \nKAPPU\nKUMARAN VALAVE THELAKKAD\nREG  15  11  15','','V','','','','','','HAMZA KP','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KAPPU','',''),
 (157,'158/15','2018-01-04','SREEDEVI','81','female','PULLAPURATHE\nKARA\nVETTATHUR\nREG  15  11  15','','VIII','9605802742','','','','','BABY','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KARA','',''),
 (158,'159/15','2018-01-04','DEVAKI','40','female','PULAPURATHE\nKARA\nREG  15  11  17','','VIII','9605802742','','','','','BABY','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','KARA','',''),
 (159,'160/15','2018-01-04','NARAYANI','85','female','THACHAGOTTIL\nKARA\nREG  15  11  15','VETTATHUR','VIII','9747636025','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','KARA','',''),
 (160,'161/15','2018-01-05','ABU  KP','62','male','KIZHAKEPURATHE\nKARA\nVETTATHUR\n REG  DATE   15  11  15','VETTATHUR','VIII','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KARA','',''),
 (161,'162/15','2018-01-05','UMMAKULSU','69','female','KUTHEPARAMBEN\nPURONAKUNNE\nVETTATHUR\nREG  DATE   20  11  15','VETTATHUR','VI','9946497437','','','','','MUHAMMED  NANNI','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','PURONAKUNNE','',''),
 (162,'163/15','2018-01-05','JAYACHANDREN','65','male','PANNIKOTTIL  HOUSE\nKAPPU\nKUNDADI  THIRUVAYAPARAMBE\nREG  DATE  20  11  15','','V','9562188698  7034924625','','','','','YASHODA','','','','','','',NULL,NULL,'CVA','','Death','2015','Jan','','','',''),
 (163,'164/15','2018-01-05','CHAMI','78','male','PONETHE\nKARA  MECT SCHOOL\nVETTATHUR\nREG  DATE  20  11  15','','VIII','9539259635   7736582565','','','','','BABY','','','','homecare','','medicine',NULL,NULL,'','','Active','2015','Jan','','KARA','',''),
 (164,'165/15','2018-01-05','VIJAYAN    ','45','male','PULIKATHODI\nPARAYANKUNNE\nVETTATHUR\nREG  DATE  20  11  15','','VIII','','','','','','','','','','homecare','','medicine',NULL,NULL,'','','Death','2015','Jan','','KARA','',''),
 (165,'166/15','2018-01-05','KAIRUNEESA','30','female','KUTHEPARAMBE\nMUHAMMED   DO\nPOTHAKALE\nREG  DATE  20  11  15','','VI','9605536778','','','','','','','','','','','medicine',NULL,NULL,'CKD','','Active','2015','Jan','','PURONAKUNNE','',''),
 (166,'167/15','2018-01-05','FATHIMARASLA','8','female','ABAS  DO\nMULAYAKAYI\nNIRANAPARAMBE\nREG  DATE  20  11  15','','IX','9567021547','','','','','','','','','','','medicine',NULL,NULL,'Other','','Active','2015','Jan','','NIRANAPARAMBE','',''),
 (167,'168/15','2018-01-05','FATHIMASHALA','8','female','YOOSUF   DO\nVAZHAGODEN\nREG  DATE  20  11  15','VETTATHUR','X','9567021547','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','THEKANMALA','',''),
 (168,'169/15','2018-01-05','BURHANA  VK','15','female','ALI   DO\nVALLIKATTETHODU\nNIRANNAPARAMBE\nHELTHCENTER\nREG  DATE  25  11  15','VETTATHUR','IX','9846077334','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','','',''),
 (169,'170/15','2018-01-05','ABDULGAFOOR','57','female','VALLIKATTETHODI\nNIRANNAPARAMBE\nVETTATHUR\n','VETTATHUR','IX','9048950892','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','','',''),
 (170,'171/15','2018-01-05','SHAFEEKALI','27','male','HABEEB  DO\nUTHUVALIPARAMBIL\nNIRANNAPARAMBE\nVETTATHUR\nREG  DATE  25/11/15','VETTATHUR','IX','9562582013','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','','',''),
 (171,'172/15','2018-01-05','LUKMANULHAKEEM','30','male','ATHEETH   AITHE  DO\nPUTHANKOTTE\nKAPPU  THELAKKAD\nREG  DATE  25  11  15','','V','','','','','','SATHAR  PUTHANKOTTE','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','','',''),
 (172,'173/15','2018-01-05','SHAHARBAN  KP','20','male','UMMAR   DO\nKIZHAKEPURATHE\nKARA SCHOOL\nREG  DATE  25  11  15','VETTATHUR','IX','9048409917','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','','',''),
 (173,'174/15','2018-01-05','PATHUMMA  P','70',' ','POTTANTHODI\nPARAYARKUNNE\nVETTATHUR\nREG  DATE  30  11  15 ','','VII','9061862146','','','','','ASYA','','','','','','',NULL,NULL,'Cancer','','Death','2015','Jan','','PARAYARKUNNE','',''),
 (174,'175/15','2018-01-05','SHAMSUDEEN','27','male','MUHAMMEDUPPA   SO\nTHORAKATTIL\nPAZHATHOTTIGAL\nKARA SCHOOL\nREG  DATE  30  11  15','','IX','9846745327','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','','',''),
 (175,'176/15','2018-01-05','SHIHABUDEEN','18','male','MUHAMMED  SO\nKUTHEPARABEN\nPOTHAKALE\n','','VI','960553677','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','PURONAKUNNE','',''),
 (176,'177/15','2018-01-05','CHAKI','60','female','KUNDADI\nKAPPU\nREG  DATE  3011  15','','V','7034093718','','','','','SAINABA  SURESH','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KAPPU','',''),
 (177,'178/15','2018-01-05','NITHIN','16','male','ORAVIGAL  HOUSE\nKAPPU ORAVIGAL  ABALAM\nREG  DAT  30 11  15','','VI','9495378220','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','','',''),
 (178,'179/15','2018-01-05','MUHAMMED SAFUVAN','18','male','ALAGADEN  HOUSE\nKAPPU\nREG  DATE  30  11  15','','VI','9846295186','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','PURONAKUNNE','',''),
 (179,'180/15','2018-01-05','USMAN  K','60','male','KOLATHE  HOUSE\nKAPPU \nTHELAKKAD\nREG  DATE  30  11  15','','V','9494163454','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Death','2015','Jan','','KAPPU','',''),
 (180,'181/15','2018-01-05','MUHAMMED  K','82','male','KUNDAMKADAVAN\nSAIDALIHAJI  SO\nKAPPU  MADRASSA\nREG  DATE  30  11  15','','V','9747158699','','','','','HAMZA','','','','','','',NULL,NULL,'Old age','','Active','2015','Jan','','KAPPU','',''),
 (181,'182/15','2018-01-05','ABDU  VP','60','male','VELLAPULLI\nMOIDUTTI   SO\nKAPPU  THELAKKAD\nREG  DATE  30  11  15','','V','9544863245','','','','','ABU','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KAPPU','',''),
 (182,'183/15','2018-01-05','HAMZA  P','48','male','MOIDUTTI  SO\nPARAMAL\nKAPPU  \nTHELAKKAD\nREG  DATE  30  11  15','','','','','','','','ABDU MUKKATT','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','','',''),
 (183,'184/15','2018-01-05','KUGIPPU  K','65','male','KUNDANKADAVAN\nMUHAMADALI HAJI  SO\nKAPPU MADRASSA\nREG  DATE  30  11  15','','V','','','','','','HAMZA  KP','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KAPPU','',''),
 (184,'185/15','2018-01-05','SHABEER','23','male','ALI  SO\nCHOLAKKAL\nKAPPU \nTHELAKKAD SCHOOLPADI\nREG  DATE  30  11  15','','V','9446134731','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KAPPU','',''),
 (185,'186/15','2018-01-05','MARIYA  K','78','female','KARUVATHE\nVETTATHUR\nREG  DATE  30  11  15','','IX','97446309174','','','','','NUSAIBA','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','VETTATHUR','',''),
 (186,'187/15','2018-01-05','PATHUMMA  KV','60','female','KANNAMTHODI\nVAKAYIL\nBEERAN  WO\nVETTATHUR\nREG  DATE  30  11  15','','IX','','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','VETTATHUR','',''),
 (187,'188/15','2018-01-05','IYADIYA  M','90','female','KUNGYAMMU  WO\nMUTTIKAL  \nKARA SCHOOL\nREG  DATE  30  11  15\n','','VIII','9809652854','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KARA','',''),
 (188,'189/15','2018-01-05','AMJADE','11','male','UNEEN  SO\nMUTTIKAL\nKARA\nREG  DATE  30  11  15','VETTATHUR','VIII','','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KARA','',''),
 (189,'190/15  ','2018-01-05','KAISE','40',' ','ABUBACKER  SO\nCHORUMALA\nPAGGE KARUVATHEKUNNE\nREG  DATE  4  12  15','','IX','9447629574','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','MELKULAGARA','',''),
 (190,'191/15','2018-01-05','SHREYSHE','2','male','MANIKANDEN  SO\nORAVIGAL\nKARUVATHEKUNNE\nKUNDAPADAM\nREG  DATE  4  12  15','','XI','7025131585','','','','','','','','','','','',NULL,NULL,'Other','','Death','2015','Jan','','MELKULAGARA','',''),
 (191,'192/15','2018-01-05','ASHRAF  P','30','male','MUHAMMADALI  SO\nPATHIRAMANNA\nKARUVATHEKUNNE\nKUNDAPPADA\nREG  DATE   4   12  15','','XI','9539049579','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','MELKULAGARA','',''),
 (192,'193/15','2018-01-05','MUNDAN','60','male','KORAN  SO\nKUNDAPADATH\nKILIYAM\nTHELAKKAD  PO\nREG  DATE  4  12  15','','V','9946965685','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KAPPU','',''),
 (193,'194/15','2018-01-05','MUHAMMED BADUSHA','20','male','ABUNASAR  SO\nKALATHIL\nMELKULAGARA\nTHELAKKAD\nREG  DATE  4  12  15','','XI','9747888673','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','MELKULAGARA','',''),
 (194,'195/15','2018-01-05','ASAINAR  A','55',' ','AKKADEN  HOUSE\nAKARA COLANI\nMELKULAGARA\nREG  DATE  4  12  15','','XI','9946118148','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','MELKULAGARA','',''),
 (195,'196/15','2018-01-05','MUHAMMED ADIL','13','male','UMMAR  SO\nKYUNDA  HOUSE\nMELKULAGARA\nTHELAKKAD\nREG  DATE  4  12  15','','XI','9847364975','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','MELKULAGARA','',''),
 (196,'197/15','2018-01-05','KUGIRUMMA','75',' ','MUHAMMED  WO\nVALATHODI\nKILIYAM\n THELAKKAD\nREG  DATE  4  12  15\n\n\n','','V','9446691829','','','','','SREEDEVI','','','','','','',NULL,NULL,'PSY','','Death','2015','Jan','','KAPPU','',''),
 (197,'198/15','2018-01-05','NAFEESA','','female','HAMZA  WO\nKURIKAL POTHAKALE\nTHELAKKAD\nREG  DATE  4  12  15\n','','VI','8086563940','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','PURONAKUNNE','',''),
 (198,'199/15','2018-01-05','CHAKI  O','60','female','ORAVIGAL\nPOTHAKALE\nREG  DATE  4  12  15','','VI','','','','','','OP','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','PURONAKUNNE','',''),
 (199,'200/15','2018-01-05','ABDUL AZEEZ','70','female','KUGALAN HAJI\nPUTHAMKOTTE\n VADEKKE VEETIL\nPURONNAKUNNE','','','9744369168','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','','',''),
 (200,'201/15','2018-01-05','VELLUTHAKKI','60','female','CHERIYAKAN  DO\nORAVIGAL COLANI\nPOTHAKALE\nREG  DATE  4  12  15','','VI','9562433180','','','','','','','','','','','',NULL,NULL,'Paraplegia','','Active','2015','Jan','','PURONAKUNNE','',''),
 (201,'202/15','2018-01-05','AJITHA','30','female','PATTABI  HOUSE\nCHAKAPPAN  WO\nPATTAMBI\nMELKULAGARA\nREG  DATE 15  12  15\n\n','','','9605544294','','','','','KADEEJA','','','','','','',NULL,NULL,'Cancer','','Active','2015','Jan','','','',''),
 (202,'203/15','2018-01-05','JANAKI','35','female','KALLI  DO\nKARUVATHE  HOUSE\nKARUVATHEKUNNE\nREG  DATE  15  12  15','','XI','9645040378','','','','','SAFIYA','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (203,'204/15','2018-01-05','FATHIMA SHAHAMIDA','12','female','ABDUSALAM  DO\nTHECHIKODEN\nKARUVATHEKUNNE\nREG  DATE  15  12  17\n','','XI','9495453393','','','','','','','','','homecare','','',NULL,NULL,'','','Active','2015','Jan','','KARUVATHEKUNNE','',''),
 (204,'205/15','2018-01-05','FATHIMATHE THASRIFA','22','female','ELAMKULAYEN\nMAJEED  DO\nKARUVATHEKUNNE\nREG  DATE  15  12  15','','','9645987592','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','','',''),
 (205,'206/15','2018-01-05','MUHAMMED','73','female','KUGAYAMMU  SO\nKORANAKATHE\nPOTTACHIRA KAPPU\nREG  DATE  15/12/15','','V','','','','','','AYISHA','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KAPPU','',''),
 (206,'207/15','2018-01-05','MUHAMMADALI','72','female','KUGAHAMMED  SO\nMATHONI\nKARA MECT\nREG DATE  26  12  15','','VIII','9048258165','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2015','Jan','','PARAYARKUNNE','',''),
 (207,'208/15','2018-01-05','AYISUMMA','92','female','UNEEN  WO\nVADAKKAN\nKARA\nREG  DATE  26  12  15','','VIII','8281264635','','','','BABY','9526294146','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','PARAYARKUNNE','',''),
 (208,'209/15','2018-01-05','AMINA','60','female','KARIBIL\nAHAMADE SHAREEF  CO\nTHORAKKATTIL  KIZHAKETHIL\nKARA SCHOOL\nREG  DATE 31  12  15\n','VETTATHUR','VIII','9495488610','','','','','','','','','','','',NULL,NULL,'PSY','','Death','2015','Jan','','KARA','',''),
 (209,'210/15','2018-01-05','SAIDUHAJI','85','male','AYAMUHAJI\nTHORAKKATTIL\nKARA\nREG DATE  31 12 15','','IX','8606781321','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2015','Jan','','KARA','',''),
 (210,'211/15','2018-01-05','KADEEJA','','female','HAMZAKUTTI  WO\nKANNAKAPILLA    \nVETTATHUR\nREG  DATE  31  12  15','VETTATHUR','X','9746485156','','','','','','','','','','','',NULL,NULL,'CKD','','Active','2015','Jan','','KAVALA','',''),
 (211,'212/15','2018-01-05','GANEESH','28','male','MADATHIL\nVETTATHUR DAM\nREG  DATE  31  12  15','','X','9605913311','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','THEKANMALA','',''),
 (212,'213/15','2018-01-05','ABDUSALAM','75','male','VAGASHEERI\nVETTATHUR DAM\nLAKSHAVEEDE\nREG  DATE  31  12  15','','X','','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','THEKANMALA','',''),
 (213,'214/15','2018-01-05','MANOJ','38','male','KARIGOTTIL\nTHEKANAMAL\nVETTATHUR\nREG DATE  31  12  15','','X','8086441395','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','THEKANMALA','',''),
 (214,'215/15','2018-01-05','VELUTHAKKI','70',' ','KANAMTHODI \nPARIYAPURATHE\nEZHUTHALA\nREG  DATE  31  12  15','','VIII','','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2015','Jan','','EZHUTHALA','',''),
 (215,'216/15','2018-01-05','MUSTHAFA  M','55','male','ABDU  SO\nMADATHODI\nKUTHEPARAMBE\nREG  DATE  31  12  15','','VII','9747354103','','','','','NANNIHAJI','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (216,'217/15','2018-01-05','ASHRAF  M','53','male','ABDU  SO\nMADATHODI\nKUTHEPARAMBE\nKAPPU ROAD\nREG  DATE  31  12  15','','VII','9444066953','','','','','NANNIHAJI','','','','','','',NULL,NULL,'PSY','','Active','2015','Jan','','KUTHEPARAMBE','',''),
 (217,'218/16','2018-01-05','SUDEESH  M','15','male','SUREESH  SO\nMADATHIL\nKAVALA\n','','X','9744825514','','','','','JALEEL  KANAKAPILLA','','','','','','',NULL,NULL,'Cancer','','Death','2016','Jan','','KAVALA','',''),
 (218,'219/16','2018-01-05','MUHAMMED K','67','male','KUTTIPA HAJI  SO\nKAPPUGAL\nKAPPU KUMARAMVALAVE\nREG  DAT  2  1  16','','V','','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2016','Jan','','KAPPU','',''),
 (219,'220/15','2018-01-05','KUGIRUMMA','86','female','ABDU  WO\nPUVAGADEN\nKUDADI  KAPPU\nREG  DATE  03  01  16','','','','','','','','ZAINABA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2016','Jan','','','',''),
 (220,'221/15','2018-01-05','MUHAMMED','75','male','KUGAYAMMU  SO\nARAKUPARAMBEN\nKARUVATHEKUNNE\nKUNDADI REG  DATE  04  01  16','','XI','9645463879','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (221,'222/16','2018-01-05','MUHAMMED','70','male','UNEEN  SO\nKUNDAPADAN\nKARUVATHEKUNNE\nREG  DATE  05  01  16','','XI','245590','','','','','JUBAIRIYA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2016','Jan','','KARUVATHEKUNNE','',''),
 (222,'223/16','2018-01-05','HAMSANNI','62','male','MADATHODI\nKAKKAPARA\nKUTHEPARAMBE\nREG  DATE  07  01 16','','VII','9633759313','','','','','VHC  FATHAHE MASTER','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','KUTHEPARAMBE','',''),
 (223,'224/15','2018-01-06','AYISHA','65','female','IBRAHIM HAJI  WO\nPATTAMBI\nMELKULAGARA\nREG  DATE  07  01  16\n','','XI','9446156262','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','MELKULAGARA','',''),
 (224,'225/16','2018-01-06','IBRAHIM HAJI','',' ','ALAVI  SO\nPATTAMBI\nMELKULAGARA\nREG  DATE  31  01  16','','XI','9446156262','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','MELKULAGARA','',''),
 (225,'226/16','2018-01-06','ZAINABA','50',' ','MUHAMMEDKUTTI  DO\nKOYISHEN\nMELKULAGARA\nREG  DATE  31  01  16\n','','XI','9656906492','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','MELKULAGARA','',''),
 (226,'227/16','2018-01-06','NADICHI  KP','70',' ','PARIYANNI  WO\nKANNAMTHODI  PARIYAPURATHE\nVETTATHUR  EZHUTHALA\nREG  DATE  31  01  16','VETTATHUR','VIII','9633296086','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','KARA','',''),
 (227,'228/16','2018-01-06','HAMZA  P','65',' ','PATTIKADEN\nKUTHEPARAMBE\nVETTATHUR\nREG  DATE  31  01  16','VETTATHUR','VII','9539261631','','','','','SAJIDA','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','EZHUTHALA','',''),
 (228,'229/16','2018-01-06','SHAILAJA','29',' ','BALAKRISHNAN  DO\nMADATHI\nEZHUTHALA\nVETTATHUR\nREG  DATE  9539261631','','VII','246165','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','EZHUTHALA','',''),
 (229,'230/16','2018-01-06','KUGIMUHAMMED','70',' ','PILAYITHODI\nTHELAKKAD\nMELKULAGARA\nREG  DATE  31  01  16','VETTATHUR','XI','','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2016','Jan','','MELKULAGARA','',''),
 (230,'231/16','2018-01-06','KADEEJA','75',' ','PONETHE\nMUHAMMED  WO\nKARUVATHEKUNNE\nTHELAKKAD\nREG  DATE  31  01  16','','XI','9846093745','','','','','UMMERFAROOK','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (231,'232/16','2018-01-06','BIYA  ABALAN','90',' ','ALAVI  WO\nMECT SCHOOL\nKARA\nREG  DATE  31  01  16','VETTATHUR','VIII','9809949618  9809949618','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','KARA','',''),
 (232,'233/16','2018-01-06','AYISHA','62',' ','THORAKATTIL\nKARA VETTATHUR','VETTATHUR','VIII','9745513564','','','','','SHOUKATHALI','','','','','','',NULL,NULL,'CVA','','Active','2016','Jan','','KARA','',''),
 (233,'234/16','2018-01-06','RAJESHARI','29',' ','BALAKRISHNAN  DO\nMADATHIL\nEZHUTHALA VETTATHUR\nREG  NO  229  SISTER\nREG  DATE  31  01  16','','VIII','246165','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','EZHUTHALA','',''),
 (234,'235/16','2018-01-06','MUHAMMED SAFUVAN','18',' ','ALAGADEN  SO\nKAPPU  PURONAKUNNE\nTHELAKKAD\n','','VI','9846295186','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','PURONAKUNNE','',''),
 (235,'236/16','2018-01-06','VARGEES','79',' ','THOMAS  SO\nPUVATHEMUTTIL\nTHEKANMALA\nVETTATHUR\nREG  DATE  ','','X','9895854212','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2016','Jan','','THEKANMALA','',''),
 (236,'237/16','2018-01-06','MUHAMMED MASTER','75',' ','MADAMBARA\nABUBACKER  SO\nKAVALA  VETTATHUR\nREG  DATE  31  01  16\n','','X','9633449274','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','THEKANMALA','',''),
 (237,'238/16','2018-01-06','SHANDHA','35',' ','PUTHAMKOTTE\nAYAPPAN  DO\nPURONAKUNNE\nREG  DATE  31  01  16','','','','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','','',''),
 (238,'239/16','2018-01-06','KURUMBA','64',' ','THREVOTTIL\nIDUMAYIL\nKAVALA MILL\n','','X','97451333716','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','THEKANMALA','',''),
 (239,'240/16','2018-01-06','AACHU','85',' ','MAMMU  WO\nMADATHODI\nUNNIYAL\n','','VIII','','','','','','SAJIDA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','KARA','',''),
 (240,'241/16','2018-01-06','KALI  SAROJINI','55',' ','PULAPURATHE\nCHARU  WO\nUNNIYAL','','VIII','','','','','','UMMULBUSHRA','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','KARA','',''),
 (241,'242/16','2018-01-06','MAYMOONA  ','45',' ','MARUTHAMPARA\nEZHUTHALA\nVETTATHUR','','VII','9645515783','','','','','BAIJU  NAVAS','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','EZHUTHALA','',''),
 (242,'243/16','2018-01-06','MAIMOONA','45',' ','MUHAMMMED  WO\nKORANAKATHE\nPOTTACHIRA\nKAPPU\nREG  DATE  01  02  16','','V','9562279886','','','','','SAJIDA','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','KAPPU','',''),
 (243,'244/16','2018-01-06','AYISHA','50',' ','MADAMPARA\nABUBACKER  WO\nTHEKANMALA\nVETTATHUR','','X','8086294160','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2016','Jan','','THEKANMALA','',''),
 (244,'245/16','2018-01-06','FATHIMMA','65',' ','ATTUKADATHIL\nTHACHAPATTA\nKARA VETTATHUR','','VIII','9048409832','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','KARA','',''),
 (245,'246/16','2018-01-06','FATHIMA','70',' ','PAZHZKULAYAN\nKUGIHAMMED\nVETTATHUR\nTHEKANMALA','','X','9747008051','','','','','RASIYA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','THEKANMALA','',''),
 (246,'247/16','2018-01-06','ABUBACKER','60',' ','MADAMPARA\nUMMAR  SO\nTHEKANMALA\nVETTATHUR','','X','8086294160','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','THEKANMALA','',''),
 (247,'248/16','2018-01-06','KLARAMA','52',' ','THEKEKUTTE\nSAJAN\nTHEKANMALA\nVETTATHUR','','X','9744267339','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','THEKANMALA','',''),
 (248,'249/16','2018-01-06','AYISHA  ','67',' ','ABU   WO\nPUTHAMKOTTE\nPUTHAMPURAKAL\nVETTATHUR\nREG  DATE  06  02  16','','VII','9544426121','','','','','','','','','','','',NULL,NULL,'Other','','Death','2016','Jan','','EZHUTHALA','',''),
 (249,'250/16','2018-01-06','REVI','55',' ','ORAVIGAL\nCHATHANKUTTI\nPOTHAKALE  COLANI\nREG  DATE  24 02 16\n','','VI','9744409661','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2016','Jan','','PURONAKUNNE','',''),
 (250,'251/16','2018-01-06','FATHIMA','60',' ','MUHAMMED  WO\nKUNDAPADAM\nTHELAKKAD\n','','XI','','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (251,'252/16','2018-01-06','PATHHUMAKUTTI','86',' ','SAINABA  ALAKAL\nKAVALA\nVETTATHUR','','X','245551','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','THEKANMALA','',''),
 (252,'253/16','2018-01-06','THASLEENA','22',' ','KARUVATHE\nSHOUKATHALI  WO\nVETTATHUR UPSCHOOL','','IX','9746309174','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','','',''),
 (253,'254/16','2018-01-06','KADEEJA','65','female','ALAVI   WO\nTHECHIKODEN\nPOTHAKALE\nTHELAKKAD','','VI','9496857411','','','','','RAHAMATHE','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','PURONAKUNNE','',''),
 (254,'255/16','2018-01-06','NUSRATHE  PP','38',' ','MOOSA   DO\nPUTHAMKOTTE\nPUTHAMPURAKAL\nVADAKETHALA\nREG DATE  24  02  16\n','','VII','','','','','','ASIYA','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','EZHUTHALA','',''),
 (255,'256/16','2018-01-06','NAFEESA','85','female','KADEEJU\nKARAKUNNAN\nPOTHAKALE','','','','','','','','','','','','','','',NULL,NULL,'Old age','','Death','2016','Jan','','POTHAKALE','',''),
 (256,'257/16','2018-01-06','HAMZA','66','male','VADAKACHERI\nKARUVATHEKUNNE\nKUNDAPADAM\nTHELAKKAD','','XI','','','','','','JUBAIRIYA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (257,'258/16','2018-01-06','KADEEJU','85','female','MUHAMMED  WO\nTHATTARAKADAN\nVETTATHUR\n','','','','','','','','MYMOONA','','','','','','',NULL,NULL,'Old age','','Active','2016','Jan','','','',''),
 (258,'259/16','2018-01-06','KADEEJU','65','female','ABDULAMEEN  WO\nMADATHODI\nVETTATHUR\nKUTHEPAREMBE\n','','VII','','','','','','SHAHARBAN','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','KUTHEPARAMBE','',''),
 (259,'260/16','2018-01-06','SHUBASHREE','31','female','PARAMESHARAN  WO\nKAVANAYIL\nTHELKADE\nMELKULAGARA\nVETTATHUR','','','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','THELAKADE','',''),
 (260,'261/16','2018-01-06','ABDULAMEEN','81','male','ALAVI  SO\nMADATHODI\nKUTHEPARAMBE\nVETTATHUR','','','','','','','','SHAMSHU','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (261,'262/16','2018-01-06','IBRAHIM  P','86',' ','KUGALI  SO\nPOTTANTHODI\nVETTATHUR\nEZHUTHALA\nREG  DATE  19  03  16','','VII','9562884512','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','EZHUTHALA','',''),
 (262,'263/16','2018-01-06','PARVATHINETHIYAR','67','female','KESHAVANNAYAR  WO\nMELEKALAM\nKUTHEPARAMBE\nVETTATHUR\nREG  DATE  23  03  16','','VIII','9895889074','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','KUTHEPARAMBE','',''),
 (263,'264/16','2018-01-06','FATHIMA','80',' ','ABDU  WO\nKULAPARAMBE\nVETTATHUR\nREG  DATE  26  03  16','','VII','9745865707','','','','','SHAHINA','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','EZHUTHALA','',''),
 (264,'265/16','2018-01-06','MARIYA','70','female','PAROTHODIKA\nABDULLA  DO\nVETTATHUR\nPARAYARKUNNE\nREG  DATE  26  03  16','','VII','','','','','','MUBASHIRA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','EZHUTHALA','',''),
 (265,'266/16','2018-01-06','MUHAMMADALI  P','68',' ','PALUKARAN\nMELE KAPPU\nTHELAKKAD','','V','9846920475','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2016','Jan','','KAPPU','',''),
 (266,'267/16','2018-01-06','KADEEJU','60','female','KUGARA  WO\nPACHATHE \nTHELAKKAD\nREG  DATE  31  03  16','','XI','8086778373','','','','','','','','','homecare','','medicine',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (267,'268/16','2018-01-06','SAIDALAVE','49',' ','MAMMU  SO\nCHIRATHADAYAN\nMELKULAGARA\nTHELAKKAD\nREG  DATE  31  03  16','','VI','9048477523','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','MELKULAGARA','',''),
 (268,'269/16','2018-01-06','SAJIDA','25',' ','USMAN  SO\nKOLATHE\nKUDADI  KAPPU\nREG  DATE  05  04  16','','V','9494163454','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Death','2016','Jan','','KAPPU','',''),
 (269,'270/16','2018-01-06','MATHA','','female','KUPPAN  WO\nVADAKKETHIL\nKAVALA MILL\nREG  DATE  15  04  16','','X','9745494207','','','','','JALEEL   KADEEJA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (270,'271/16','2018-01-06','CHAKI','70','female','KUTTATTE\nKAVALA  MILL\nREG  DATE  20  04  16','','X','','','','','','FATHIMAKUTTI','','','','','','',NULL,NULL,'CVA','','Death','2016','Jan','','KAVALA','',''),
 (271,'272/16','2018-01-06','NEELI','49',' ','KUNDAPADATHE\nKAPPU\nKILIYAM\nREG  DATE  03 05 16','','','','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2016','Jan','','','',''),
 (272,'273/16','2018-01-06','MUHAMMED BAPPU','80',' ','KAPPUGAL\nKAPPU\nTHELAKKAD\nREG  DATE  03 05  16','','V','9847128865','','','','','KADEEJA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2016','Jan','','','',''),
 (273,'274/16','2018-01-06','KADEEJA','83','female','KAPPUGAL\nKUNDADI\nTHELAKKAD\nREG  DATE  03  05  16','','V','9495353974','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (274,'275/16','2018-01-06','JABIR K','24',' ','MUHAMMED MUSLIYAR\nKOTTARAYIL\nVETTATHUR\nKAVALA\nREG DATE  03  05  16','','X','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','','',''),
 (275,'276/16','2018-01-06','MUHAMMED BASHEER','55',' ','BEERALI  SO\nTHAIKODEN\nVETTATHUR\nREG  DATE  18  05  16','','','8907152975','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','','',''),
 (276,'277/16','2018-01-06','KALLI','',' ','CHATHAN  WO\nPUKKATTE\nVETTATHUR HIGHSCHOOL\nREG  DATE 04 05 16','','','9645912869','','','','','SUHARA','','','','','','',NULL,NULL,'CVA','','Death','2016','Jan','','','',''),
 (277,'278/16','2018-01-06','KUGAPPU','70',' ','THORAKKATTIL\nKODETHE COLANI\nNIRANAPARAMBE\nVETTATHUR\nREG  DATE  01  06  16','','VIII','9645939149','','','','','','','','','','','',NULL,NULL,'Old age','','Active','2016','Jan','','','',''),
 (278,'279/16','2018-01-06','KALLI','75',' ','CHATHAPPAN  WO\nTHORAKKATTIL\nKONDETHE\nKARA NIRANAPARAMBE\nREG DATE  01  06  16','','VIII','9455006236','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (279,'280/16','2018-01-06','KALLI','70',' ','THORAKATTIL\nKODETHE COLANI\nNIRANNAPARAMBE\nKARA \nREG  DATE  01 06 166','','VIII','9048683653','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (280,'281/16','2018-01-06','SAIDALI','60',' ','KUGIMUHAMMED  SO\nITTOKADEN\nKILIYAM VETTATHUR\nREG  DATE  08 07 16','','V','9846427239','','','','','JAMEELA','','','','','','',NULL,NULL,'CVA','','Active','2016','Jan','','KAPPU','','');
INSERT INTO `patient` (`id`,`regno`,`dat`,`pname`,`age`,`gender`,`ad`,`pan`,`ward`,`mobile`,`care`,`mob`,`neg`,`mobi`,`cv`,`cvmob`,`rfname`,`rfmob`,`hmc`,`scp`,`med`,`eqp`,`aparatus`,`diagnosis`,`pcon`,`status`,`year`,`month`,`fnsts`,`area`,`deathyr`,`deathmonth`) VALUES 
 (281,'282/16','2018-01-06','MUHAMMEDALI','38',' ','SAIDALAVI  SO\nITTOKADEN\nKILIYAM VETTATHUR\nREG  DATE  07 07 16','','V','9846427239','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','','',''),
 (282,'283/16','2018-01-06','ASIYA','40',' ','ISMAYIL   WO\nKANAMTHODI\nNIRAMKUZHIKUNNE\nEZHUTHALA  VETTATHUR','','VIII','9746048857','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2016','Jan','','','',''),
 (283,'284/16','2018-01-06','KADEEJA','60',' ','MUHAMMEDKUTTI\nARAKUPARAMBEN\nMELKULAGARA\nPALIPADI\nREG  DATE  14  07  16','','','9846508226','','','','','UMMARULFAROOK','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (284,'285/16','2018-01-06','FATHIMA','40',' ','ARAKUPARABAN\nMELKULAGARA\nPALIPADI\nVETTATHUR','','II','98460508226','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (285,'286/16','2018-01-06','AMANATHE MOIDEEN','70',' ','MAMMUNNI  SO\nKARUVATHEKUNNE\nMELKULAGARA\nVETTATHUR','','VI','9562151503','','','','','SHOBANA TEACHER','','','','','','',NULL,NULL,'Cancer','','Active','2016','Jan','','','',''),
 (286,'287/16','2018-01-06','SAINABA','62',' ','ABDU MUSLIYAR\nARAGOTTE\nMELKULAGARA\nPALIPADI VETTATHUR','','','9495490369','','','','','UMMARUL FAROOK','','','','','','',NULL,NULL,'Select diagnosis','','Active','2016','Jan','','','',''),
 (287,'288/16','2018-01-06','AYAPPAN','44',' ','KAPPUGAL\nKUNDEVAYIPARABE\nVETTATHUR\nREG  DATE  26 07  16','','V','9495453227','','','','','','','','','','','',NULL,NULL,'CVA','','Active','2016','Jan','','','',''),
 (288,'289/16','2018-01-06','ABDULSHAREEF','26',' ','ABOOBACKER  SO\nTHOTTIKULAYAN\nVETTATHUR\nREG  DATE  27  07  16','','IX','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','','',''),
 (289,'290/16','2018-01-06','ASAINAR','68',' ','MADATHODI\nPOTTACHIRA\nKAPPU  VETTATHUR\nREG  DATE  28  07  16\n','','V','9656463395','','','','','','','','','','','',NULL,NULL,'Other','','Death','2016','Jan','','','',''),
 (290,'291/16','2018-01-06','SAFIYA','51',' ','PILAYITHODI\nCHRISTAIN PALLI\nTHEKENMALA\n','','X','9745958262','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','','',''),
 (291,'292/16','2018-01-06','SUBARAMANIYAN','30',' ','VELU  SO\nTHAVOTTIL\nKAVALA MILL\n','','X','9846241084','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2016','Jan','','','',''),
 (292,'293/16','2018-01-06','MUHAMMED AJMAL','16',' ','KARKIDAMKUNNAN\nKAVALA DAM \nVETTATHUR\n','','X','9567812007','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2016','Jan','','','',''),
 (293,'294/16','2018-01-06','RAJAMA','70',' ','PARAKKAL\nLAKSHAMVEED  COLANI\nVETTATHUR DAM\n','','X','','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (294,'295/16','2018-01-06','JASNA  P','22',' ','ASAINAR\nPUCHEGAL\nKARA\nREG  DATE  10  08  16\n','','VIII','9447261837','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','','',''),
 (295,'296/16','2018-01-06','SUDIL','20',' ','KIZHAKETHALAKKAL\nPAZHYA  AGANVADI\nPARAYARKUNNE\nREG  DATE  20  08  16\n','','VIII','9605230445','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','PARAYARKUNNE','',''),
 (296,'297/16','2018-01-06','ABUBACKER','49',' ','MUHAMMED\nVAISHAR\nKARUVATHEKUNNE\nKUNDAPADAM','','XI','9946711468','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (297,'298/16','2018-01-06','SAROJINI','63',' ','BALAKRISHNA NAMBIYAR\nNAZHIKATHIL PALAKKUNNE\nKUTHPARAMBE','','VIII','8281334047','','','','','SAKEENA','','','','','','',NULL,NULL,'CVA','','Active','2016','Jan','','','',''),
 (298,'299/16','2018-01-06','KADEEJA  KP','75',' ','KUGARAMU\nKALUPALATHIGAL\nKAPPU\nREG  DATE  01  09  16','','VI','9847916576','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (299,'300/16','2018-01-06','MUHAMMED ','70',' ','ORAVUMPURATHE\nKAPPU\nREG  DATE  08  09  16','','V','9496129022','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','KAPPU','',''),
 (300,'301/16','2018-01-06','ABDULLA','75',' ','PILAYITHODI\nKARUVATHEKUNNE\nREG  DATE  08 09 16','','XI','9544081088','','','','','ASMABI','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (301,'302/16','2018-01-06','HAMZA','60',' ','MADATHODI\nMELKULAGARA\nJUMAMASJID\n','','XI','9495816059','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','MELKULAGARA','',''),
 (302,'303/16','2018-01-06','MOIDUTTI','74',' ','PONIAKURSHI\nKARUVATHEKUNNE\nMELKULAGARA\n','','XI','9544746103','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','MELKULAGARA','',''),
 (303,'304/16','2018-01-06','MUSTHAFA','47',' ','MAKADAKUZHIYIL\nMELKULAGAR\nPOBSEN GATE\n','','XI','','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2016','Jan','','MELKULAGARA','',''),
 (304,'305/16','2018-01-06','KURUBA','85',' ','PALAMUTTATHE\nEZHUTHALA\nREG  DATE  17  09  16\n','','VII','9048380228','','','','','VEERANKUTTI  PK','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','','',''),
 (305,'306/16','2018-01-06','SITHAMA','90',' ','POTHAKALIGAL\nPURONAKUNNE\nREG  DATE  28  09  16','','VI','9946430481','','','','','LAKSHMI','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2016','Jan','','PURONAKUNNE','',''),
 (306,'307/16','2018-01-06','FATHIMMU  P','',' ','PALATHIGAL\nNIRANAPARAMBE\n','','X','8889956838','','','','','','','','','','','',NULL,NULL,'CKD','','Death','2016','Jan','','','',''),
 (307,'308/16','2018-01-06','SOUMA','27',' ','IDUMIYIL \nVETTATHUR PUMP','','IX','9656992253','','','','','','','','','','','',NULL,NULL,'Cancer','','Death','2016','Jan','','','',''),
 (308,'309/16','2018-01-06','AMINA','',' ','PILAYITHODI\nPARAYARKUNNE\n','','VIII','9048570832','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2016','Jan','','PARAYARKUNNE','',''),
 (309,'310/16','2018-01-06','KUGIMUHAMMED','',' ','KIZHAKEPURATHE\nKARA','','VIII','','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2016','Jan','','','',''),
 (310,'311/16','2018-01-06','VELUTHAKI','',' ','VARIKODEN\nKAVANNA\nVETTATHUR BANK\n','','IX','8593985663','','','','','PRAMILA','','','','','','',NULL,NULL,'Other','','Death','2016','Jan','','NIRANAPARAMBE','',''),
 (311,'312/16','2018-01-06','FATHIMA','',' ','ABDULLA  WO\nPOTTANTHODI\nVETTATHUR HIGH SCHOOL\n','','VII','9526741694','','','','','NASIM MUTHAS','','','','','','',NULL,NULL,'CKD','','Active','2016','Jan','','','',''),
 (312,'313/16','2018-01-06','KAIRUNEESA','',' ','TECHIKODEN\nMELKULAGARA','','XI','8606637595','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2016','Jan','','','',''),
 (313,'314/16','2018-01-06','KADEEJA','80',' ','ERADEN\nVETTATHUR\nREG  DATE  12  11  16','','IX','9633432570','','','','','','','','','','','',NULL,NULL,'Other','','Active','2016','Jan','','NIRANAPARAMBE','',''),
 (314,'315/16','2018-01-06','FATHIMA SHIFA','3',' ','HAMZA  DO\nKOLAGARA\nEZHUTHALA\nREG  DATE  17  11  16','','VIII','','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2016','Jan','','EZHUTHALA','',''),
 (315,'316/16','2018-01-06','MUHAMMEDALI','70','male','NECHITHADAYAN\nKARUVATHAKUNNE\nREG  DATE  29  12  16','','XI','9946762234','','','','','SHANIBA','','','','homecare','','medicine',NULL,NULL,'CVA','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (316,'317/16','2018-01-06','UMMATHU','65',' ','MUHAMMEDALI  WO\nNECHITHADAYAN\nKARUVATHKUNNE\nREG  DATE  29  12  16','','XI','9946762534','','','','','HASEENA','','','','','','',NULL,NULL,'CVA','','Active','2016','Jan','','KARUVATHEKUNNE','',''),
 (317,'318/17','2018-01-06','DEVASYA','60',' ','PALIPURAM\nLAKSHMVEED  COLANI\nVETTATHUR\nREG  DATE  10  01  17','','X','9947704614','','','','','JALEEL','','','','','','',NULL,NULL,'Cancer','','Active','2017','Jan','','KAVALA','',''),
 (318,'319/17','2018-01-06','KRISHNANKUTTI','47',' ','AYAPPAN SO\nPULIKATHODI\nPARAYARKUNNE','','VIII','9605741403','','','','','MUHAMMEDALI  P','','','','','','',NULL,NULL,'Cancer','','Death','2017','Jan','','PARAYARKUNNE','',''),
 (319,'320/17','2018-01-06','KADER HAJI','96',' ','ITHON HAJI  SO\nKANNAMTHODI\nPARIYAPURATHE\nEZHUTHALA','','VII','9656043525','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','EZHUTHALA','',''),
 (320,'321/17','2018-01-06','BEEVI','83',' ','PALLIYALTHODI\nPOTTACHIRA\nKAPPU\nREG  DATE  15  01  17','','V','9539872056','','','','','SOUDA  AYISHA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','KAPPU','',''),
 (321,'322/17','2018-01-06','AYISHA  ','57',' ','BEERAN  WO\nVAITHEERI  \nKAPPU\nREG  DATE  28  01  17','','V','9400151624','','','','','SOUDA','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','KAPPU','',''),
 (322,'323/17','2018-01-06','ABDURAHMAN','70',' ','PERUKADEN\nEZHUTHALA\nREG  DATE  28  01  17','','VII','9526037977','','','','','MUHAMMEDALI  PERUKADEN','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','EZHUTHALA','',''),
 (323,'324/17','2018-01-08','ABDUL HAMMED','56',' ','MUHAMMEDALI SO\nPALIYALTHODI\nPOTTACHIRA\nKAPPU\nREG  DATE    23  01  17','','V','9495291855','','','','','AYISHA','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','KAPPU','',''),
 (324,'325/17','2018-01-08','FATHIMA','80',' ','AALU HAJI  WO\nKARA\nTHORAKKATIL\n\n','','IX','9846667574','','','','','MUHAMMEDALI TP','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','KARA','',''),
 (325,'326/17','2018-01-08','HAMZA','65',' ','UAMMAR  SO\nTHADIYAN\nTHEKKANMALA\n\n','','X','9605597203','','','','','SHAMEEJ','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Death','2017','Jan','','THEKANMALA','',''),
 (326,'327/17','2018-01-08','ASIYA','50',' ','CHURUMALA\nKUNDAPADAM\nKARUVATHEKUNNE\nREG DATE    01  02  17','','XI','','','','','','JUBAIRIYA','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','','',''),
 (327,'328/17','2018-01-08','SHAMEER','35',' ','KAMMAPA  SO\nKUMBLAKUZHIYAN\nKARA\nREG  DATE  01  02  17','','VIII','','','','','','MUHAMMED','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','','',''),
 (328,'329/17','2018-01-08','RAJEENA','16',' ','ABDULRAZAK   DO\nERATHEVALAPPIL\nDESHAMAGALAM\nPATTAMBI  VETTATHUR','','X','','','','','','ABDUMASTER  KE','','','','','','',NULL,NULL,'Cancer','','Death','2017','Jan','','','',''),
 (329,'330/17','2018-01-08','SATHI ','40',' ','THAGAPAN NAYAR\nEDATHALLI\nUNNIYAL\nREG  DATE  15  03  17','','VIII','8606433271','','','','','','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','PARAYARKUNNE','',''),
 (330,'331/17','2018-01-08','NARAYANAN','55',' ','RAMAN  SO\nPOTHAKALIGAL\nPOTHAKALE\n','','VI','8086636075','','','','','','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','POTHAKALE','',''),
 (331,'332/17','2018-01-08','MUHAMMED  KP','63',' ','KADAVATHEPARABAN\nPOTHAKALE\nREG  DATE  15  03  17\n\n','','VI','9605536778','','','','','','','','','','','',NULL,NULL,'CKD','','Active','2017','Jan','','POTHAKALE','',''),
 (332,'333/17','2018-01-08','LAKSHMI','48',' ','VELAUDDEN\nTHORAKKATIL\nKODAYATHE  COLANI\nKARA\n','','VIII','7025128713','','','','','','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','KARA','',''),
 (333,'334/17','2018-01-08','MARIYAMA','85',' ','KURYAN  WO\nPODIMATTATHIL\nTHEKANMALA\nREG  DATE  22  03  17\n\n','','X','8606754175','','','','','','','','','','','',NULL,NULL,'Old age','','Active','2017','Jan','','THEKANMALA','',''),
 (334,'335/17','2018-01-08','PATHUMMU','70','male','MUHAMMED  WO\nERUTHE\nTHEKANMALA\nREG  DATE  29  03  17','','X','9048714393','','','','','','','','','homecare','','medicine',NULL,NULL,'','','Active','2017','Jan','','THEKANMALA','',''),
 (335,'336/17','2018-01-08','SAIDALI','57',' ','MUHAMMED  LATE\nERUTHE\nTHEKANMALA\n','','X','7025793021','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','THEKANMALA','',''),
 (336,'337/17','2018-01-08','ALAVI','60',' ','AMBATEPARAMBE\nKARUVATHEKUNNE\n','','XI','9447175874','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','KARUVATHEKUNNE','',''),
 (337,'338/17','2018-01-08','AYISHU','55',' ','ABDURAHMAN\nVALIKATUTHODI\nLAKSHMVEED\nVETTATHUR\nREG  DATE  30  05  17','','X','9744386208','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','KAVALA','',''),
 (338,'339/17','2018-01-08','MUHAMMEDALI  P','',' ','PILAYITHODI\nPARAYARKUNNE\nREG  DATE  01  06  17','','VIII','7025724613','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2017','Jan','','PARAYARKUNNE','',''),
 (339,'340/17','2018-01-08','SUBAIR ','64',' ','SHAHULHAMEED  SO\nTHAMARASHERI\nPARAYARKUNNE\nREG  DATE  10  06  17\n','','','8907150831','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','','',''),
 (340,'341/17  ','2018-01-08','AYISHA','75',' ','KUGIMOOSA  WO\nKULAPADEN\nNIRANAPARAMBE\nREG  DATE  20  06  17','','IX','','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','NIRANAPARAMBE','',''),
 (341,'342/17','2018-01-08','ALI  ','67',' ','MOIDEEN  SO\nTHUDIKODEN\nKAVALA\nREG  DATE  10  07 17','','X','9544064697','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','KAVALA','',''),
 (342,'343/17','2018-01-08','FATHIMA','70',' ','ABDU  WO\nKARIBANA\nODUVAMKUDE\nREG  DATE  15  07  17\n','','VI','9544570656','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','ODUVAMKUDE','',''),
 (343,'344/17','2018-01-08','SHAREEF','30',' ','KARIBANA\nODUVAMKUDE\nREG  DATE  20  07  17\n','','VI','8086835901','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','ODUVAMKUDE','',''),
 (344,'345/17','2018-01-08','ABDULHAMMED','42',' ','BEERAN  SO\nIRAYATHE\nKAPPU\nREG  DATE  25  07  17','','VI','9048272670','','','','','','','','','','','',NULL,NULL,'CKD','','Active','2017','Jan','','KAPPU','',''),
 (345,'346/17','2018-01-08','KHALEEL','',' ','THACHAPATTA\nVETTATHUR\nHIGHSCHOOLPADI\nREG  DATE  30  07  17','','VI','8157087977','','','','','','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','PURONAKUNNE','',''),
 (346,'347/17','2018-01-08','AYAMUTTI','61',' ','THACHAPATTA\nCOLANI\nVETTATHUR\nREG  DATE  26  07  17','','VI','','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2017','Jan','','PURONAKUNNE','',''),
 (347,'348/17','2018-01-08','MUHAMMEDALI','',' ','MAGADAKUZHIYAN\nTHACHAPATTA COLANI\nVETTATHUR\nREG  DATE  26  08  17','','VI','9745132569','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','PURONAKUNNE','',''),
 (348,'349/17','2018-01-08','MUHAMMEDALI   P','','male','PALIYARTHODI\nABDULHAMMED  SO\nPOTTACHIRA\nKAPPU  THELAKKAD\nREG  DATE  27  08 17','','','9947488662','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','POTACHIRA','',''),
 (349,'350/17','2018-01-08','MAIMOONA','70',' ','MUHAMMEDALI\nPOTHUVACHOLA\nVETTATHUR\nKARA UNIT\nREG  DATE  27  08  17\n','','IX','','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','KARA','',''),
 (350,'351/17','2018-01-08','MUHAMMEDALI','62',' ','BEERAN  SO\nIRAYATHE\nMELE KAPPU\nREG  DATE  28  08  17','','VI','9747988099','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','KARA','',''),
 (351,'352/17','2018-01-08','PATHUMA','82',' ','ABDULAZEEZ  \nPANTHALUR\nREG  DATE  01  09  17','','VIII','9544060413','','','','','SAJIDA','','','','','','',NULL,NULL,'Cancer','','Active','2017','Jan','','KAPPU','',''),
 (352,'353/17','2018-01-08','MUHAMMED NISAR','82',' ','THORAKKATIL  \nVETTOKOTTIL\nVETTATHUR\nPALIPADI\nREG  DATE  05  09  17','','VII','','','','','','AFSAL','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','GVS','',''),
 (353,'354/17','2018-01-08','ABUBACKER','67',' ','MAGADAKUZHIYIL\nMELKULAGARA\nREG  DATE  05  09  17','','XI','9447628359','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','KAPPU','',''),
 (354,'355/17','2018-01-08','PATHUMA','68',' ','SAIDALAVI  WO\nKAPPU  PALIPADI\nREG  DATE  10  09  17','','','9846236843','','','','','','','','','','','',NULL,NULL,'Paraplegia','','Active','2017','Jan','','','',''),
 (355,'356/17','2018-01-08','KADEEJA','49',' ','AMBATTE \nKAPPU SCHOOLPADI\nREG  DATE  ','','V','9946813523','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2017','Jan','','KAPPU','',''),
 (356,'357/17','2018-01-08','PATHUMMA','72',' ','MOIDEEN  WO\nKANAMTHODI\nUPPILTHODI\nVETTATHUR','','VIII','9400845504','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','GVS','',''),
 (357,'358/17','2018-01-08','MOIDEEN','75',' ','VADAKEGARA\nKARA SCHOOLPADI\nREG  DATE  25  09  17','','VIII','9995508273','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','KARA','',''),
 (358,'359/17','2018-01-08','SAINABA','75',' ','SAIDALAVI  WO\nKALUPALATHIGAL\nREG  DATE  25  09  17','','V','9747329526','','','','','','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','KAPPU','',''),
 (359,'360/17  ','2018-01-08','MUHAMMED HAJI','60',' ','HAMZA HAJI\nVAZHAGODEN COLANI\nNIRANAPARAMBE\nREG  DATE  07  10  17','','IX','9495622231','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2017','Jan','','NIRANAPARAMBE','',''),
 (360,'361/17','2018-01-08','AYISHA','85',' ','ALAVI  WO\nKUTHARTHODI\nKAVALA\nREG  DATE  07  10  17','','X','7025354946','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','KAVALA','',''),
 (361,'362/17','2018-01-08','KADEEJA','86',' ','MUHAMMMED  WO\nMADATHODI\nMELKULAGARA\nREG  DATE  07  10  17','','XI','9495700873','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2017','Jan','','MELKULAGARA','',''),
 (362,'363/17','2018-01-08','MUHAMMED MUFLIHE','23',' ','MANARAPUZHI\nASAINAR\nGVS  VETTATHUR\nREG  DATE 07  10  17','','VII','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','GVS','',''),
 (363,'364/17','2018-01-08','MUHAMMED  IPPU','82',' ','PANTHALAN\nKAPPU','','V','9961218681','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','KAPPU','',''),
 (364,'365/17','2018-01-08','KUGIMA','60',' ','MAMMU  WO\nKORMATHODI\nKAGALATHIL\nPARAYARKUNNE\n','','VIII','9645486210','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','PARAYARKUNNE','',''),
 (365,'366/17','2018-01-08','ABU','70',' ','KUDAPADAM\nKAPPU\nSCHOOLPADI\nREG  DATE  05  11  17','','V','9947039286  7907569595','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','KAPPU','',''),
 (366,'367/17','2018-01-08','SHARANAYA','21',' ','GOPALAKRISHNAN DO\nIDUMIYIL\nVETTATHUR\nREG  DATE  08  011  17','','IX','9539764699','','','','','','','','','','','',NULL,NULL,'Cancer','','Active','2017','Jan','','','',''),
 (367,'368/17','2018-01-08','AYISHA','77',' ','MUHAMMED  WO\nKALUPALATHIGAL\nTHEKANMALA \nLAKSHMVEED ROAD\nREG  DATE  18  11  17\n','','X','9544650472','','','','','ASIYA','','','','','','',NULL,NULL,'CVA','','Active','2017','Jan','','','',''),
 (368,'369/17','2018-01-08','SAROJINI','55','female','SHIVADASEN  WO\nTHONIYIL\nKUTHEPARMBE\nALAKALPARA \nRAMACHADI\nREG  DATE  01  12  17','','VIII','','','','','','','','','','homecare','','medicine',NULL,NULL,'Cancer','','Active','2017','Jan','','','',''),
 (369,'370/17','2018-01-08','KURUMBA','60',' ','CHATHEN  WO\nKANAMTHODI\nIRIBANOTTIL\nARAKUPARAMBE\nVETTATHUR','','VIII','8943764121','','','','','NUSIBA','','','','','','',NULL,NULL,'CVA','','Active','2017','Jan','','','',''),
 (370,'372/17','2018-01-08','AMINA','71',' ','AALIYAMMU  WO\nKAKKADEN\nNIRANAPARAMBE\nVETTATHUR','','X','','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','','',''),
 (371,'373/17','2018-01-08','KADEEJU','80',' ','PANAMPUZHI\nKAPPU\nPURONAKUNNE\nVETTATHUR','','VI','','','','','','','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','','',''),
 (372,'374/17','2018-01-08','ABUBACKER','47',' ','MUHAMMED  SO\nALAKKAL\nEZHUTHALA\n','','VII','9746308634','','','','','','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','','',''),
 (373,'375/17','2018-01-08','SHAHIDA','34','female','MUHAMMED  DO\nKARUVARAKODEN\nKAPPU POTHAKALE\nVETTATHUE\nREG  DATE  30  12  17','','VI','8606746965','','','','','RAHAMATHE','','','','','','',NULL,NULL,'PSY','','Active','2017','Jan','','','',''),
 (374,'376/17','2018-01-08','OMANA','36',' ','SHAKARAN  DO\nILIKKAL\nKILIYAM\nVETTATHUR  HIGHSCHOOLPADI\nREG  DATE  30  12  17 ','','V','8943686736','','','','','','','','','','','',NULL,NULL,'Other','','Active','2017','Jan','','','',''),
 (375,'377/17','2018-01-08','FATHIMA','60',' ','ABDURAHMAN  WO\nPERUKADEN\nVETTATHUR\nEZHUTHALA\n','','','9846747719','','','','','PERUKADEN MUHAMMEDALI','','','','','','',NULL,NULL,'Select diagnosis','','Active','2017','Jan','','','',''),
 (376,'378/17','2018-01-08','KADEEJU MUHAMMED','88',' ','KANAMTHODI\nKAVANNA\nVETTATHUR\n','','','8157064280','','','','','','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','','',''),
 (377,'138/15','2018-01-09','USMAN','46',' ','ARAKUPARAMBEN\nKAPPU\nKUNDEVAYIPARAMBE\n','','V','9526075273','','','','','','','','','','','',NULL,NULL,'Other','','Active','2015','Jan','','KAPPU','',''),
 (378,'371/17','2018-01-09','SAINABA','85',' ','MANARAPUZHI\nVETTATHUR\n','','VIII','','','','','','NUSAIBA','','','','','','',NULL,NULL,'Old age/Bed Ridden','','Active','2017','Jan','','','','');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


--
-- Definition of table `patientmeddetails`
--

DROP TABLE IF EXISTS `patientmeddetails`;
CREATE TABLE `patientmeddetails` (
  `idpatientmeddetails` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reg` varchar(500) NOT NULL,
  `panme` varchar(500) NOT NULL,
  `dia` varchar(500) NOT NULL,
  `med` varchar(500) NOT NULL,
  `qty` varchar(500) NOT NULL,
  `dte` date NOT NULL,
  `perday` varchar(500) NOT NULL,
  `retrn` varchar(500) DEFAULT NULL,
  `rdte` date DEFAULT NULL,
  PRIMARY KEY (`idpatientmeddetails`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientmeddetails`
--

/*!40000 ALTER TABLE `patientmeddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientmeddetails` ENABLE KEYS */;


--
-- Definition of table `physio`
--

DROP TABLE IF EXISTS `physio`;
CREATE TABLE `physio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `ttype` varchar(450) NOT NULL,
  `cs` text NOT NULL,
  `remks` varchar(450) NOT NULL,
  `doc` varchar(450) NOT NULL,
  `tme` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physio`
--

/*!40000 ALTER TABLE `physio` DISABLE KEYS */;
INSERT INTO `physio` (`id`,`regno`,`ttype`,`cs`,`remks`,`doc`,`tme`,`dte`) VALUES 
 (1,'3/15','walking - wl','sss','','dr fahad','8am','2018-04-05'),
 (2,'3/15','walking - wl','jack','','dr fahad','9am','2018-04-05');
/*!40000 ALTER TABLE `physio` ENABLE KEYS */;


--
-- Definition of table `physionew`
--

DROP TABLE IF EXISTS `physionew`;
CREATE TABLE `physionew` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `pname` varchar(450) NOT NULL,
  `age` varchar(450) NOT NULL,
  `gen` varchar(450) NOT NULL,
  `ad` text NOT NULL,
  `pan` varchar(450) NOT NULL,
  `ward` varchar(450) NOT NULL,
  `area` varchar(450) NOT NULL,
  `mob` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physionew`
--

/*!40000 ALTER TABLE `physionew` DISABLE KEYS */;
/*!40000 ALTER TABLE `physionew` ENABLE KEYS */;


--
-- Definition of table `physiotherappytype`
--

DROP TABLE IF EXISTS `physiotherappytype`;
CREATE TABLE `physiotherappytype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `therappytype` varchar(450) NOT NULL,
  `code` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physiotherappytype`
--

/*!40000 ALTER TABLE `physiotherappytype` DISABLE KEYS */;
INSERT INTO `physiotherappytype` (`id`,`therappytype`,`code`) VALUES 
 (1,'walking','wl');
/*!40000 ALTER TABLE `physiotherappytype` ENABLE KEYS */;


--
-- Definition of table `plan`
--

DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `idplan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plantype` varchar(450) NOT NULL,
  `description` varchar(450) NOT NULL,
  PRIMARY KEY (`idplan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;


--
-- Definition of table `previousmedicine`
--

DROP TABLE IF EXISTS `previousmedicine`;
CREATE TABLE `previousmedicine` (
  `idpreviousmedicine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `medname` varchar(450) NOT NULL,
  `qty` varchar(450) NOT NULL,
  `perday` varchar(450) NOT NULL,
  `slno` varchar(450) NOT NULL,
  PRIMARY KEY (`idpreviousmedicine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `previousmedicine`
--

/*!40000 ALTER TABLE `previousmedicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `previousmedicine` ENABLE KEYS */;


--
-- Definition of table `procedures`
--

DROP TABLE IF EXISTS `procedures`;
CREATE TABLE `procedures` (
  `idprocedures` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wc` varchar(450) DEFAULT NULL,
  `cath` varchar(450) DEFAULT NULL,
  `ngt` varchar(450) DEFAULT NULL,
  `lec` varchar(450) DEFAULT NULL,
  `stc` varchar(450) DEFAULT NULL,
  `inj` varchar(450) DEFAULT NULL,
  `iv` varchar(450) DEFAULT NULL,
  `enema` varchar(450) DEFAULT NULL,
  `ascitic` varchar(450) DEFAULT NULL,
  `inve` varchar(450) DEFAULT NULL,
  `bl` varchar(450) DEFAULT NULL,
  `bwl` varchar(450) DEFAULT NULL,
  `blader` varchar(450) DEFAULT NULL,
  `wct` varchar(450) DEFAULT NULL,
  `others` varchar(450) DEFAULT NULL,
  `name` varchar(450) NOT NULL,
  `regno` varchar(450) NOT NULL,
  `month` varchar(450) NOT NULL,
  `year` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  PRIMARY KEY (`idprocedures`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `procedures`
--

/*!40000 ALTER TABLE `procedures` DISABLE KEYS */;
/*!40000 ALTER TABLE `procedures` ENABLE KEYS */;


--
-- Definition of table `protemp`
--

DROP TABLE IF EXISTS `protemp`;
CREATE TABLE `protemp` (
  `idtemppro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmpro` varchar(450) NOT NULL,
  PRIMARY KEY (`idtemppro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protemp`
--

/*!40000 ALTER TABLE `protemp` DISABLE KEYS */;
INSERT INTO `protemp` (`idtemppro`,`tmpro`) VALUES 
 (1,'115000.0');
/*!40000 ALTER TABLE `protemp` ENABLE KEYS */;


--
-- Definition of table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `idpharmacy` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suplayername` varchar(450) NOT NULL,
  `invoicenum` varchar(450) DEFAULT NULL,
  `billamount` varchar(450) DEFAULT NULL,
  `medname` varchar(450) DEFAULT NULL,
  `batchno` varchar(450) DEFAULT NULL,
  `qty` varchar(450) DEFAULT NULL,
  `mrp` varchar(450) DEFAULT NULL,
  `expd` date NOT NULL,
  `prdte` date NOT NULL,
  `month` varchar(450) NOT NULL,
  `year` varchar(450) NOT NULL,
  PRIMARY KEY (`idpharmacy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`idpharmacy`,`suplayername`,`invoicenum`,`billamount`,`medname`,`batchno`,`qty`,`mrp`,`expd`,`prdte`,`month`,`year`) VALUES 
 (1,'old stock','00','00','TRAMADOL','01','1000','1000','2028-02-22','2018-02-22','Feb','2018'),
 (2,'old stock','0','0','MEFAD','0','1000','200','2018-02-23','2018-02-23','Feb','2018'),
 (4,'old stock','0','0','ECOSPIRIN 75','00','500','500','2018-02-23','2018-02-09','Feb','2018'),
 (5,'old stock','0','0','DOLO 650','0001','100','250','2018-02-23','2018-02-23','Feb','2009'),
 (6,'national','00','1000','TRAMADOL','0','1000','100','2019-02-24','2018-02-01','Feb','2018'),
 (7,'national','00','1000','ECOSPIRIN 75','12','100','500','2019-02-24','2018-02-01','Feb','2018');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;


--
-- Definition of table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `idregistration` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `address` text NOT NULL,
  `clientmob` varchar(450) NOT NULL,
  `officemob` varchar(450) NOT NULL,
  `customerid` varchar(450) NOT NULL,
  `customermob` varchar(450) NOT NULL,
  `username` varchar(450) NOT NULL,
  `password` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  `dst` varchar(450) NOT NULL,
  `expdate` date NOT NULL,
  PRIMARY KEY (`idregistration`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`idregistration`,`name`,`address`,`clientmob`,`officemob`,`customerid`,`customermob`,`username`,`password`,`dte`,`dst`,`expdate`) VALUES 
 (1,'    VETTATHUR PALLIATIVE CARE','VETTATHUR','9876543210','04835','CABEMP108','8089109473','admin','123','2017-01-02','malappuaram','2018-01-02');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;


--
-- Definition of table `rehab`
--

DROP TABLE IF EXISTS `rehab`;
CREATE TABLE `rehab` (
  `idRehab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `name` varchar(450) NOT NULL,
  `address` varchar(450) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `type` varchar(200) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `remark` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  `village` varchar(450) NOT NULL,
  `ward` varchar(45) NOT NULL,
  PRIMARY KEY (`idRehab`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rehab`
--

/*!40000 ALTER TABLE `rehab` DISABLE KEYS */;
/*!40000 ALTER TABLE `rehab` ENABLE KEYS */;


--
-- Definition of table `rehabilitation`
--

DROP TABLE IF EXISTS `rehabilitation`;
CREATE TABLE `rehabilitation` (
  `idrehabilitation` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `psy` varchar(450) NOT NULL,
  `para` varchar(450) NOT NULL,
  `other` varchar(450) NOT NULL,
  `upsy` varchar(450) NOT NULL,
  `upara` varchar(450) NOT NULL,
  `opara` varchar(450) NOT NULL,
  `spsy` varchar(450) NOT NULL,
  `spara` varchar(450) NOT NULL,
  `sothr` varchar(450) NOT NULL,
  `ppsy` varchar(450) NOT NULL,
  `ppara` varchar(450) NOT NULL,
  `ppothr` varchar(450) NOT NULL,
  `psyo` varchar(450) NOT NULL,
  `parao` varchar(45) NOT NULL,
  `othro` varchar(45) NOT NULL,
  `dte` date NOT NULL,
  `year` varchar(450) NOT NULL,
  `month` varchar(450) NOT NULL,
  PRIMARY KEY (`idrehabilitation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rehabilitation`
--

/*!40000 ALTER TABLE `rehabilitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `rehabilitation` ENABLE KEYS */;


--
-- Definition of table `rehabtype`
--

DROP TABLE IF EXISTS `rehabtype`;
CREATE TABLE `rehabtype` (
  `idrehabtype` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rehabtyp` varchar(450) NOT NULL,
  PRIMARY KEY (`idrehabtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rehabtype`
--

/*!40000 ALTER TABLE `rehabtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `rehabtype` ENABLE KEYS */;


--
-- Definition of table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `idreview` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `volunteers` varchar(450) NOT NULL,
  `vnm` varchar(45) NOT NULL,
  `bystanders` varchar(45) NOT NULL,
  `bnm` varchar(45) NOT NULL,
  `others` varchar(45) NOT NULL,
  `onm` varchar(45) NOT NULL,
  `dte` date NOT NULL,
  `year` varchar(45) NOT NULL,
  `month` varchar(45) NOT NULL,
  PRIMARY KEY (`idreview`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;


--
-- Definition of table `rootmapping`
--

DROP TABLE IF EXISTS `rootmapping`;
CREATE TABLE `rootmapping` (
  `idrootmapping` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(450) NOT NULL,
  `name` varchar(450) NOT NULL,
  `plan` text,
  `visitpalan` varchar(450) DEFAULT NULL,
  `lastvisit` date DEFAULT NULL,
  `homecareunit` varchar(450) DEFAULT NULL,
  `team` varchar(450) DEFAULT NULL,
  `nextvisit` date DEFAULT NULL,
  `homecaretype` varchar(450) DEFAULT NULL,
  `sts` varchar(450) DEFAULT NULL,
  `Mnth` varchar(450) NOT NULL,
  `yr` varchar(450) NOT NULL,
  PRIMARY KEY (`idrootmapping`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rootmapping`
--

/*!40000 ALTER TABLE `rootmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `rootmapping` ENABLE KEYS */;


--
-- Definition of table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `idsales` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(200) NOT NULL,
  `diag` varchar(450) NOT NULL,
  `item` varchar(450) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `issued` varchar(200) NOT NULL,
  `dte` date NOT NULL,
  PRIMARY KEY (`idsales`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;


--
-- Definition of table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `idstock` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `medname` varchar(450) NOT NULL,
  `availability` varchar(450) NOT NULL,
  PRIMARY KEY (`idstock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` (`idstock`,`medname`,`availability`) VALUES 
 (1,'TRAMADOL','200.0'),
 (2,'MEFAD','0.0'),
 (3,'ECOSPIRIN 75','110.0'),
 (4,'DOLO 650','100');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;


--
-- Definition of table `substock`
--

DROP TABLE IF EXISTS `substock`;
CREATE TABLE `substock` (
  `idSubstock` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subname` varchar(450) NOT NULL,
  `medname` varchar(450) NOT NULL,
  `qty` varchar(450) NOT NULL,
  PRIMARY KEY (`idSubstock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `substock`
--

/*!40000 ALTER TABLE `substock` DISABLE KEYS */;
/*!40000 ALTER TABLE `substock` ENABLE KEYS */;


--
-- Definition of table `substockname`
--

DROP TABLE IF EXISTS `substockname`;
CREATE TABLE `substockname` (
  `idsubstockname` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `substockname` varchar(450) NOT NULL,
  PRIMARY KEY (`idsubstockname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `substockname`
--

/*!40000 ALTER TABLE `substockname` DISABLE KEYS */;
/*!40000 ALTER TABLE `substockname` ENABLE KEYS */;


--
-- Definition of table `suplayer`
--

DROP TABLE IF EXISTS `suplayer`;
CREATE TABLE `suplayer` (
  `idsuplayer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL,
  `mobile` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`idsuplayer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suplayer`
--

/*!40000 ALTER TABLE `suplayer` DISABLE KEYS */;
INSERT INTO `suplayer` (`idsuplayer`,`name`,`mobile`) VALUES 
 (1,'old stock',''),
 (2,'national','');
/*!40000 ALTER TABLE `suplayer` ENABLE KEYS */;


--
-- Definition of table `trainning`
--

DROP TABLE IF EXISTS `trainning`;
CREATE TABLE `trainning` (
  `idtrainning` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `complete` varchar(450) NOT NULL,
  `awareness` varchar(450) NOT NULL,
  `other` varchar(450) NOT NULL,
  `studc` varchar(450) NOT NULL,
  `publc` varchar(450) NOT NULL,
  `studa` varchar(450) NOT NULL,
  `puba` varchar(450) NOT NULL,
  `ostud` varchar(450) NOT NULL,
  `opub` varchar(450) NOT NULL,
  `dte` date NOT NULL,
  `year` varchar(45) NOT NULL,
  `month` varchar(45) NOT NULL,
  PRIMARY KEY (`idtrainning`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainning`
--

/*!40000 ALTER TABLE `trainning` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainning` ENABLE KEYS */;


--
-- Definition of table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `iduser_login` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(450) NOT NULL,
  `password` varchar(450) NOT NULL,
  PRIMARY KEY (`iduser_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;


--
-- Definition of table `visitplan`
--

DROP TABLE IF EXISTS `visitplan`;
CREATE TABLE `visitplan` (
  `idvisitplan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(450) NOT NULL,
  PRIMARY KEY (`idvisitplan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitplan`
--

/*!40000 ALTER TABLE `visitplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitplan` ENABLE KEYS */;


--
-- Definition of table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
CREATE TABLE `volunteer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `gender` varchar(500) DEFAULT NULL,
  `addre` varchar(500) DEFAULT NULL,
  `pan` varchar(500) DEFAULT NULL,
  `Ward` varchar(500) DEFAULT NULL,
  `mob` varchar(500) DEFAULT NULL,
  `blood` varchar(500) DEFAULT NULL,
  `age` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer`
--

/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` (`id`,`name`,`gender`,`addre`,`pan`,`Ward`,`mob`,`blood`,`age`) VALUES 
 (1,'SHAHARBAN','Female','Vadakethil','VETTAM','10','9544536319','Blood group','38'),
 (2,'BASHEER PT','Male','PUTHAKOT THODAYAKKAT\nODUVANKUND','VETTATHUR','V1','8086140730','Blood group','60'),
 (3,'MUSTHAFA PT','Male','PUTHANKOT THODAYAKKAT\nODUVANKUND','VETTATHUR','V1','9633302020','Blood group','52'),
 (4,'ABDULMAJEED  PT','Male','PUTHANKOTT\nTODEKATT','VETTATHUR','X','8943865385','Blood group',''),
 (5,'MUHAMMED  P','Male','PAGACHEERI','VETTATHUR','V','9895641535','Blood group',''),
 (6,'MUHAMMED','Male','PAZHAKULAYAN','VETTATHUR','','9846128018','Blood group',''),
 (7,'MUHAMMED','Male','CHEMBAN','VETTATHUR','','8606019928','Blood group',''),
 (8,'MANSOOR  PT','Male','PUTHANKOTT \nTODEKATT','VETTATHUR','','9946611819','Blood group',''),
 (9,'ASGAR  PS','Male','SO  ASHARF','VETTATHUR','','8129885756','Blood group',''),
 (10,'HABEEB MASTER  N','Male','','VETTAM','','9745500778','Blood group',''),
 (11,'ASIF  TK','Male','SO  SHOUKATH','VETT','','9745769461','Blood group',''),
 (12,'MUHAMMED SHAHID','Male','SO  RASHEED THUDIKODEN','VETT','VII','9544065576','Blood group',''),
 (13,'MUBARIS','Male','SO  GAFOOR','VETTATHUR','V','9656188760','Blood group',''),
 (14,'MUHAMMED FARIS','Male','SO  MUSTHAFA','VETTATHUR','VI','9633530439','Blood group',''),
 (15,'MUHAMMED SALMAN','Male','SO  SHAMSU FAISY','VETTATHUR','IV','9048781294','Blood group',''),
 (16,'SHAHARBAN','Female','Vadakkethil\nvettathur','VETTATHUR','10','9544536319','Blood group','38'),
 (17,'SHAHARBAN','Female','Vadakkethil\n','VETTATHUR','10','9544536319','Blood group','38'),
 (18,'16-SHAHARBAN','Female','Vadakkethil\nvettathur','VETTATHUR','10','9544536319','Blood group','38'),
 (19,'VOLUNTEER','Female','\n','VETTATHUR','10','','Blood group',''),
 (20,'NUSAIBA','Female','KARUVATHEl\nvettathur','VETTATHU','10','','Blood group',''),
 (21,'BASHEER PT','Female','PUTHAKOT THODAYAKKAT','VETTATHU','V1','8086140730','Blood group','60');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
