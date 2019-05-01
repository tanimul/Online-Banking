-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: online_banking_workbench
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `Account_id` int(11) NOT NULL,
  `Account_type_code` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Account_name` varchar(30) NOT NULL,
  `Date_opened` date NOT NULL,
  `Current_balance` int(11) NOT NULL,
  `Other_account_details` varchar(60) NOT NULL,
  PRIMARY KEY (`Account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1001,1,1,'Fuad','2018-08-07',10000,'no account'),(1002,2,2,'naimur','2018-08-08',1000,'new account'),(1003,3,3,'rehan','2018-08-07',10000,'new account'),(1004,4,4,'riad','2018-08-09',2000,'no account'),(1005,5,5,'monir','2018-08-07',10000,'new account'),(1006,6,6,'mahmud','2018-08-09',500,'no account'),(1007,7,7,'mira','2018-08-06',10000,'new account'),(1008,8,8,'nayem','2018-08-07',10000,'no account'),(1009,9,9,'tarek','2018-08-06',2000,'no account'),(1010,10,10,'jakaria','2018-08-07',1000,'new account');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `Address_id` int(11) NOT NULL,
  `Address_type_code` int(11) NOT NULL,
  `Permanent_address` varchar(45) NOT NULL,
  `Present_address` varchar(45) NOT NULL,
  `City` varchar(15) NOT NULL,
  `State_province_Country` varchar(25) NOT NULL,
  `Country` varchar(15) NOT NULL,
  `Other_address_details` varchar(45) NOT NULL,
  PRIMARY KEY (`Address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'kalabagan','kalabagan','dhaka','880','bangladesh','dhaka'),(2,2,'shukrabad','kalabagan','dhaka','880','bangladesh','dhaka'),(3,3,'kalabagan','shukrabad','dhaka','880','bangladesh','dhaka'),(4,4,'kalabagan','shukrabad','dhaka','880','bangladesh','dhaka'),(5,5,'shukrabad','kalabagan','dhaka','880','bangladesh','dhaka'),(6,6,'kalabagan','shukrabad','dhaka','880','bangladesh','dhaka'),(7,7,'shukrabad','shukrabad','dhaka','880','bangladesh','dhaka'),(8,8,'shukrabad','shukrabad','dhaka','880','bangladesh','dhaka'),(9,9,'kalabagan','kalabagan','dhaka','880','bangladesh','dhaka'),(10,10,'shukrabad','shukrabad','dhaka','880','bangladesh','dhaka');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_history`
--

DROP TABLE IF EXISTS `balance_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balance_history` (
  `Account_id` int(11) NOT NULL,
  `Balance_date` int(11) NOT NULL,
  `Balance_at_date` int(11) NOT NULL,
  PRIMARY KEY (`Account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_history`
--

LOCK TABLES `balance_history` WRITE;
/*!40000 ALTER TABLE `balance_history` DISABLE KEYS */;
INSERT INTO `balance_history` VALUES (1,10000,9000),(2,20000,19000),(3,10000,1000),(4,100000,10000),(5,20000,10000),(6,100000,10500),(7,10000,5000),(8,10000,10000),(9,1000000,10000),(10,10000,500);
/*!40000 ALTER TABLE `balance_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_addresses`
--

DROP TABLE IF EXISTS `customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_addresses` (
  `Customer_address_id` int(11) NOT NULL,
  `Address_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Date_from` date NOT NULL,
  `Date_to` date NOT NULL,
  PRIMARY KEY (`Customer_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_addresses`
--

LOCK TABLES `customer_addresses` WRITE;
/*!40000 ALTER TABLE `customer_addresses` DISABLE KEYS */;
INSERT INTO `customer_addresses` VALUES (100,1,1,'2018-02-10','2018-03-11'),(101,2,2,'2018-02-12','2018-04-11'),(102,3,3,'2018-02-10','2018-04-11'),(103,4,4,'2018-03-11','2018-04-11'),(104,5,5,'2018-02-12','2018-04-14'),(105,6,6,'2018-02-10','2018-03-11'),(106,7,7,'2018-03-11','2018-04-14'),(107,8,8,'2018-02-12','2018-04-11'),(108,9,9,'2018-02-10','2018-04-14'),(109,10,10,'2018-02-12','2018-03-11'),(110,11,11,'2018-02-10','2018-03-11');
/*!40000 ALTER TABLE `customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_purchase`
--

DROP TABLE IF EXISTS `customer_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_purchase` (
  `Purchase_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Service_code` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Other_details` varchar(30) NOT NULL,
  PRIMARY KEY (`Purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_purchase`
--

LOCK TABLES `customer_purchase` WRITE;
/*!40000 ALTER TABLE `customer_purchase` DISABLE KEYS */;
INSERT INTO `customer_purchase` VALUES (1,1,1,'2018-10-10',5,'have  a good day'),(2,2,2,'2018-10-10',5,'good product'),(3,3,3,'2018-11-10',2,'have  a good day'),(4,4,4,'2018-10-10',5,'good product'),(5,5,5,'2018-10-11',3,'have  a good day'),(6,6,6,'2018-10-12',5,'good product'),(7,7,7,'2018-10-10',3,'good product'),(8,8,8,'2018-10-10',4,'have  a good day'),(9,9,9,'2018-10-13',5,'good product'),(10,10,10,'2018-10-10',6,'have  a good day');
/*!40000 ALTER TABLE `customer_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `Customer_id` int(11) NOT NULL,
  `Customer_type_code` int(11) NOT NULL,
  `Customer_name` varchar(20) NOT NULL,
  `Customer_phone` int(11) NOT NULL,
  `Customer_email` varchar(25) NOT NULL,
  `Date_latest_login` date DEFAULT NULL,
  `Other_details` varchar(30) NOT NULL,
  PRIMARY KEY (`Customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,1,'fuad',1756693148,'fuadhasanfhm@gmail.com','2018-02-15','new comer'),(2,2,'hasan',1588555555,'hasan@gmail.com','2018-03-15','new customer'),(3,3,'mahmud',1866458635,'mahmud@gmail.com','2018-02-15','new comer'),(4,4,'riad',1684496855,'riad@gmail.com','2018-02-16','old customer'),(5,5,'monir',1846555555,'monir@gmail.com','2018-02-15','new comer'),(6,6,'ria',1766555656,'ria@gmail.com','2018-02-15','old comer'),(7,7,'rehan',1789955555,'rehan@gmail.com','2018-03-15','old comer'),(8,8,'ridoy',1789555555,'ridoy@gmail.com','2018-03-15','new comer'),(9,9,'jakaria',1925545555,'jakaria@gmail.com','2018-02-15','new comer'),(10,10,'jalal',1978884477,'jalal@gmail.com','2018-02-15','new comer');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchants` (
  `Merchant_id` int(11) NOT NULL,
  `Merchant_name` varchar(20) NOT NULL,
  `Merchant_phone` int(15) NOT NULL,
  `Merchant_email` varchar(30) NOT NULL,
  `Other_details` varchar(30) NOT NULL,
  PRIMARY KEY (`Merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchants`
--

LOCK TABLES `merchants` WRITE;
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
INSERT INTO `merchants` VALUES (1,'fuad',1756693148,'fuadhasanfhm@gmail.com','new'),(2,'hasan',1565656565,'hasan@gmail.com','old'),(3,'mahmud',1854793555,'mahmud@gmail.com','old'),(4,'saiful',1759556826,'saiful@gmail.com','new'),(5,'jakaria',1685659699,'jakaria@gmail.com','old'),(6,'jalal',1588484491,'jalal@gmail.com','new'),(7,'istiak',1811185815,'istiak@gmail.com','old'),(8,'riad',1844568555,'riad@gmail.com','new'),(9,'jihad',1965855665,'jihad@gmail.com','old'),(10,'monir',1879655556,'monir@gmail.com','new');
/*!40000 ALTER TABLE `merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_and_services`
--

DROP TABLE IF EXISTS `products_and_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_and_services` (
  `Service_code` int(11) NOT NULL,
  `Merchant_id` int(11) NOT NULL,
  `Service_discription` varchar(20) NOT NULL,
  `Service_fund_transfer` int(11) NOT NULL,
  `Service_send_cheque_book` varchar(25) NOT NULL,
  `Service_stop_cheque_payment` varchar(10) NOT NULL,
  `Service_sale` int(11) NOT NULL,
  `Other_address_details` varchar(30) NOT NULL,
  PRIMARY KEY (`Service_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_and_services`
--

LOCK TABLES `products_and_services` WRITE;
/*!40000 ALTER TABLE `products_and_services` DISABLE KEYS */;
INSERT INTO `products_and_services` VALUES (1,1,'good',10000,'no','no',300,'kalabagan'),(2,2,'very good',20000,'yes','yes',200,'shukrabad'),(3,3,'bad',30000,'yes','no',500,'shukrabad'),(4,4,'very good',10000,'no','yes',600,'kalabagan'),(5,5,'bad',20000,'yes','no',900,'shukrabad'),(6,6,'good',10000,'yes','no',800,'kalabagan'),(7,7,'very good',20000,'no','yes',6000,'shukrabad'),(8,8,'good',10000,'yes','no',500,'shukrabad'),(9,9,'bad',30000,'yes','yes',1000,'kalabagan'),(10,10,'very good',20000,'no','yes',1000,'shukrabad');
/*!40000 ALTER TABLE `products_and_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_accounts_type`
--

DROP TABLE IF EXISTS `ref_accounts_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_accounts_type` (
  `Account_type_code` int(11) NOT NULL,
  `Account_type_discription` varchar(20) NOT NULL,
  `Account_type_current` int(11) NOT NULL,
  `Account_type_deposit` int(11) NOT NULL,
  PRIMARY KEY (`Account_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_accounts_type`
--

LOCK TABLES `ref_accounts_type` WRITE;
/*!40000 ALTER TABLE `ref_accounts_type` DISABLE KEYS */;
INSERT INTO `ref_accounts_type` VALUES (1,'new account',10000,20000),(2,'old account',10000,6000),(3,'new account',20000,1000),(4,'old account',30000,20000),(5,'new account',4000,4000),(6,'old account',5000,10000),(7,'old account',500,80000),(8,'new account',1000,4000),(9,'old account',6000,30000),(10,'new account',80000,10000);
/*!40000 ALTER TABLE `ref_accounts_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_address_types`
--

DROP TABLE IF EXISTS `ref_address_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_address_types` (
  `Address_type_code` int(11) NOT NULL,
  `Address_type_discription` varchar(20) NOT NULL,
  `Address_type_home` varchar(20) NOT NULL,
  `Address_type_delivary` int(11) NOT NULL,
  PRIMARY KEY (`Address_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_address_types`
--

LOCK TABLES `ref_address_types` WRITE;
/*!40000 ALTER TABLE `ref_address_types` DISABLE KEYS */;
INSERT INTO `ref_address_types` VALUES (1,'kalabagan','duplex',1),(2,'kalabagan','duplex',2),(3,'sukrabad','tinset',10),(4,'sukrabad','duplex',4),(5,'kalabagan','tinset',11),(6,'danmondi','duplex',3),(7,'sukrabad','tinset',5),(8,'kalabagan','tinset',7),(9,'danmondi','duplex',6),(10,'sukrabad','tinset',9),(11,'kalabagan','duplex',8);
/*!40000 ALTER TABLE `ref_address_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_customers_type`
--

DROP TABLE IF EXISTS `ref_customers_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_customers_type` (
  `Customer_type_code` int(11) NOT NULL,
  `Reference_name` varchar(20) NOT NULL,
  PRIMARY KEY (`Customer_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_customers_type`
--

LOCK TABLES `ref_customers_type` WRITE;
/*!40000 ALTER TABLE `ref_customers_type` DISABLE KEYS */;
INSERT INTO `ref_customers_type` VALUES (1,'rehan'),(2,'faud'),(3,'monir'),(4,'rehan'),(5,'faud'),(6,'monir'),(7,'hridoy'),(8,'moni'),(9,'rihan'),(10,'monia');
/*!40000 ALTER TABLE `ref_customers_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_transcations_type`
--

DROP TABLE IF EXISTS `ref_transcations_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_transcations_type` (
  `Transcation_type_code` int(11) NOT NULL,
  `Transcation_type_discription` varchar(20) NOT NULL,
  `Transcation_type_transfer` int(11) NOT NULL,
  `Transcation_type_withdrawal` int(11) NOT NULL,
  PRIMARY KEY (`Transcation_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_transcations_type`
--

LOCK TABLES `ref_transcations_type` WRITE;
/*!40000 ALTER TABLE `ref_transcations_type` DISABLE KEYS */;
INSERT INTO `ref_transcations_type` VALUES (1,'hand',10000,5000),(2,'card',20000,10000),(3,'card',3000,1000),(4,'hand',1000,10000),(5,'card',20000,2000),(6,'card',2000,10000),(7,'hand',1000,3000),(8,'card',1000,10000),(9,'hand',10000,1000),(10,'card',5000,10000);
/*!40000 ALTER TABLE `ref_transcations_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `First_name` varchar(15) NOT NULL,
  `Last_name` varchar(15) NOT NULL,
  `User_name` varchar(25) NOT NULL,
  `Password` int(11) NOT NULL,
  `Retype_password` int(11) NOT NULL,
  `Birth_date` date NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Recovery_qstn1` varchar(45) NOT NULL,
  `Recovery_qstn2` varchar(45) NOT NULL,
  PRIMARY KEY (`User_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('arafat','hossain','arafat1',11,11,'1970-01-09','kalabagan','ruhi','cambrian'),('fuad','hasan','fuad_hasan',12345,12345,'2008-01-11','kalabagan','rupok','kg school'),('ruhi','hasan','hasan2',12,12,'1975-01-04','kalabagan','monis','cambrian'),('hasan','mahmud','hasan22',18,18,'1973-10-04','kalabagan','riad','kg school'),('istiak','hasan','istiak1',123,123,'1970-06-01','kalabagan','mahmud','high school'),('karim','ullah','karim112',123456789,123456789,'1993-01-14','danmondi 15','riya','kg school'),('mahmud','arif','mahmud12',1357911,1357911,'1980-01-04','kalabagan','ibrahim','kg school'),('moni','pori','moni123',15,15,'1973-11-04','tangail','rimi','jago'),('naimul','Jannat','naimul121',2468,2468,'1993-01-09','khilgaw','tamim','kg school'),('nayem','molla','nayem2',12,12,'1979-01-04','shukrabad','mahmud','kg'),('prema','rafsana','prema12',11,11,'1970-01-19','shukrabad','moni','cambrian'),('shaJalal','rehan','rehan',10,10,'1973-01-19','khilgaw','riad','kg '),('ria','mumtaz','ria',11,11,'1970-01-20','kalabagan','saiful','cambrian'),('riad','un nabi','riad',1234,1234,'1970-01-10','shukrabad','ria','kg school'),('sahima','sultana','sahima12',12345,12345,'1973-10-04','noakhali','mukta','kg school'),('tahmi','sultana','sultana12',157,157,'1970-01-02','munsiganj','miraj','high school'),('tahmina','sultana','sultana122',157,157,'1970-04-01','munsiganj','miraj','high school'),('tahi','sultana','tahi12',157,157,'1973-01-04','munsiganj','riyan','high school'),('taj','sultana','tahj',157,157,'1970-01-01','munsiganj','mira','high school'),('tahmina','morshed','tahmina12',12345,12345,'1975-01-09','noakhali','mukta','kg school'),('tajrima','sultana','tajrima',157,157,'1980-02-01','munsiganj','mahin','high school');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transcations`
--

DROP TABLE IF EXISTS `transcations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transcations` (
  `Transcation_id` int(11) NOT NULL,
  `Account_id` int(11) NOT NULL,
  `Purchase_id` int(11) NOT NULL,
  `Related_transcation_id` int(11) NOT NULL,
  `Transcation_type_code` int(11) NOT NULL,
  `Date_of_transcation` date NOT NULL,
  `Ammount_of_transcation` int(11) NOT NULL,
  `Other_details` varchar(30) NOT NULL,
  PRIMARY KEY (`Transcation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transcations`
--

LOCK TABLES `transcations` WRITE;
/*!40000 ALTER TABLE `transcations` DISABLE KEYS */;
INSERT INTO `transcations` VALUES (1,1,1,10,1,'2018-02-02',2000,'kalabagan'),(2,2,2,1,2,'2018-02-02',1000,'danmondi'),(3,3,3,2,3,'2018-01-01',223,'shukrabad'),(4,4,4,3,4,'2018-03-02',5000,'kalabagan'),(5,5,5,4,5,'2018-02-05',8000,'mohammadpur'),(6,6,6,5,6,'2018-02-06',500,'framgate'),(7,7,7,6,7,'2018-02-07',250,'mirpur 10'),(8,8,8,7,8,'2018-02-11',300,'khamar bari'),(9,9,9,8,9,'2018-02-18',200,'kawran bajar'),(10,10,10,9,10,'2018-02-12',100,'kalabagan');
/*!40000 ALTER TABLE `transcations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'online_banking_workbench'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07 23:20:11
