-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: ed
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ed_car_reservation`
--

DROP TABLE IF EXISTS `ed_car_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_car_reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicle_id` int NOT NULL,
  `member_id` int NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `chauffeur` int NOT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `travelers` int NOT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `reason` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_car_reservation`
--

LOCK TABLES `ed_car_reservation` WRITE;
/*!40000 ALTER TABLE `ed_car_reservation` DISABLE KEYS */;
INSERT INTO `ed_car_reservation` VALUES (1,1,2,'2022-05-30 15:50:26','do not thing',-1,'',3,'2022-05-30 15:49:01','2022-05-31 15:49:00',1,'');
/*!40000 ALTER TABLE `ed_car_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_car_reservation_data`
--

DROP TABLE IF EXISTS `ed_car_reservation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_car_reservation_data` (
  `reservation_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  KEY `reservation_id` (`reservation_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_car_reservation_data`
--

LOCK TABLES `ed_car_reservation_data` WRITE;
/*!40000 ALTER TABLE `ed_car_reservation_data` DISABLE KEYS */;
INSERT INTO `ed_car_reservation_data` VALUES (1,'car_accessories','1');
/*!40000 ALTER TABLE `ed_car_reservation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_category`
--

DROP TABLE IF EXISTS `ed_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_category` (
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int DEFAULT '0',
  `topic` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  KEY `type` (`type`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_category`
--

LOCK TABLES `ed_category` WRITE;
/*!40000 ALTER TABLE `ed_category` DISABLE KEYS */;
INSERT INTO `ed_category` VALUES ('repairstatus',1,'แจ้งซ่อม','#660000',1),('repairstatus',2,'กำลังดำเนินการ','#120eeb',1),('repairstatus',3,'รออะไหล่','#d940ff',1),('repairstatus',4,'ซ่อมสำเร็จ','#06d628',1),('repairstatus',5,'ซ่อมไม่สำเร็จ','#FF0000',1),('repairstatus',6,'ยกเลิกการซ่อม','#FF6F00',1),('repairstatus',7,'ส่งมอบเรียบร้อย','#000000',1),('car_brand',3,'Hino',NULL,1),('car_accessories',1,'น้ำมันเต็มถัง',NULL,1),('car_type',2,'รถยนต์นั่งส่วนบุคคล',NULL,1),('car_brand',2,'Benz',NULL,1),('car_type',3,'รถบัส',NULL,1),('accessories',4,'อาหารว่าง',NULL,1),('position',4,'เจ้าหน้าที่',NULL,1),('position',3,'หัวหน้า',NULL,1),('position',1,'ผู้อำนวยการ',NULL,1),('position',2,'รองผู้อำนวยการ',NULL,1),('department',3,'การเงิน',NULL,1),('department',1,'บริหาร',NULL,1),('department',2,'พัสดุ',NULL,1),('accessories',2,'จอโปรเจ็คเตอร์',NULL,1),('accessories',1,'เครื่องคอมพิวเตอร์',NULL,1),('accessories',3,'เครื่องฉายแผ่นใส',NULL,1),('use',2,'สัมนา',NULL,1),('use',1,'ประชุม',NULL,1),('use',3,'จัดเลี้ยง',NULL,1),('unit',3,'ชุด',NULL,1),('car_brand',1,'Toyota',NULL,1),('unit',2,'เครื่อง',NULL,1),('model_id',5,'Samsung',NULL,1),('model_id',4,'ACER',NULL,1),('model_id',3,'Cannon',NULL,1),('model_id',2,'Asus',NULL,1),('type_id',4,'โปรเจ็คเตอร์',NULL,1),('type_id',5,'จอมอนิเตอร์',NULL,1),('type_id',6,'วัสดุสิ้นเปลือง',NULL,1),('car_type',1,'รถกระบะ',NULL,1),('type_id',1,'อื่นๆ',NULL,1),('type_id',2,'เครื่องคอมพิวเตอร์',NULL,1),('category_id',3,'วัสดุสำนักงาน',NULL,1),('category_id',1,'อุปกรณ์',NULL,1),('category_id',2,'อุปกรณ์เครือข่าย',NULL,1),('model_id',1,'ไม่ระบุ',NULL,1),('type_id',3,'เครื่องพิมพ์',NULL,1),('unit',1,'ชิ้น',NULL,1),('car_accessories',2,'เครื่องเสียงโฆษณา',NULL,1);
/*!40000 ALTER TABLE `ed_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_edocument`
--

DROP TABLE IF EXISTS `ed_edocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_edocument` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int unsigned NOT NULL,
  `department` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `urgency` tinyint(1) NOT NULL DEFAULT '2',
  `last_update` int unsigned NOT NULL,
  `document_no` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `topic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `ext` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `size` double unsigned NOT NULL,
  `file` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_edocument`
--

LOCK TABLES `ed_edocument` WRITE;
/*!40000 ALTER TABLE `ed_edocument` DISABLE KEYS */;
INSERT INTO `ed_edocument` VALUES (1,2,',,',2,1632052932,'DOC-0009','ส่งให้แอดมิน','คำศัพท์ชื่อป้ายห้องในโรงเรียนเป็นภาษาอังกฤษแนบ','pdf',457639,'1545666283.pdf','124.122.2.5'),(2,1,',1,2,3,',2,1545664264,'DOC-0008','ทดสอบ','CanonPixmaMP280-MP287-PrinterDriver','jpg',18795,'1545662500.jpg','110.168.79.37'),(3,2,',,',0,1653900695,'DOC-0003','dog','d6a1fdbd79b80339d009aff691f49985','jpg',37105,'1653900695.jpg','192.168.100.106');
/*!40000 ALTER TABLE `ed_edocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_edocument_download`
--

DROP TABLE IF EXISTS `ed_edocument_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_edocument_download` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `downloads` int NOT NULL,
  `last_update` int NOT NULL,
  PRIMARY KEY (`id`,`member_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_edocument_download`
--

LOCK TABLES `ed_edocument_download` WRITE;
/*!40000 ALTER TABLE `ed_edocument_download` DISABLE KEYS */;
INSERT INTO `ed_edocument_download` VALUES (1,2,1,1545665178),(2,1,0,1545667460),(3,1,0,0);
/*!40000 ALTER TABLE `ed_edocument_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_inventory`
--

DROP TABLE IF EXISTS `ed_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `unit` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_inventory`
--

LOCK TABLES `ed_inventory` WRITE;
/*!40000 ALTER TABLE `ed_inventory` DISABLE KEYS */;
INSERT INTO `ed_inventory` VALUES (1,'จอมอนิเตอร์ ACER S220HQLEBD','',1,1),(2,'Notebook Samsung RV418','Windows 10 HOME\r\nMicrosoft Office',3,1),(4,'Printer Cannon MP287','',2,1),(5,'กระดาษ A4','',1,1);
/*!40000 ALTER TABLE `ed_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_inventory_meta`
--

DROP TABLE IF EXISTS `ed_inventory_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_inventory_meta` (
  `inventory_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(150) NOT NULL,
  KEY `inventory_id` (`inventory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_inventory_meta`
--

LOCK TABLES `ed_inventory_meta` WRITE;
/*!40000 ALTER TABLE `ed_inventory_meta` DISABLE KEYS */;
INSERT INTO `ed_inventory_meta` VALUES (5,'model_id','1'),(2,'model_id','5'),(1,'model_id','4'),(2,'type_id','1'),(1,'type_id','4'),(3,'model_id','2'),(2,'category_id','1'),(1,'category_id','1'),(3,'type_id','1'),(5,'type_id','6'),(5,'category_id','3'),(3,'category_id','1'),(4,'model_id','3'),(4,'type_id','3'),(4,'category_id','1');
/*!40000 ALTER TABLE `ed_inventory_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_inventory_stock`
--

DROP TABLE IF EXISTS `ed_inventory_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_inventory_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inventory_id` int NOT NULL,
  `product_no` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock` float NOT NULL DEFAULT '0',
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_id` (`inventory_id`),
  UNIQUE KEY `product_no` (`product_no`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_inventory_stock`
--

LOCK TABLES `ed_inventory_stock` WRITE;
/*!40000 ALTER TABLE `ed_inventory_stock` DISABLE KEYS */;
INSERT INTO `ed_inventory_stock` VALUES (1,5,'0001',1,'2021-01-23'),(2,4,'0002',1,'2021-01-23'),(3,2,'0003',1,'2021-01-23'),(4,1,'0004',1,'2021-01-23');
/*!40000 ALTER TABLE `ed_inventory_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_inventory_user`
--

DROP TABLE IF EXISTS `ed_inventory_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_inventory_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `member_id` int NOT NULL,
  `create_date` date DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_inventory_user`
--

LOCK TABLES `ed_inventory_user` WRITE;
/*!40000 ALTER TABLE `ed_inventory_user` DISABLE KEYS */;
INSERT INTO `ed_inventory_user` VALUES (1,4,1,'2021-01-23',NULL),(2,3,1,NULL,NULL);
/*!40000 ALTER TABLE `ed_inventory_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_language`
--

DROP TABLE IF EXISTS `ed_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `la` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `type` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `js` tinyint(1) NOT NULL,
  `th` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `en` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=399 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_language`
--

LOCK TABLES `ed_language` WRITE;
/*!40000 ALTER TABLE `ed_language` DISABLE KEYS */;
INSERT INTO `ed_language` VALUES (1,'CANCEL','ຍົກເລີກ','text','index',1,'ยกเลิก','Cancel'),(2,'CHANGE_COLOR','ປ່ຽນສີ','text','index',1,'เปลี่ยนสี','change color'),(3,'CHECK','ເລືອກ','text','index',1,'เลือก','check'),(4,'DELETE','ລຶບ','text','index',1,'ลบ','delete'),(5,'DISABLE','ປິດໃຊ້ການ','text','index',1,'ปิดใช้งาน','Disable'),(6,'DOWNLOADING_IS_A_SIGNED_DOCUMENT','ການດາວໂຫຼດຖືວ່າເປັນການລົງຊື່ຮັບເອກະສານ','text','index',1,'การดาวน์โหลดถือเป็นการลงชื่อรับเอกสาร','Downloading is a signed document'),(7,'ENABLE','ເປີດໃຊ້ການ','text','index',1,'เปิดใช้งาน','Enable'),(8,'INVALID_DATA','ຂໍ້ມູນ XXX ບໍ່ຖືກຕ້ອງ','text','index',1,'ข้อมูล XXX ไม่ถูกต้อง','XXX Invalid data'),(9,'NEXT_MONTH','ເດືອນຕໍ່ໄປ','text','index',1,'เดือนถัดไป','Next Month'),(10,'PLEASE_BROWSE_FILE','ກະລຸນາເລືອກແຟ້ມຂໍ້ມູນ','text','index',1,'กรุณาเลือกไฟล์','Please browse file'),(11,'PLEASE_FILL_IN','ກະລຸນາພີ່ມ','text','index',1,'กรุณากรอก','Please fill in'),(12,'PLEASE_SAVE_BEFORE_CONTINUING','ກະລຸນາບັນທຶກກ່ອນດຳເນີນການຕໍ່','text','index',1,'กรุณาบันทึก ก่อนดำเนินการต่อ','Please save before continuing'),(13,'PLEASE_SELECT','ກະລຸນາເລືອກ','text','index',1,'กรุณาเลือก','Please select'),(14,'PLEASE_SELECT_AT_LEAST_ONE_ITEM','ກະລຸນາເລືອກ XXX ຢ່າງໜ້ອຍໜຶ່ງລາຍການ','text','index',1,'กรุณาเลือก XXX อย่างน้อย 1 รายการ','Please select XXX at least one item'),(15,'PREV_MONTH','ເດືອນທີ່ຜ່ານມາ','text','index',1,'เดือนก่อนหน้า','Prev Month'),(16,'SELECT_ALL','ເລືອກທັງໝົດ','text','index',1,'เลือกทั้งหมด','select all'),(17,'SELECT_NONE','ບໍ່ເລືອກລາຍການໃດເລີຍ','text','index',1,'ไม่เลือกรายการใดเลย','select none'),(18,'SORRY_XXX_NOT_FOUND','ຂໍອະໄພບໍ່ພົບ XXX ທີ່ຕ້ອງການ','text','index',1,'ขออภัย ไม่พบ XXX ที่ต้องการ','Sorry XXX not found'),(19,'SUCCESSFULLY_COPIED_TO_CLIPBOARD','ສຳເນົາໄປຍັງຄິບບອດຮຽບຮ້ອຍແລ້ວ','text','index',1,'สำเนาไปยังคลิปบอร์ดเรียบร้อย','Successfully copied to clipboard'),(20,'SUCCESSFULLY_UPLOADED_XXX_FILES','ອັບໂຫຼດຮຽບຮ້ອຍ XXX ແຟ້ມ','text','index',1,'อัปโหลดเรียบร้อย XXX ไฟล์','Successfully uploaded XXX files'),(21,'THE_TYPE_OF_FILE_IS_INVALID','ຊະນິດຂອງແຟ້ມບໍ່ຖືກຕ້ອງ','text','index',1,'ชนิดของไฟล์ไม่ถูกต้อง','The type of file is invalid'),(22,'UNCHECK','ບໍ່ເລືອກ','text','index',1,'ไม่เลือก','uncheck'),(23,'YOU_WANT_TO_XXX','ທ່ານບໍ່ຕ້ອງການ XXX ?','text','index',1,'คุณต้องการ XXX ?','You want to XXX ?'),(24,'YOU_WANT_TO_XXX_THE_SELECTED_ITEMS','ທ່ານຕ້ອງການ XXX ລາຍການທີ່ເລືອກ?','text','index',1,'คุณต้องการ XXX รายการที่เลือก ?','You want to XXX the selected items ?'),(25,'APPROVING_RESERVATIONS','a:3:{i:0;s:39:\"ສິ້ນສຸດການຈອງ\";i:1;s:48:\"ກ່ອນທີ່ຈະຈອງເວລາ\";i:2;s:30:\"ຕະຫຼອດເວລາ\";}','array','index',0,'a:3:{i:0;s:42:\"ก่อนหมดเวลาจอง\";i:1;s:42:\"ก่อนถึงเวลาจอง\";i:2;s:24:\"ตลอดเวลา\";}','a:3:{i:0;s:14:\"End of booking\";i:1;s:19:\"Before booking time\";i:2;s:8:\"All time\";}'),(26,'BOOKING_OPTIONS','a:1:{s:11:\"accessories\";s:21:\"ອຸປະກອນ\";}','array','index',0,'a:1:{s:11:\"accessories\";s:21:\"อุปกรณ์\";}','a:1:{s:11:\"accessories\";s:11:\"Accessories\";}'),(27,'BOOKING_SELECT','a:1:{s:3:\"use\";s:27:\"ໃຊ້ສໍາລັບ\";}','array','index',0,'a:1:{s:3:\"use\";s:27:\"ใช้สำหรับ\";}','a:1:{s:3:\"use\";s:7:\"use for\";}'),(28,'BOOKING_STATUS','a:5:{i:0;s:57:\"ລໍຖ້າສໍາລັບການກວດກາ\";i:1;s:21:\"ອະນຸມັດ\";i:2;s:30:\"ບໍ່ອະນຸຍາດ\";i:3;s:66:\"ຍົກເລີກໂດຍບຸກຄົນທີ່ຈອງ\";i:4;s:63:\"ຍົກເລີກໂດຍເຈົ້າໜ້າທີ່\";}','array','index',0,'a:5:{i:0;s:27:\"รอตรวจสอบ\";i:1;s:21:\"อนุมัติ\";i:2;s:30:\"ไม่อนุมัติ\";i:3;s:45:\"ยกเลิกโดยผู้จอง\";i:4;s:60:\"ยกเลิกโดยเจ้าหน้าที่\";}','a:5:{i:0;s:7:\"Pending\";i:1;s:7:\"Approve\";i:2;s:11:\"Not allowed\";i:3;s:20:\"Canceled by customer\";i:4;s:23:\"Canceled by the officer\";}'),(29,'BOOLEANS','a:2:{i:0;s:27:\"ປິດໃຊ້ວຽກ\";i:1;s:30:\"ເປີດໃຊ້ວຽກ\";}','array','index',0,'a:2:{i:0;s:27:\"ปิดใช้งาน\";i:1;s:30:\"เปิดใช้งาน\";}','a:2:{i:0;s:7:\"Disable\";i:1;s:7:\"Enabled\";}'),(30,'CAR_CUSTOM_TEXT','a:1:{s:5:\"seats\";s:42:\"ຈໍານວນບ່ອນນັ່ງ\";}','array','index',0,'a:1:{s:5:\"seats\";s:36:\"จำนวนที่นั่ง\";}','a:1:{s:5:\"seats\";s:15:\"Number of seats\";}'),(31,'CAR_OPTIONS','a:1:{s:15:\"car_accessories\";s:33:\"ອຸປະກອນເສີມ\";}','array','index',0,'a:1:{s:15:\"car_accessories\";s:36:\"อุปกรณ์เสริม\";}','a:1:{s:15:\"car_accessories\";s:11:\"Accessories\";}'),(32,'CAR_SELECT','a:2:{s:8:\"car_type\";s:15:\"ປະເພດ\";s:9:\"car_brand\";s:18:\"ຍີ່ຫໍ້\";}','array','index',0,'a:2:{s:8:\"car_type\";s:18:\"ประเภท\";s:9:\"car_brand\";s:18:\"ยี่ห้อ\";}','a:2:{s:8:\"car_type\";s:4:\"Type\";s:9:\"car_brand\";s:5:\"Brand\";}'),(33,'CATEGORIES','a:2:{s:10:\"department\";s:15:\"ພະແນກ\";s:8:\"position\";s:24:\"ຕໍາແຫນ່ງ\";}','array','index',0,'a:2:{s:10:\"department\";s:12:\"แผนก\";s:8:\"position\";s:21:\"ตำแหน่ง\";}','a:2:{s:10:\"department\";s:10:\"Department\";s:8:\"position\";s:8:\"Position\";}'),(34,'DATE_FORMAT','d M Y ເວລາ H:i ນ.','text','index',0,'d M Y เวลา H:i น.','d M Y, H:i'),(35,'DATE_LONG','a:7:{i:0;s:15:\"ອາທິດ\";i:1;s:9:\"ຈັນ\";i:2;s:18:\"ອັງຄານ\";i:3;s:9:\"ພຸດ\";i:4;s:15:\"ພະຫັດ\";i:5;s:9:\"ສຸກ\";i:6;s:12:\"ເສົາ\";}','array','index',0,'a:7:{i:0;s:21:\"อาทิตย์\";i:1;s:18:\"จันทร์\";i:2;s:18:\"อังคาร\";i:3;s:9:\"พุธ\";i:4;s:24:\"พฤหัสบดี\";i:5;s:15:\"ศุกร์\";i:6;s:15:\"เสาร์\";}','a:7:{i:0;s:6:\"Sunday\";i:1;s:6:\"Monday\";i:2;s:7:\"Tuesday\";i:3;s:9:\"Wednesday\";i:4;s:8:\"Thursday\";i:5;s:6:\"Friday\";i:6;s:8:\"Saturday\";}'),(36,'DATE_SHORT','a:7:{i:0;s:4:\"ທ.\";i:1;s:4:\"ຈ.\";i:2;s:4:\"ຄ.\";i:3;s:4:\"ພ.\";i:4;s:4:\"ພ.\";i:5;s:4:\"ສ.\";i:6;s:4:\"ສ.\";}','array','index',0,'a:7:{i:0;s:7:\"อา.\";i:1;s:4:\"จ.\";i:2;s:4:\"อ.\";i:3;s:4:\"พ.\";i:4;s:7:\"พฤ.\";i:5;s:4:\"ศ.\";i:6;s:4:\"ส.\";}','a:7:{i:0;s:2:\"Su\";i:1;s:2:\"Mo\";i:2;s:2:\"Tu\";i:3;s:2:\"We\";i:4;s:2:\"Th\";i:5;s:2:\"Fr\";i:6;s:2:\"Sa\";}'),(37,'DOWNLOAD_ACTIONS','a:2:{i:0;s:33:\"ດາວໂຫຼດແຟ້ມ\";i:1;s:53:\"ເປີດແຟ້ມ(ທີ່ຮູ້ຈັກ)\";}','array','index',0,'a:2:{i:0;s:39:\"ดาวน์โหลดไฟล์\";i:1;s:54:\"เปิดไฟล์ (ที่รู้จัก)\";}','a:2:{i:0;s:8:\"Download\";i:1;s:26:\"Open file (know file type)\";}'),(38,'INVENTORY_CATEGORIES','a:3:{s:11:\"category_id\";s:24:\"ຫມວດຫມູ່\";s:7:\"type_id\";s:15:\"ປະເພດ\";s:8:\"model_id\";s:18:\"ຍີ່ຫໍ້\";}','array','index',0,'a:3:{s:11:\"category_id\";s:24:\"หมวดหมู่\";s:7:\"type_id\";s:18:\"ประเภท\";s:8:\"model_id\";s:18:\"ยี่ห้อ\";}','a:3:{s:11:\"category_id\";s:8:\"Category\";s:7:\"type_id\";s:4:\"Type\";s:8:\"model_id\";s:5:\"Brand\";}'),(39,'INVENTORY_STATUS','a:2:{i:0;s:36:\"ປິດການໃຊ້ວຽກ\";i:1;s:30:\"ຍັງເຮັດວຽກ\";}','array','index',0,'a:2:{i:0;s:42:\"เลิกใช้งานแล้ว\";i:1;s:30:\"ใช้งานอยู่\";}','a:2:{i:0;s:8:\"Inactive\";i:1;s:6:\"Active\";}'),(40,'LEAVE_PERIOD','a:3:{i:0;s:21:\"ມື້ເຕັມ\";i:1;s:39:\"ມື້ເຊົ້າເຄິ່ງ\";i:2;s:45:\"ຕອນບ່າຍມື້ເຄິ່ງ\";}','array','index',0,'a:3:{i:0;s:21:\"เต็มวัน\";i:1;s:36:\"ครึ่งวันเช้า\";i:2;s:36:\"ครึ่งวันบ่าย\";}','a:3:{i:0;s:7:\"All day\";i:1;s:16:\"Half day morning\";i:2;s:18:\"Half day afternoon\";}'),(41,'LEAVE_STATUS','a:3:{i:0;s:69:\"ການອະນຸມັດທີ່ຍັງຄ້າງຢູ່\";i:1;s:21:\"ອະນຸມັດ\";i:2;s:48:\"ບໍ່ໄດ້ຮັບອະນຸມັດ\";}','array','index',0,'a:3:{i:0;s:27:\"รออนุมัติ\";i:1;s:21:\"อนุมัติ\";i:2;s:30:\"ไม่อนุมัติ\";}','a:3:{i:0;s:7:\"Pending\";i:1;s:7:\"Approve\";i:2;s:11:\"Not allowed\";}'),(42,'LINE_FOLLOW_MESSAGE','ສະບາຍດີ, :name ນີ້ແມ່ນບັນຊີທາງການຂອງ :title ພວກເຮົາຈະສົ່ງຂ່າວໃຫ້ທ່ານຜ່ານຊ່ອງທາງນີ້.','text','index',0,'สวัสดี คุณ :name นี่คือบัญชีทางการของ :title เราจะส่งข่าวสารถึงคุณผ่านช่องทางนี้','Hello, :name This is :title official account. We will send you news via this channel.'),(43,'LINE_REPLY_MESSAGE','ຂໍອະໄພ, ບໍ່ສາມາດຕອບກັບຂໍ້ຄວາມນີ້ໄດ້.','text','index',0,'ขออภัยไม่สามารถตอบกลับข้อความนี้ได้','Sorry, can&#039;t reply to this message.'),(44,'LOGIN_FIELDS','a:2:{s:8:\"username\";s:15:\"ອີເມວ\";s:5:\"phone\";s:30:\"ເບີໂທລະສັບ\";}','array','index',0,'a:2:{s:8:\"username\";s:15:\"อีเมล\";s:5:\"phone\";s:39:\"เบอร์โทรศัพท์\";}','a:2:{s:8:\"username\";s:5:\"Email\";s:5:\"phone\";s:5:\"Phone\";}'),(45,'MAIL_PROGRAMS','a:3:{i:0;s:46:\"ສົ່ງຈົດໝາຍດ້ວຍ PHP\";i:1;s:75:\"ສົ່ງຈົດໝາຍດ້ວຍ PHPMailer+SMTP (ແນະນຳ)\";i:2;s:61:\"ສົ່ງຈົດໝາຍດ້ວຍ PHPMailer+PHP Mail\";}','array','index',0,'a:3:{i:0;s:43:\"ส่งจดหมายด้วย PHP\";i:1;s:72:\"ส่งจดหมายด้วย PHPMailer+SMTP (แนะนำ)\";i:2;s:58:\"ส่งจดหมายด้วย PHPMailer+PHP Mail\";}','a:3:{i:0;s:13:\"Send with PHP\";i:1;s:38:\"Send with PHPMailer+SMTP (recommended)\";i:2;s:28:\"Send with PHPMailer+PHP Mail\";}'),(46,'MONTH_LONG','a:12:{i:1;s:18:\"ມັງກອນ\";i:2;s:15:\"ກຸມພາ\";i:3;s:12:\"ມີນາ\";i:4;s:12:\"ເມສາ\";i:5;s:21:\"ພຶດສະພາ\";i:6;s:18:\"ມິຖຸນາ\";i:7;s:21:\"ກໍລະກົດ\";i:8;s:15:\"ສິງຫາ\";i:9;s:15:\"ກັນຍາ\";i:10;s:12:\"ຕຸລາ\";i:11;s:15:\"ພະຈິກ\";i:12;s:15:\"ທັນວາ\";}','array','index',0,'a:12:{i:1;s:18:\"มกราคม\";i:2;s:30:\"กุมภาพันธ์\";i:3;s:18:\"มีนาคม\";i:4;s:18:\"เมษายน\";i:5;s:21:\"พฤษภาคม\";i:6;s:24:\"มิถุนายน\";i:7;s:21:\"กรกฎาคม\";i:8;s:21:\"สิงหาคม\";i:9;s:21:\"กันยายน\";i:10;s:18:\"ตุลาคม\";i:11;s:27:\"พฤศจิกายน\";i:12;s:21:\"ธันวาคม\";}','a:12:{i:1;s:7:\"January\";i:2;s:8:\"February\";i:3;s:5:\"March\";i:4;s:5:\"April\";i:5;s:3:\"May\";i:6;s:4:\"June\";i:7;s:4:\"July\";i:8;s:6:\"August\";i:9;s:9:\"September\";i:10;s:7:\"October\";i:11;s:8:\"November\";i:12;s:8:\"December\";}'),(47,'MONTH_SHORT','a:12:{i:1;s:8:\"ມ.ກ.\";i:2;s:8:\"ກ.ພ.\";i:3;s:11:\"ມີ.ນ.\";i:4;s:11:\"ເມ.ສ.\";i:5;s:8:\"ພ.ພ.\";i:6;s:11:\"ມິ.ນ.\";i:7;s:8:\"ກ.ກ.\";i:8;s:8:\"ສ.ຫ.\";i:9;s:8:\"ກ.ຍ.\";i:10;s:8:\"ຕ.ລ.\";i:11;s:8:\"ພ.ຈ.\";i:12;s:8:\"ທ.ວ.\";}','array','index',0,'a:12:{i:1;s:8:\"ม.ค.\";i:2;s:8:\"ก.พ.\";i:3;s:11:\"มี.ค.\";i:4;s:11:\"เม.ย.\";i:5;s:8:\"พ.ค.\";i:6;s:11:\"มิ.ย.\";i:7;s:8:\"ก.ค.\";i:8;s:8:\"ส.ค.\";i:9;s:8:\"ก.ย.\";i:10;s:8:\"ต.ค.\";i:11;s:8:\"พ.ย.\";i:12;s:8:\"ธ.ค.\";}','a:12:{i:1;s:3:\"Jan\";i:2;s:3:\"Feb\";i:3;s:3:\"Mar\";i:4;s:3:\"Apr\";i:5;s:3:\"May\";i:6;s:3:\"Jun\";i:7;s:3:\"Jul\";i:8;s:3:\"Aug\";i:9;s:3:\"Sep\";i:10;s:3:\"Oct\";i:11;s:3:\"Nov\";i:12;s:3:\"Dec\";}'),(48,'Name','ຊື່ ນາມສະກຸນ','text','index',0,'ชื่อ นามสกุล','Name Surname'),(49,'PERMISSIONS','a:1:{s:10:\"can_config\";s:60:\"ສາມາດຕັ້ງຄ່າລະບົບໄດ້\";}','array','index',0,'a:1:{s:10:\"can_config\";s:60:\"สามารถตั้งค่าระบบได้\";}','a:1:{s:10:\"can_config\";s:24:\"Can configure the system\";}'),(50,'PERSONNEL_DETAILS','a:1:{s:3:\"job\";s:9:\"ວຽກ\";}','array','index',0,'a:1:{s:3:\"job\";s:9:\"งาน\";}','a:1:{s:3:\"job\";s:3:\"Job\";}'),(51,'PUBLISHEDS','a:2:{i:0;s:45:\"ລະງັບການເຜີຍແຜ່\";i:1;s:21:\"ເຜີຍແຜ່\";}','array','index',0,'a:2:{i:0;s:45:\"ระงับการเผยแพร่\";i:1;s:21:\"เผยแพร่\";}','a:2:{i:0;s:11:\"Unpublished\";i:1;s:9:\"Published\";}'),(52,'ROOM_CUSTOM_TEXT','a:3:{s:8:\"building\";s:40:\"ອາຄານ/ສະຖານທີ່\";s:6:\"number\";s:12:\"ຫ້ອງ\";s:5:\"seats\";s:42:\"ຈໍານວນບ່ອນນັ່ງ\";}','array','index',0,'a:3:{s:8:\"building\";s:37:\"อาคาร/สถานที่\";s:6:\"number\";s:48:\"เลขที่ห้องประชุม\";s:5:\"seats\";s:36:\"จำนวนที่นั่ง\";}','a:3:{s:8:\"building\";s:8:\"Building\";s:6:\"number\";s:8:\"Room No.\";s:5:\"seats\";s:15:\"Number of seats\";}'),(53,'SEXES','a:2:{s:1:\"f\";s:9:\"ຍິງ\";s:1:\"m\";s:9:\"ຊາຍ\";}','array','index',0,'a:2:{s:1:\"f\";s:12:\"หญิง\";s:1:\"m\";s:9:\"ชาย\";}','a:2:{s:1:\"f\";s:6:\"Female\";s:1:\"m\";s:4:\"Male\";}'),(54,'SMTPSECURIES','a:2:{s:0:\"\";s:66:\"ການເຊື່ອມຕໍ່ແບບປົກກະຕິ\";s:3:\"ssl\";s:66:\"ການເຊື່ອມຕໍ່ທີ່ປອດໄຟ (SSL)\";}','array','index',0,'a:2:{s:0:\"\";s:57:\"การเชื่อมต่อแบบปกติ\";s:3:\"ssl\";s:72:\"การเชื่อมต่อที่ปลอดภัย (SSL)\";}','a:2:{s:0:\"\";s:10:\"Clear Text\";s:3:\"ssl\";s:38:\"Server using a secure connection (SSL)\";}'),(55,'TIME_FORMAT','H:i','text','index',0,'H:i น.','H:i'),(56,'URGENCIES','a:3:{i:0;s:24:\"ດ່ວນຫລາຍ\";i:1;s:12:\"ດ່ວນ\";i:2;s:18:\"ປະກະຕິ\";}','array','index',0,'a:3:{i:0;s:21:\"ด่วนมาก\";i:1;s:12:\"ด่วน\";i:2;s:12:\"ปกติ\";}','a:3:{i:0;s:7:\"Quickly\";i:1;s:5:\"Quick\";i:2;s:6:\"Normal\";}'),(57,'YEAR_OFFSET','0','int','index',0,'543','0'),(58,'0.0.0.0 mean all IP addresses','0.0.0.0 ຫມາຍຄວາມວ່າອະນຸຍາດໃຫ້ທັງຫມົດ','text','index',0,'0.0.0.0 หมายถึงอนุญาตทั้งหมด',NULL),(59,'A new document has been sent to you. Please check back','ເອກະສານໃຫມ່ໄດ້ຖືກສົ່ງໃຫ້ທ່ານ ກະລຸນາກວດເບິ່ງຄືນ.','text','index',0,'มีเอกสารใหม่ส่งถึงคุณ กรุณากลับไปตรวจสอบ',NULL),(60,'Add','ເພີ່ມ','text','index',0,'เพิ่ม',NULL),(61,'Add friend','ເພີ່ມເພື່ອນ','text','index',0,'เพิ่มเพื่อน',NULL),(62,'Address','ທີ່ຢູ່','text','index',0,'ที่อยู่',NULL),(63,'Address details','ລາຍລະອຽດທີ່ຢູ່','text','index',0,'รายละเอียดที่อยู่',NULL),(64,'Administrator status It is of utmost importance to do everything','ສະຖານະຜູ້ເບິ່ງແຍງລະບົບມີຄວາມສຳຄັນສຸງທີ່ສຸດສາມາດເຮັດໄດ້ທຸກຢ່າງ','text','index',0,'สถานะผู้ดูแลระบบ มีความสำคัญสูงสุดสามารถทำได้ทุกอย่าง',NULL),(65,'All :count entries, displayed :start to :end, page :page of :total pages','ທັງໝົດ :count ລາຍການ, ສະແດງ :start ເຖິງ :end, ໜ້າທີ່ :page ຈາກທັງໝົດ:total ໜ້າ','text','index',0,'ทั้งหมด :count รายการ, แสดง :start ถึง :end, หน้าที่ :page จากทั้งหมด :total หน้า',NULL),(66,'All cars','ລົດທັງຫມົດ','text','index',0,'ยานพาหนะทั้งหมด',NULL),(67,'all items','ທັງໝົດ','text','index',0,'ทั้งหมด',NULL),(68,'All meeting rooms','ຫ້ອງປະຊຸມທັງຫມົດ','text','index',0,'ห้องประชุมทั้งหมด',NULL),(69,'API settings','ຕັ້ງຄ່າ API','text','index',0,'ตั้งค่า API',NULL),(70,'Applicant','ຜູ້ສະໝັກ','text','index',0,'ผู้ขอใช้',NULL),(71,'Approval','ການອະນຸມັດ','text','index',0,'ผู้อนุมัติ',NULL),(72,'Approve','ອະນຸມັດ','text','index',0,'อนุมัติ',NULL),(73,'Approving/editing reservations','ການອະນຸມັດ/ແກ້ໄຂການຈອງ','text','index',0,'การอนุมัติ/แก้ไข การจอง',NULL),(74,'Attendees number','ຈໍານວນຜູ້ເຂົ້າຮ່ວມ','text','index',0,'จำนวนผู้เข้าประชุม',NULL),(75,'Authentication require','ການກວດກາຄວາມຖືກຕ້ອງ','text','index',0,'การตรวจสอบความถูกต้อง',NULL),(76,'Background color','ສີພື້ນຫລັງ','text','index',0,'สีพื้นหลัง',NULL),(77,'Background image','ພາບພື້ນຫລັງ','text','index',0,'รูปภาพพื้นหลัง',NULL),(78,'Begin date','ວັນເລີ່ມຕົ້ນ','text','index',0,'วันที่เริ่มต้น',NULL),(79,'Begin time','ເລີ່ມເວລາ','text','index',0,'เวลาเริ่มต้น',NULL),(80,'Book a meeting','ຈອງຫ້ອງປະຊຸມ','text','index',0,'จองห้องประชุม',NULL),(81,'Book a vehicle','ຈອງລົດ','text','index',0,'จองยานพาหนะ',NULL),(82,'Booking','ການຈອງ','text','index',0,'การจอง',NULL),(83,'Booking calendar','ປະຕິທິນການຈອງ','text','index',0,'ปฏิทินการจอง',NULL),(84,'Booking today','ຈອງໃນມື້ນີ້','text','index',0,'การจองวันนี้',NULL),(85,'Brand','ຍີ່ຫໍ້','text','index',0,'ยี่ห้อ',NULL),(86,'Browse file','ເລືອກໄຟລ໌','text','index',0,'เลือกไฟล์',NULL),(87,'Browse image uploaded, type :type','ເລືອກຮູບພາບອັບໂຫຼດຊະນິດ :type','text','index',0,'เลือกรูปภาพอัปโหลดชนิด :type',NULL),(88,'Browse image uploaded, type :type size :width*:height pixel','ເລືອກຮູບພາບອັບໂຫຼດຊະນິດ :type ຂະໜາດ :width*:height ຟິດເຊວล','text','index',0,'เลือกรูปภาพอัปโหลด ชนิด :type ขนาด :width*:height พิกเซล',NULL),(89,'Can be approve','ສາມາດອະນຸມັດ','text','index',0,'สามารถอนุมัติได้',NULL),(90,'Can handle all documents','ສາມາດຈັດການເອກະສານທັງໝົດໄດ້','text','index',0,'สามารถจัดการเอกสารทั้งหมดได้',NULL),(91,'Can manage the','ສາມາດຈັດການ','text','index',0,'สามารถจัดการ',NULL),(92,'Can not be performed this request. Because they do not find the information you need or you are not allowed','ບໍ່ສາມາດດຳເນີນການຕາມທີ່ຮ້ອງຂໍໄດ້ເນື່ອງຈາກບໍ່ພົບຂໍ້ມູນທີ່ຕ້ອງການ ຫຼື ທ່ານບໍ່ມີສິດ','text','index',0,'ไม่สามารถดำเนินการตามที่ร้องขอได้ เนื่องจากไม่พบข้อมูลที่ต้องการ หรือ คุณไม่มีสิทธิ์',NULL),(93,'Can select multiple files','ສາມາດເລືອກເອກະສານໄດ້ຫຼາຍແບບ','text','index',0,'สามารถเลือกได้หลายไฟล์',NULL),(94,'Can select multiple files, total size not exceeding :size','ສາມາດເລືອກເອົາໄຟລ໌ຫຼາຍ, ຂະຫນາດທັງຫມົດບໍ່ເກີນ :size','text','index',0,'สามารถเลือกได้หลายไฟล์ ขนาดรวม ไม่เกิน :size',NULL),(95,'Can set the module','ສາມາດຕັ້ງໂມດູນໄດ້','text','index',0,'สามารถตั้งค่าโมดูลได้',NULL),(96,'Can upload file','ສາມາດອັບໂຫຼດແຟ້ມໄດ້','text','index',0,'สามารถอัปโหลดไฟล์ได้',NULL),(97,'Can upload your document file','ສາມາດອັບໂຫຼດແຟ້ມເອກະສານໄດ້','text','index',0,'สามารถอัปโหลดไฟล์เอกสารได้',NULL),(98,'Can view or download file','ສາມາດເບິ່ງຫລືດາວໂຫລດເອກະສານໄດ້','text','index',0,'สามารถดูหรือดาวน์โหลดเอกสารได้',NULL),(99,'Cancel','ຍົກເລີກ','text','index',0,'ยกเลิก',NULL),(100,'Canceled successfully','ຍົກເລີກສົບຜົນສໍາເລັດ','text','index',0,'ยกเลิกเรียบร้อย',NULL),(101,'Cannot select this option','ທາງເລືອກນີ້ບໍ່ສາມາດເລືອກໄດ້.','text','index',0,'ไม่สามารถเลือกตัวเลือกนี้ได้',NULL),(102,'Car reservation','ການຈອງລົດ','text','index',0,'ใบจองรถ',NULL),(103,'Change language','ປ່ຽນພາສາ','text','index',0,'สลับภาษา',NULL),(104,'Chauffeur','ຜູ້ຂັບລົດ','text','index',0,'พนักงานขับรถ',NULL),(105,'Clear selected','ບໍ່ເລືອກ','text','index',0,'ไม่เลือก',NULL),(106,'Click to edit','ກົດເພື່ອແກ້ໄຂ','text','index',0,'คลิกเพื่อแก้ไข',NULL),(107,'Color','ສີ','text','index',0,'สี',NULL),(108,'Comment','ຫມາຍ​ເຫດ​','text','index',0,'หมายเหตุ',NULL),(109,'Communication','ຕິດຕໍ່','text','index',0,'การติดต่อ',NULL),(110,'Contact information during leave','ຕິດຕໍ່ຂໍ້ມູນໃນເວລາພັກຜ່ອນ','text','index',0,'ข้อมูลการติดต่อระหว่างการลา',NULL),(111,'Contact name','ຕົວແທນການຈອງ','text','index',0,'ชื่อผู้จอง',NULL),(112,'Country','ປະເທດ','text','index',0,'ประเทศ',NULL),(113,'Create','ສ້າງ','text','index',0,'สร้าง',NULL),(114,'Create new account','ສ້າງບັນຊີໃໝ່','text','index',0,'สร้างบัญชีใหม่',NULL),(115,'Created','ສ້າງເມື່ອ','text','index',0,'สร้างเมื่อ',NULL),(116,'Current staff','ພະນັກງານໃນປະຈຸບັນ','text','index',0,'พนักงานปัจจุบัน',NULL),(117,'Date','ວັນທີ','text','index',0,'วันที่',NULL),(118,'Date of leave','ວັນພັກ','text','index',0,'วันที่ลา',NULL),(119,'days','ມື້','text','index',0,'วัน',NULL),(120,'Delete','ລືບ','text','index',0,'ลบ',NULL),(121,'Delete items that have been canceled by the booker','ລຶບລາຍການທີ່ຖືກຍົກເລີກໂດຍຜູ້ຈອງ','text','index',0,'ลบรายการที่ถูกยกเลิกโดยผู้จอง',NULL),(122,'Demo Mode','ຕົວຢ່າງ','text','index',0,'โหมดตัวอย่าง',NULL),(123,'Department','ຜະແນກ','text','index',0,'แผนก',NULL),(124,'Description','ຄຳອະທິບາຍ','text','index',0,'คำอธิบาย',NULL),(125,'Detail','ລາຍະລະອຽດ','text','index',0,'รายละเอียด',NULL),(126,'Details of','ລາຍລະອຽດຂອງ','text','index',0,'รายละเอียดของ',NULL),(127,'Determine the starting date of the calendar year, such as Y-10-01 (1 Oct according to the fiscal year) or Y-01-01 (1 January according to the calendar year)','ກຳ ນົດວັນທີເລີ່ມຕົ້ນຂອງປີຕາມປະຕິທິນເຊັ່ນ: Y-10-01 (1 ຕຸລາຕາມປີງົບປະມານ) ຫຼື Y-01-01 (1 ມັງກອນຕາມປີປະຕິທິນ)','text','index',0,'กำหนดวันที่เริ่มต้นของปีปฏิทินลา เช่น Y-10-01 (1 ตค. ตามปีงบประมาณ) หรือ Y-01-01 (1 มค. ตามปีปฏิทิน)',NULL),(128,'Determine the starting date of the calendar year, such as Y-10-1 (1 Oct according to the fiscal year) or Y-1-1 (1 January according to the calendar year)','ກຳ ນົດວັນທີເລີ່ມຕົ້ນຂອງປີຕາມປະຕິທິນເຊັ່ນ: Y-10-1 (1 ຕຸລາຕາມປີງົບປະມານ) ຫຼື Y-1-1 (1 ມັງກອນຕາມປີປະຕິທິນ)','text','index',0,'กำหนดวันที่เริ่มต้นของปีปฏิทินลา เช่น Y-10-1 (1 ตค. ตามปีงบประมาณ) หรือ Y-1-1 (1 มค. ตามปีปฏิทิน)',NULL),(129,'Device user','ຜູ້ໃຊ້','text','index',0,'ผู้ใช้งาน',NULL),(130,'Director','ຜູ້ອຳນວຍການ','text','index',0,'ผู้อำนวยการ',NULL),(131,'Do not want','ບໍ່ຕ້ອງການ','text','index',0,'ไม่ต้องการ',NULL),(132,'Document','ເອກະສານ','text','index',0,'เอกสาร',NULL),(133,'Document No.','ເລກທີເອກະສານ','text','index',0,'เลขที่เอกสาร',NULL),(134,'Document title','ຫົວຂໍ້ເອກະສານ','text','index',0,'หัวข้อเอกสาร',NULL),(135,'Download','ດາວໂຫຼດ','text','index',0,'ดาวน์โหลด',NULL),(136,'Download history','ປະຫວັດການດາວໂຫຼດ','text','index',0,'ประวัติการดาวน์โหลด',NULL),(137,'drag to order','ຫຼາກເພື່ອຈັດລຳດັບ','text','index',0,'ลากเพื่อจัดลำดับ',NULL),(138,'E-Document','ວຽກງານສາລະບານ','text','index',0,'งานสารบรรณ',NULL),(139,'E-Document list','ລາຍການເອກະສານ','text','index',0,'รายการเอกสาร',NULL),(140,'E-Documents','ເອກະສານ','text','index',0,'เอกสาร',NULL),(141,'E-Leave','ລະບົບລາພັກວຽກ','text','index',0,'ระบบลางาน',NULL),(142,'Edit','ແກ້ໄຂ','text','index',0,'แก้ไข',NULL),(143,'Editing your account','ແກ້ໄຂຂໍ້ມູນສ່ວນຕົວສະມາຊິກ','text','index',0,'แก้ไขข้อมูลส่วนตัว',NULL),(144,'Email','ອີເມວ','text','index',0,'อีเมล',NULL),(145,'Email address used for login or request a new password','ທີ່ຢູ່ອີເມວໃຊ້ສຳລັບການເຂົ້າລະບົບຫຼືການຂໍລະຫັດໃໝ່','text','index',0,'ที่อยู่อีเมล ใช้สำหรับการเข้าระบบหรือการขอรหัสผ่านใหม่',NULL),(146,'Email addresses for sender and do not reply such as no-reply@domain.tld','ທີ່ຢູ່ອີເມວໃຊ້ເປັນຜູ້ສົ່ງຈົດໝາຍ ສຳລັບຈົດໝາຍທີ່ບໍ່ຕ້ອງການຕອບກັບເຊັ່ນ no-reply@domain.tld','text','index',0,'ทีอยู่อีเมลใช้เป็นผู้ส่งจดหมาย สำหรับจดหมายที่ไม่ต้องการตอบกลับ เช่น no-reply@domain.tld',NULL),(147,'Email encoding','ລະຫັດພາສາຂອງຈົດໝາຍ','text','index',0,'รหัสภาษาของจดหมาย',NULL),(148,'Email settings','ຕັ້ງຄ່າອີເມວ','text','index',0,'ตั้งค่าอีเมล',NULL),(149,'Email the relevant person','ສົ່ງອີເມວຫາບຸກຄົນທີ່ກ່ຽວຂ້ອງ.','text','index',0,'ส่งอีเมลแจ้งผู้ที่เกี่ยวข้องด้วย',NULL),(150,'Emailing','ສົ່ງອີເມວ','text','index',0,'การส่งอีเมล',NULL),(151,'Enable SSL encryption for sending email','ເປີດໃຊ້ການເຂົ້າລະຫັດ SSL ສຳລັບການສົ່ງອີເມວ','text','index',0,'เปิดใช้งานการเข้ารหัส SSL สำหรับการส่งอีเมล',NULL),(152,'End date','ວັນສິ້ນສຸດ','text','index',0,'วันที่สิ้นสุด',NULL),(153,'End date must be greater than begin date','ວັນສິ້ນສຸດຕ້ອງຫຼາຍກວ່າວັນທີເລີ່ມຕົ້ນ.','text','index',0,'วันที่สิ้นสุดต้องมากกว่าวันที่เริ่มต้น',NULL),(154,'End date must be greater than or equal to the start date','ວັນທີສິ້ນສຸດຕ້ອງຈະໃຫຍ່ກວ່າຫຼືເທົ່າກັບວັນທີເລີ່ມຕົ້ນ.','text','index',0,'วันที่สิ้นสุดต้องมากกว่าหรือเท่ากับวันที่เริ่มต้น',NULL),(155,'End time','ເວລາສິ້ນສຸດ','text','index',0,'เวลาสิ้นสุด',NULL),(156,'Enter 0 if you want unlimited leave','ໃສ່ເບີ 0 ຖ້າທ່ານຕ້ອງການການພັກຜ່ອນແບບບໍ່ຈຳກັດ','text','index',0,'กรอก 0 ถ้าต้องการลาได้ไม่จำกัด',NULL),(157,'Enter the email address registered. A new password will be sent to this email address.','ເພີ່ມທີ່ຢູ່ອີເມວທີ່ລົງທະບຽນໄວ້ ລະບົບຈະສົ່ງລະຫັດຜ່ານໃໝ່ໄປຍັງທີ່ຢູ່ອີເມວນີ້','text','index',0,'กรอกที่อยู่อีเมลที่ลงทะเบียนไว้ ระบบจะส่งรหัสผ่านใหม่ไปยังที่อยู่อีเมลนี้',NULL),(158,'Enter the LINE user ID you received when adding friends. Or type userId sent to the official account to request a new user ID. This information is used for receiving private messages from the system via LINE.','ໃສ່ user ID ຂອງ LINE ທີ່ທ່ານໄດ້ຮັບໃນເວລາເພີ່ມເພື່ອນ. ຫຼືພິມ userId ທີ່ຖືກສົ່ງໄປຫາບັນຊີທາງການເພື່ອຮ້ອງຂໍ user ID ໃຫມ່. ຂໍ້ມູນນີ້ແມ່ນໃຊ້ສໍາລັບການຮັບຂໍ້ຄວາມສ່ວນຕົວຈາກລະບົບຜ່ານ LINE.','text','index',0,'กรอก user ID ของไลน์ที่ได้ตอนเพิ่มเพื่อน หรือพิมพ์คำว่า userId ส่งไปยังบัญชีทางการเพื่อขอ user ID ใหม่ ข้อมูลนี้ใช้สำหรับการรับข้อความส่วนตัวที่มาจากระบบผ่านไลน์',NULL),(159,'Enter your password again','ໃສ່ລະຫັດຜ່ານອີກຄັ້ງ','text','index',0,'ใส่รหัสผ่านอีกครั้ง',NULL),(160,'entries','ລາຍການ','text','index',0,'รายการ',NULL),(161,'Equipment','ພັສດຸ','text','index',0,'พัสดุ',NULL),(162,'Expiration date','ວັນໝົດອາຍຸ','text','index',0,'วันหมดอายุ',NULL),(163,'Fax','ແຟັກ','text','index',0,'โทรสาร',NULL),(164,'File','ແຟ້ມ','text','index',0,'ไฟล์',NULL),(165,'File name','ຊື່ແຟ້ມຂໍ້ມູນ','text','index',0,'ชื่อไฟล์',NULL),(166,'File not found','ບໍ່ພົບແຟ້ມທີ່ຕ້ອງການ','text','index',0,'ไม่พบไฟล์ที่ต้องการ',NULL),(167,'File size is less than :size','ຂະໜາດຂອງແຟ້ມບໍ່ເກີນ:size','text','index',0,'ขนาดของไฟล์ไม่เกิน :size',NULL),(168,'Find equipment by','ຄົ້ນຫາພັສດຸຈາກ','text','index',0,'ค้นหาพัสดุโดย',NULL),(169,'Fiscal year','ປີງົບປະມານ','text','index',0,'ปีงบประมาณ',NULL),(170,'for login by LINE account','ສໍາລັບການເຂົ້າສູ່ລະບົບດ້ວຍບັນຊີ LINE','text','index',0,'สำหรับการเข้าระบบโดยบัญชีไลน์',NULL),(171,'Forgot','ລືມລະຫັດຜ່ານ','text','index',0,'ลืมรหัสผ่าน',NULL),(172,'from','ຈາກ','text','index',0,'จาก',NULL),(173,'General','ທົ່ວໄປ','text','index',0,'ทั่วไป',NULL),(174,'General site settings','ຕັ້ງຄ່າພື້ນຖານຂອງເວັບໄຊ','text','index',0,'ตั้งค่าพื้นฐานของเว็บไซต์',NULL),(175,'Get a repair','ແຈ້ງຊ່ອມ','text','index',0,'แจ้งซ่อม',NULL),(176,'Get new password','ຂໍລະຫັດຜ່ານ','text','index',0,'ขอรหัสผ่าน',NULL),(177,'go to page','ໄປທີ່ໜ້າ','text','index',0,'ไปหน้าที่',NULL),(178,'Height','ສູງ','text','index',0,'สูง',NULL),(179,'History','ຕິດຕາມການສັ່ງຊ່ອມຂອງຂ້ອຍ','text','index',0,'ติดตามการสั่งซ่อมของฉัน',NULL),(180,'Home','ໜ້າຫຼັກ','text','index',0,'หน้าหลัก',NULL),(181,'How to define user authentication for mail servers. If you enable it, you must configure below correctly.','ກຳນົດວິທີການກວດສອບຜູ້ໃຊ້ສຳລັບເມນເຊິບເວີຫາກທ່ານເປີດໃຊ້ການທ່ານຕ້ອງກຳນົດຄ່າຕ່າງໆດ້ານລຸ່ມຖືກຕ້ອງ','text','index',0,'กำหนดวิธีการตรวจสอบผู้ใช้สำหรับเมล์เซิร์ฟเวอร์ หากคุณเปิดใช้งานคุณต้องกำหนดค่าต่างๆด้านล่างถูกต้อง',NULL),(182,'Identification No.','ເລກບັດປະຈຳຕົວ','text','index',0,'เลขประชาชน',NULL),(183,'Image','ຮູບພາບ','text','index',0,'รูปภาพ',NULL),(184,'Image size is in pixels','ຂະໜາດຂອງຮູບພາບເປັນພິກເຊວ','text','index',0,'ขนาดของรูปภาพเป็นพิกเซล',NULL),(185,'Import','ນຳເຂົ້າ','text','index',0,'นำเข้า',NULL),(186,'Informer','ຜູ້ແຈ້ງຊ່ອມ','text','index',0,'ผู้แจ้งซ่อม',NULL),(187,'Initial booking status','ສະຖານະການຈອງເບື້ອງຕົ້ນ','text','index',0,'สถานะการจองเริ่มต้น',NULL),(188,'Initial repair status','ສະຖານະການສ້ອມແປງເບື້ອງຕົ້ນ','text','index',0,'สถานะซ่อมเริ่มต้น',NULL),(189,'Installed modules','ໂມດູນທີ່ຕິດຕັ້ງ','text','index',0,'โมดูลที่ติดตั้งแล้ว',NULL),(190,'Invalid :name',':name ບໍ່ຖືກຕ້ອງ','text','index',0,':name ไม่ถูกต้อง',NULL),(191,'Inventory','ຄັງສິນຄ້າ','text','index',0,'คลังสินค้า',NULL),(192,'Job today','ວຽກຊ່ອມວັນນີ້','text','index',0,'งานซ่อมวันนี้',NULL),(193,'Key','ແປ້ນພີມ','text','index',0,'คีย์',NULL),(194,'Language','ພາສາ','text','index',0,'ภาษา',NULL),(195,'Last login','ເຂົ້າລະບົບລ້າສຸດ','text','index',0,'เข้าระบบล่าสุด',NULL),(196,'Leave','ລາ','text','index',0,'ลา',NULL),(197,'Leave conditions','ເງື່ອນໄຂການໃຫ້ລາ','text','index',0,'เงื่อนไขการลา',NULL),(198,'Leave empty for generate auto','ປ່ອຍຫວ່າງໄວ້ເພື່ອສ້າງອັດໂນມັດ','text','index',0,'ปล่อยว่างไว้เพื่อสร้างอัตโนมัติ',NULL),(199,'Leave history','ປະຫວັດສາດການພັກ','text','index',0,'ประวัติการลา',NULL),(200,'Leave type','ປະເພດການພັກວຽກ','text','index',0,'ประเภทการลา',NULL),(201,'Limit access to only one account per member. Members who have logged in before will be forced to log out.','ຈໍາກັດການເຂົ້າເຖິງບັນຊີຫນຶ່ງ ສະມາຊິກທີ່ເຂົ້າສູ່ລະບົບກ່ອນຈະຖືກບັງຄັບໃຫ້ອອກຈາກລະບົບ.','text','index',0,'จำกัดการเข้าระบบต่อหนึ่งบัญชี สมาชิกที่เข้าระบบอยู่ก่อนหน้าจะถูกบังคับให้ออกจากระบบ',NULL),(202,'LINE group account','ບັນຊີກຸ່ມ LINE','text','index',0,'บัญชีไลน์กลุ่ม',NULL),(203,'LINE group name','ຊື່ກຸ່ມ LINE','text','index',0,'ชื่อกลุ่ม LINE',NULL),(204,'LINE official account (with @ prefix, e.g. @xxxx)','ບັນຊີທາງການຂອງ LINE (ມີ @ ຄໍານໍາຫນ້າ, ເຊັ່ນ: @xxxx)','text','index',0,'บัญชีทางการของไลน์ (มี @ นำหน้า เช่น @xxxx)',NULL),(205,'LINE settings','ຕັ້ງ​ຄ່າ LINE','text','index',0,'ตั้งค่าไลน์',NULL),(206,'List of','ລາຍການ','text','index',0,'รายการ',NULL),(207,'List of IPs that allow connection 1 line per 1 IP','ລາຍຊື່ IP ທີ່ອະນຸຍາດໃຫ້ເຊື່ອມຕໍ່ 1 ເສັ້ນຕໍ່ 1 IP','text','index',0,'รายการไอพีแอดเดรสทั้งหมดที่อนุญาต 1 บรรทัดต่อ 1 ไอพี',NULL),(208,'Local time','ເວລາທ້ອງຖິ່ນ','text','index',0,'เวลาท้องถิ่น',NULL),(209,'Login','ເຂົ້າສູ່ລະບົບ','text','index',0,'เข้าสู่ระบบ',NULL),(210,'Login by','ເຂົ້າສູ່ລະບົບໂດຍ','text','index',0,'เข้าระบบโดย',NULL),(211,'Login information','ຂໍ້ມູນການເຂົ້າລະບົບ','text','index',0,'ข้อมูลการเข้าระบบ',NULL),(212,'Login per one account','ເຂົ້າສູ່ລະບົບຕໍ່ຫນຶ່ງບັນຊີ','text','index',0,'การเข้าระบบต่อหนึ่งบัญชี',NULL),(213,'Login with an existing account','ເຂົ້າລະບົບດ້ວຍບັນຊີສະມາຊິກທີ່ມີຢູ່ແລ້ວ','text','index',0,'เข้าระบบด้วยบัญชีสมาชิกที่มีอยู่แล้ว',NULL),(214,'Logo','ໂລໂກ','text','index',0,'โลโก',NULL),(215,'Logout','ອອກຈາກລະບົບ','text','index',0,'ออกจากระบบ',NULL),(216,'Logout successful','ອອກຈາກລະບົບຮຽບຮ້ອຍ','text','index',0,'ออกจากระบบเรียบร้อย',NULL),(217,'Mail program','ໂປຮແກຮມສົ່ງອີເມວ','text','index',0,'โปรแกรมส่งอีเมล',NULL),(218,'Mail server','ເຊີບເວີອີເມວ','text','index',0,'เซิร์ฟเวอร์อีเมล',NULL),(219,'Mail server port number (default is 25, for GMail used 465, 587 for DirectAdmin).','ໝາຍເລກພອດຂອງເມວເຊີບເວີ(ຄ່າປົກກະຕິຄື 25, ສຳລັບ gmail ໃຊ້ 465, 587 ສຳລັບ DirectAdmin)','text','index',0,'หมายเลขพอร์ตของเมล์เซิร์ฟเวอร์ (ค่าปกติคือ 25, สำหรับ gmail ใช้ 465, 587 สำหรับ DirectAdmin)',NULL),(220,'Mail server settings','ຄ່າກຳນົດຂອງເມວເຊີບເວີ','text','index',0,'ค่ากำหนดของเมล์เซิร์ฟเวอร์',NULL),(221,'Manage languages','ຈັດການພາສາ','text','index',0,'จัดการภาษา',NULL),(222,'Meeting room are not available at select time','ຫ້ອງປະຊຸມບໍ່ມີເວລາທີ່ເລືອກ.','text','index',0,'ห้องประชุมไม่สามารถใช้งานได้ในเวลาที่เลือก',NULL),(223,'Member list','ລາຍຊື່ສະມາຊິກ','text','index',0,'รายชื่อสมาชิก',NULL),(224,'Member status','ສະຖານະສະມາຊິກ','text','index',0,'สถานะสมาชิก',NULL),(225,'Module','ໂມດູນ','text','index',0,'โมดูล',NULL),(226,'Module settings','ຕັ້ງຄ່າໂມດູນ','text','index',0,'ตั้งค่าโมดูล',NULL),(227,'My Booking','ການຈອງຂອງຂ້ອຍ','text','index',0,'รายการจองของฉัน',NULL),(228,'My device','ອຸປະກອນຂອງຂ້ອຍ','text','index',0,'อุปกรณ์ของฉัน',NULL),(229,'New','ໃຫມ່','text','index',0,'ใหม่',NULL),(230,'New document','ເອກະສານໃໝ່','text','index',0,'เอกสารใหม่',NULL),(231,'No need to fill in English text. If the English text matches the Key','ບໍ່ຈຳເປັນເພີ່ມຂໍ້ຄວາມໃນພາສາອັງກິດຫາກຂໍ້ຄວາມໃນພາສານອັງກົງກັບແປ້ນພີມ','text','index',0,'ไม่จำเป็นต้องกรอกข้อความในภาษาอังกฤษ หากข้อความในภาษาอังกฤษตรงกับคีย์',NULL),(232,'not a registered user','ບໍ່ພົບສະມາຊິກນີ້ລົງທະບຽນໄວ້','text','index',0,'ไม่พบสมาชิกนี้ลงทะเบียนไว้',NULL),(233,'Not specified (anyone)','ບໍ່ໄດ້ກໍານົດ (ໃຜ)','text','index',0,'ไม่ระบุ (ใครก็ได้)',NULL),(234,'Note or additional notes','ຄໍາອະທິບາຍຫລືຫມາຍເຫດເພີ່ມເຕີມ','text','index',0,'คำอธิบายหรือหมายเหตุเพิ่มเติม',NULL),(235,'Notification','ຄໍາປະກາດ','text','index',0,'การแจ้งเตือน',NULL),(236,'Notify relevant parties when booking details are modified by customers','ແຈ້ງໃຫ້ພາກສ່ວນທີ່ກ່ຽວຂ້ອງຊາບໃນເວລາທີ່ລາຍລະອຽດການຈອງຖືກດັດແກ້ໂດຍລູກຄ້າ','text','index',0,'แจ้งเตือนไปยังผู้ที่เกี่ยวข้องเมื่อมีการแก้ไขรายละเอียดการจองโดยผู้จอง',NULL),(237,'Number of leave days','ຈຳນວນວັນຢຸດ','text','index',0,'จำนวนวันลา',NULL),(238,'Number of seats','ຈໍານວນບ່ອນນັ່ງ','text','index',0,'จำนวนที่นั่ง',NULL),(239,'Number of travelers','ຈໍານວນຜູ້ຍ່າງທາງ','text','index',0,'จำนวนผู้เดินทาง',NULL),(240,'Operator','ຜູ້ປະຕິບັດວຽກ','text','index',0,'ผู้ปฏิบัติงาน',NULL),(241,'Order','ລຳດັບ','text','index',0,'ลำดับ',NULL),(242,'Order of persons in positions','ລຳດັບບຸກຄົນໃນຕຳແໜ່ງ','text','index',0,'ลำดับบุคคลในตำแหน่ง',NULL),(243,'Other','ອື່ນໆ','text','index',0,'อื่นๆ',NULL),(244,'Password','ລະຫັດຜ່ານ','text','index',0,'รหัสผ่าน',NULL),(245,'Password of the mail server. (To change the fill.)','ລະຫັດຜ່ານຂອງເມວເຊີບເວີ (ຕ້ອງການປ່ຽນ ໃຫ້ເພີ່ມ)','text','index',0,'รหัสผ่านของเมล์เซิร์ฟเวอร์ (ต้องการเปลี่ยน ให้กรอก)',NULL),(246,'Passwords must be at least four characters','ລະຫັດຜ່ານຕ້ອງບໍ່ຕ່ຳກວ່າ 4 ຕົວອັກສອນ','text','index',0,'รหัสผ่านต้องไม่น้อยกว่า 4 ตัวอักษร',NULL),(247,'Past employees','ພະນັກງານທີ່ຜ່ານມາ','text','index',0,'พนักงานในอดีต',NULL),(248,'Permission','ສິດໃນການໃຊ້ວຽກ','text','index',0,'สิทธิ์การใช้งาน',NULL),(249,'Personnel','ພະນັກງານ','text','index',0,'บุคลากร',NULL),(250,'Personnel list','ລາຍຊື່ພະນັກງານ','text','index',0,'รายชื่อบุคลากร',NULL),(251,'persons','ຄົນ','text','index',0,'คน',NULL),(252,'Phone','ເບີໂທລະສັບ','text','index',0,'โทรศัพท์',NULL),(253,'Please fill in','ກະລຸນາຕື່ມຂໍ້ມູນໃສ່','text','index',0,'กรุณากรอก',NULL),(254,'Please log in','ກະລຸນາເຂົ້າສູ່ລະບົບ','text','index',0,'กรุณาเข้าระบบ',NULL),(255,'Please log in to continue','ກະລຸນາເຂົ້າລະບົບ ກ່ອນທີ່ຈະດຳເນີນການ','text','index',0,'กรุณาเข้าระบบ ก่อนดำเนินการต่อ',NULL),(256,'Please login','ກະລຸນາເຂົ້າລະບົບ','text','index',0,'กรุณาเข้าระบบ',NULL),(257,'Please select','ກະລຸນາເລືອກ','text','index',0,'กรุณาเลือก',NULL),(258,'Please select :name at least one item','ກະລຸນາເລືອກ :name ຢ່າງໜ້ອຍ 1 ລາຍການ','text','index',0,'กรุณาเลือก :name อย่างน้อย 1 รายการ',NULL),(259,'Please select from the search results','ກະລຸນາເລືອກຈາກຜົນການຊອກຫາ','text','index',0,'กรุณาเลือกจากผลลัพท์การค้นหา',NULL),(260,'Please specify the recipient of the document. Or the selected department may not have a recipient in the department.','ກະລຸນາລະບຸຜູ້ຮັບເອກະສານ. ຫຼືພະແນກທີ່ຖືກຄັດເລືອກອາດຈະບໍ່ມີຜູ້ຮັບຢູ່ໃນພະແນກ.','text','index',0,'กรุณาระบุผู้รับเอกสาร หรือแผนกที่เลือกอาจไม่มีผู้รับอยู่ในแผนก',NULL),(261,'Port','ພອດ','text','index',0,'พอร์ต',NULL),(262,'Position','ຕໍາແຫນ່ງ','text','index',0,'ตำแหน่ง',NULL),(263,'Prename','ຄຳນຳໜ້າຊື່','text','index',0,'คำนำหน้าชื่อ',NULL),(264,'Print','ພິມ','text','index',0,'พิมพ์',NULL),(265,'problems and repairs details','ລາຍະລະອຽດການຊ່ອມ/ບັນຫາ','text','index',0,'รายละเอียดการซ่อม/ปัญหา',NULL),(266,'Profile','ຂໍ້ມູນສ່ວນຕົວ','text','index',0,'ข้อมูลส่วนตัว',NULL),(267,'Province','ແຂວງ','text','index',0,'จังหวัด',NULL),(268,'Reason','ເຫດ​ຜົນ','text','index',0,'เหตุผล',NULL),(269,'Reasons for leave','ເຫດຜົນຂອງການພັກ','text','index',0,'เหตุผลการลา',NULL),(270,'Received','ຮັບແລ້ວ','text','index',0,'รับแล้ว',NULL),(271,'Received date','ວັນທີ່ຮັບ','text','index',0,'วันที่รับ',NULL),(272,'Received Document','ເອກະສານຂາເຂົ້າ','text','index',0,'เอกสารขาเข้า',NULL),(273,'Recipient','ຜູ້ຮັບເອກະສານ','text','index',0,'ผู้รับเอกสาร',NULL),(274,'Recipients in the selected department can download (Can select multiple departments)','ຜູ້ຮັບຢູ່ໃນພະແນກການຄັດເລືອກສາມາດດາວໂຫຼດເອກະສານ. (ເຈົ້າສາມາດເລືອກຫຼາຍພະແນກ)','text','index',0,'ผู้รับในแผนกที่เลือกสามารถดาวน์โหลดเอกสารได้ (สามารถเลือกได้หลายแผนก)',NULL),(275,'Recipients in the selected department can download the content. (Can select multiple departments)','ຜູ້ຮັບໃນພະແນກທີ່ເລືອກໄດ້ສາມາດດາວໂຫລດເນື້ອຫາໄດ້. (ສາມາດເລືອກຫຼາຍຫ້ອງການ)','text','index',0,'ผู้รับในแผนกที่เลือกสามารถดาวน์โหลดเกสารได้ (สามารถเลือกได้หลายแผนก)',NULL),(276,'Register','ສະໝັກສະມາຊິກ','text','index',0,'สมัครสมาชิก',NULL),(277,'Register successfully Please log in','ລົງທະບຽນຢ່າງສຳເລັດຜົນກະລຸນາເຂົ້າສູ່ລະບົບ','text','index',0,'ลงทะเบียนเรียบร้อยแล้วกรุณาเข้าสู่ระบบ',NULL),(278,'Register successfully, We have sent complete registration information to :email','ລົງທະບຽນສຳເລັດແລ້ວ ເຮົາໄດ້ສົ່ງຂໍ້ມູນການລົງທະບຽນໄປທີ່ :email','text','index',0,'ลงทะเบียนสมาชิกใหม่เรียบร้อย เราได้ส่งข้อมูลการลงทะเบียนไปยัง :email',NULL),(279,'Registration number of the document','ເລກທະບຽນຂອງເອກະສານ','text','index',0,'เลขทะเบียนของเอกสาร',NULL),(280,'Remove','ລຶບ','text','index',0,'ลบ',NULL),(281,'Repair','ວຽກຊ່ອມ','text','index',0,'งานซ่อม',NULL),(282,'Repair job description','ລາຍະລະອຽດການຊ່ອມ','text','index',0,'รายละเอียดการซ่อม',NULL),(283,'Repair jobs','ວຽກຊ່ອມ','text','index',0,'งานซ่อม',NULL),(284,'Repair list','ລາຍະການຊ່ອມ','text','index',0,'รายการซ่อม',NULL),(285,'Repair note','ຫມາຍເຫດການຊ່ອມ','text','index',0,'หมายเหตุการซ่อม',NULL),(286,'Repair process','ສະຖານະການສ້ອມແປງໃນປະຈຸບັນ','text','index',0,'สถานะการซ่อมปัจจุบัน',NULL),(287,'Repair receipt','ແຈ້ງການຊ່ອມແຊມ','text','index',0,'ใบแจ้งซ่อม',NULL),(288,'Repair status','ສະຖານະການຊ່ອມ','text','index',0,'สถานะการซ่อม',NULL),(289,'Repair status successful','ການສ້ອມແປງສະຖານະພາບສຳເລັດແລ້ວ','text','index',0,'สถานะการซ่อมสำเร็จ',NULL),(290,'Repair system','ລະບົບແຈ້ງຊ່ອມ','text','index',0,'ระบบแจ้งซ่อม',NULL),(291,'Repairman','ຊ່າງຊ່ອມ','text','index',0,'ช่างซ่อม',NULL),(292,'Repassword','ຢືນຢັນລະຫັດຜ່ານ','text','index',0,'ยืนยันรหัสผ่าน',NULL),(293,'Report','ບົດລາຍງານ','text','index',0,'รายงาน',NULL),(294,'Request for leave','ຮ້ອງຂໍລາພັກ','text','index',0,'คำขออนุมัติลา',NULL),(295,'Requested department','ພະແນກຮ້ອງຂໍ','text','index',0,'แผนกที่ขอใช้',NULL),(296,'resized automatically','ປັບຂະໜາດອັດຕະໂນມັດ','text','index',0,'ปรับขนาดอัตโนมัติ',NULL),(297,'Room','ຫ້ອງປະຊຸມ','text','index',0,'ห้องประชุม',NULL),(298,'Room name','ຊື່ຫ້ອງ','text','index',0,'ชื่อห้อง',NULL),(299,'Room No.','ຫ້ອງຈໍານວນຫ້ອງ','text','index',0,'หมายเลขห้อง',NULL),(300,'Save','ບັນທຶກ','text','index',0,'บันทึก',NULL),(301,'Save and email completed','ບັນທຶກແລະສົ່ງອີເມວຮຽນຮ້ອຍ','text','index',0,'บันทึกและส่งอีเมลเรียบร้อย',NULL),(302,'Saved successfully','ບັນທຶກຮຽບຮ້ອຍ','text','index',0,'บันทึกเรียบร้อย',NULL),(303,'scroll to top','ເລື່ອນຂື້ນດ້ານເທິງ','text','index',0,'เลื่อนขึ้นด้านบน',NULL),(304,'Search','ຄົ້ນຫາ','text','index',0,'ค้นหา',NULL),(305,'Search <strong>:search</strong> found :count entries, displayed :start to :end, page :page of :total pages','ຄົ້ນຫາ <strong>:search</strong> ພົບ :count ລາຍການ ສະແດງລາຍການທີ່:start - :end ໜ້າທີ່:page ຈາກທັງໝົດ :total ໜ້າ','text','index',0,'ค้นหา <strong>:search</strong> พบ :count รายการ แสดงรายการที่ :start - :end หน้าที่ :page จากทั้งหมด :total หน้า',NULL),(306,'select all','ເລືອກທັງໝົດ','text','index',0,'เลือกทั้งหมด',NULL),(307,'Select the member name you want to send to Can choose many people','ເລືອກຊື່ສະມາຊິກທີ່ທ່ານຕ້ອງການສົ່ງໄປ ສາມາດເລືອກປະຊາຊົນຈໍານວນຫຼາຍ','text','index',0,'เลือกชื่อสมาชิกที่ต้องการส่งถึง สามารถเลือกได้หลายคน',NULL),(308,'Self drive','ຂັບເອງ','text','index',0,'ขับเอง',NULL),(309,'Send a notification message to the person concerned','ສົ່ງຂໍ້ຄວາມແຈ້ງເຕືອນໃຫ້ກັບບຸກຄົນທີ່ກ່ຽວຂ້ອງ','text','index',0,'ส่งข้อความแจ้งเตือนไปยังผู้ที่เกี่ยวข้องด้วย',NULL),(310,'Send a welcome email to new members','ສົ່ງອີເມວຕ້ອນຮັບກັບສະມາຊິກໃຫມ່','text','index',0,'ส่งข้อความต้อนรับสมาชิกใหม่',NULL),(311,'Send Document','ສົ່ງເອກະສານ','text','index',0,'ส่งเอกสาร',NULL),(312,'send message to user When a user adds LINE&#039;s official account as a friend','ສົ່ງຂໍ້ຄວາມຫາຜູ້ໃຊ້ ເມື່ອຜູ້ໃຊ້ເພີ່ມບັນຊີທາງການຂອງ LINE ເປັນໝູ່','text','index',0,'ส่งข้อความไปยังผู้ใช้ เมื่อผู้ใช้เพิ่มบัญชีทางการของไลน์เป็นเพื่อน',NULL),(313,'Send notification messages When making a transaction','ສົ່ງຂໍ້ຄວາມແຈ້ງເຕືອນເມື່ອມີການເຮັດທຸລະກຳ','text','index',0,'ส่งข้อความแจ้งเตือนเมื่อมีการทำรายการ',NULL),(314,'Send notification to LINE group when making a transaction','ສົ່ງການແຈ້ງເຕືອນໄປຍັງກຸ່ມໄລເມື່ອມີການເຮັດລາຍະການ','text','index',0,'ส่งการแจ้งเตือนไปยังกลุ่มไลน์เมื่อมีการทำรายการ',NULL),(315,'Sender','ຜູ້ສົ່ງ','text','index',0,'ผู้ส่ง',NULL),(316,'Sent Document','ເອກະສານຂາອອກ','text','index',0,'เอกสารขาออก',NULL),(317,'Serial/Registration No.','ຫມາຍເລກເຄື່ອງ/ເລກທະບຽນ','text','index',0,'หมายเลขเครื่อง/เลขทะเบียน',NULL),(318,'Server time','ເວລາຂອງເຊີບເວີ','text','index',0,'เวลาเซิร์ฟเวอร์',NULL),(319,'Set the application for send an email','ເລືອກໂປຮແກຮມທີ່ໃຊ້ໃນການສົ່ງອີເມວ','text','index',0,'เลือกโปรแกรมที่ใช้ในการส่งอีเมล',NULL),(320,'Setting up the email system','ການຕັ້ງຄ່າກ່ຽວກັບລະບົບອີເມວ','text','index',0,'การตั้งค่าเกี่ยวกับระบบอีเมล',NULL),(321,'Settings','ຕັ້ງຄ່າ','text','index',0,'ตั้งค่า',NULL),(322,'Settings the conditions for member login','ຕັ້ງເງື່ອນໄຂການກວດສອບການເຂົ້າລະບົບ','text','index',0,'ตั้งค่าเงื่อนไขในการตรวจสอบการเข้าสู่ระบบ',NULL),(323,'Settings the timing of the server to match the local time','ຕັ້ງຄ່າເຂດເວລາຂອງເຊີບເວີ ໃຫ້ກົງກັບເວລາທ້ອງຖີ່ນ','text','index',0,'ตั้งค่าเขตเวลาของเซิร์ฟเวอร์ ให้ตรงกันกับเวลาท้องถิ่น',NULL),(324,'Sex','ເພດ','text','index',0,'เพศ',NULL),(325,'Short description about your website','ຂໍ້ຄວາມສັ້ນໆ ອະທິບາຍວ່າເປັນເວັບໄຊກ່ຽວກັບຫຍັງ','text','index',0,'ข้อความสั้นๆอธิบายว่าเป็นเว็บไซต์เกี่ยวกับอะไร',NULL),(326,'Show','ສະແດງ','text','index',0,'แสดง',NULL),(327,'Show web title with logo','ສະແດງຊື່ເວັບແລະໂລໂກ້','text','index',0,'แสดงชื่อเว็บและโลโก',NULL),(328,'Site Name','ຊື່ຂອງເວັບໄຊ','text','index',0,'ชื่อของเว็บไซต์',NULL),(329,'Site settings','ຕັ້ງຄ່າເວັບໄຊ','text','index',0,'ตั้งค่าเว็บไซต์',NULL),(330,'Size of','ຂະໜາດຂອງ','text','index',0,'ขนาดของ',NULL),(331,'Size of the file upload','ຂະໜາດຂອງແຟ້ມອັບໂຫຼດ','text','index',0,'ขนาดของไฟล์อัปโหลด',NULL),(332,'skip to content','ຂ້າມໄປຍັງເນື້ອຫາ','text','index',0,'ข้ามไปยังเนื้อหา',NULL),(333,'Sorry','ຂໍໂທດ','text','index',0,'ขออภัย',NULL),(334,'Sorry, Item not found It&#39;s may be deleted','ຂໍໂທດ ບໍ່ພົບລາຍການທີ່ເລືອກ ລາຍການນີ້ອາດຖືກລຶບໄປແລ້ວ','text','index',0,'ขออภัย ไม่พบรายการที่เลือก รายการนี้อาจถูกลบไปแล้ว',NULL),(335,'Specify the file extension that allows uploading. English lowercase letters and numbers 2-4 characters to separate each type with a comma (,) and without spaces. eg zip,rar,doc,docx','ລະບົບນາມສະກຸນຂອງແຟ້ມທີ່ສາມາດອັບໂຫຼດໄດ້ ພາສາອັງກິດຕົວພີມນ້ອຍແລະຕົວເລກສອງເຖິງສີ່ຕົວອັກສອນ ຄັ່ນແຕ່ລະລາຍການດ້ວຍເຄື່ອງໝາຍຈຸດ(,)','text','index',0,'ระบุนามสกุลของไฟล์ที่สามารถอัปโหลดได้ ภาษาอังกฤษตัวพิมพ์เล็กและตัวเลขสองถึงสี่ตัวอักษร คั่นแต่ละรายการด้วยลูกน้ำ (,)',NULL),(336,'Specify the format of the document number as %04d means adding zeros until the four-digit number on the front, such as 0001.','ກຳນົດຮູບແບບເລກທີຂອງເອກະສານເຊັ່ນ %04d ໝາຍເຖິງຕື່ມເລກສູນດ້ານໜ້າຈົນຄົບສີ່ຫຼັກເຊັ່ນ 0001','text','index',0,'กำหนดรูปแบบเลขที่ของเอกสาร เช่น %04d หมายถึง เติมเลขศูนย์ด้านหน้าจนครบสี่หลัก เช่น 0001',NULL),(337,'Specify the language code of the email, as utf-8','ລະບຸລະຫັດພາສາຂອງອີເມວທີ່ສົ່ງເຊັ່ນ utf-8','text','index',0,'ระบุรหัสภาษาของอีเมลที่ส่ง เช่น utf-8',NULL),(338,'Start date','ວັນທີເລີ່ມຕົ້ນ','text','index',0,'วันที่เริ่มต้น',NULL),(339,'Statistics for leave','ສະຖິຕິການລາພັກ','text','index',0,'สถิติการลา',NULL),(340,'Status','ສະຖານະ','text','index',0,'สถานะ',NULL),(341,'Status for general members','ສະຖານະສຳລັບສະມາຊິກທົ່ວໄປ','text','index',0,'สถานะสำหรับสมาชิกทั่วไป',NULL),(342,'Status of members who are drivers','ສະຖານະພາບຂອງສະມາຊິກຜູ້ຂັບລົດ','text','index',0,'สถานะของสมาชิกที่เป็นพนักงานขับรถ',NULL),(343,'Status of members who are personnel','ສະຖານະພາບຂອງສະມາຊິກຜູ້ທີ່ມີພະນັກງານ','text','index',0,'สถานะของสมาชิกที่เป็นบุคลากร',NULL),(344,'Stock','ຫຸ້ນ','text','index',0,'สต๊อก',NULL),(345,'Style','ຮູບແບບ','text','index',0,'รูปแบบ',NULL),(346,'Successfully deleted','ລຶບສຳເລັດແລ້ວ','text','index',0,'ลบเรียบร้อย',NULL),(347,'Successfully imported :count items','ນຳເຂົ້າສຳເລັດ:count ລາຍການ','text','index',0,'นำเข้าสำเร็จ :count รายการ',NULL),(348,'The file size larger than the limit','ຂະຫນາດຂອງໄຟໃຫຍ່ກວ່າທີ່ກໍາຫນົດ','text','index',0,'ขนาดของไฟล์ใหญ่กว่าที่กำหนด',NULL),(349,'The list of members in the selected status will be displayed in the personnel module','ບັນຊີລາຍຊື່ຂອງສະມາຊິກໃນສະຖານະທີ່ເລືອກຈະຖືກສະແດງໃນໂມດູນບຸກຄົນ.','text','index',0,'รายชื่อสมาชิกในสถานะที่เลือกจะถูกแสดงในโมดูลบุคลากร',NULL),(350,'The members status of the site','ສະຖານະຂອງສະມາຂິກຂອງເວັບໄຊ','text','index',0,'สถานะของสมาชิกของเว็บไซต์',NULL),(351,'The name of the document when downloaded. If empty, use the name of the uploaded file. (Thai language available)','ຊື່ຂອງເອກະສານເມື່ອດາວໂຫຼດ ຖ້າບໍ່ລະບຸຊ່ອງນີ້ ຈະໃຊ້ຊື່ຂອງແຟ້ມທີ່ອັບໂຫຼດ(ສາມາດໃຊ້ພາສາລາວໄດ້)','text','index',0,'ชื่อของเอกสารเมื่อดาวน์โหลด ถ้าไม่ระบุช่องนี้ จะใช้ชื่อของไฟล์ที่อัปโหลด (สามารถใช้ภาษาไทยได้)',NULL),(352,'The name of the mail server as localhost or smtp.gmail.com (To change the settings of your email is the default. To remove this box entirely.)','ຊື່ຂອງເມວເຊີບເວີເຊັ່ນ localhost หรือ chitdpt@gmail.com (ຕ້ອງປ່ຽນຄ່າກຳນົດຂອງອີເມວທັງໝົດເປັນຄ່າເລີ່ມຕົ້ນ ໃຫ້ລຶບຂໍ້ຄວາມໃນຊ່ອງນີ້ອອກທັງໝົດ)','text','index',0,'ชื่อของเมล์เซิร์ฟเวอร์ เช่น localhost หรือ smtp.gmail.com (ต้องการเปลี่ยนค่ากำหนดของอีเมลทั้งหมดเป็นค่าเริ่มต้น ให้ลบข้อความในช่องนี้ออกทั้งหมด)',NULL),(353,'The size of the files can be uploaded. (Should not exceed the value of the Server :upload_max_filesize.)','ຂະໜາດຂອງແຟ້ມທີ່ສາມາດອັບໂຫຼດໄດ້(ບໍ່ຄວນເກີນຄ່າກຳນົດຂອງເຊີບເວີ :upload_max_filesize)','text','index',0,'ขนาดของไฟล์ที่สามารถอัปโหลดได้ (ไม่ควรเกินค่ากำหนดของเซิร์ฟเวอร์ :upload_max_filesize)',NULL),(354,'The type of file is invalid','ຊະນິດຂອງແຟ້ມບໍ່ຮອງຮັບ','text','index',0,'ชนิดของไฟล์ไม่รองรับ',NULL),(355,'There are new documents sent to you','ມີເອກະສານໃໝ່ສົ່ງເຖິ່ງທ່ານ','text','index',0,'มีเอกสารใหม่ส่งถึงคุณ',NULL),(356,'This :name already exist','ມີ :name ນີ້ຢູ່ກ່ອນແລ້ວ','text','index',0,'มี :name นี้อยู่ก่อนแล้ว',NULL),(357,'Time','ເວລາ','text','index',0,'เวลา',NULL),(358,'Time zone','ເຂດເວລາ','text','index',0,'เขตเวลา',NULL),(359,'times','ຄັ້ງ','text','index',0,'ครั้ง',NULL),(360,'to','ເຖິງ','text','index',0,'ถึง',NULL),(361,'To change your password, enter your password to match the two inputs','ຖ້າຕ້ອງການປ່ຽນລະຫັດຜ່ານກະລຸນາເພີ່ມລະຫັດຜ່ານສອງຊ່ອງໃຫ້ກົງກັນ','text','index',0,'ถ้าต้องการเปลี่ยนรหัสผ่าน กรุณากรอกรหัสผ่านสองช่องให้ตรงกัน',NULL),(362,'Topic','ຫົວຂໍ້','text','index',0,'หัวข้อ',NULL),(363,'Total','ລວມ','text','index',0,'รวม',NULL),(364,'Transaction date','ວັນທີ່ເຮັດລາຍະການ','text','index',0,'วันที่ทำรายการ',NULL),(365,'Transaction history','ປະວັດການເຮັດລາຍະການ','text','index',0,'ประวัติการทำรายการ',NULL),(366,'Type','ປະເພດ','text','index',0,'ประเภท',NULL),(367,'Type of file uploads','ຊະນິດຂອງແຟ້ມອັບໂຫຼດ','text','index',0,'ชนิดของไฟล์อัปโหลด',NULL),(368,'Unable to complete the transaction','ບໍ່ສາມາດເຮັດລາຍການນີ້ໄດ້','text','index',0,'ไม่สามารถทำรายการนี้ได้',NULL),(369,'Unit','ໜ່ວຍ','text','index',0,'หน่วย',NULL),(370,'Unlimited','ບໍ່ຈຳກັດ','text','index',0,'ไม่จำกัด',NULL),(371,'Update repair status','ປັບປຸງສະຖານະພາບ','text','index',0,'ปรับปรุงสถานะการซ่อม',NULL),(372,'Upload','ອັບໂຫຼດ','text','index',0,'อัปโหลด',NULL),(373,'Upload :type files no larger than :size','ອັບໂຫຼດແຟ້ມຂໍ້ມູນ :type ຂະໜາດບໍ່ເກີນ :size','text','index',0,'อัปโหลดไฟล์ :type ขนาดไม่เกิน :size',NULL),(374,'Uploaded images are resized automatically','ຮູບພາບທີ່ອັບໂຫຼດຈະຖືກປັບຂະໜາດໂດຍອັດຕະໂນມັດ','text','index',0,'รูปภาพที่อัปโหลดจะถูกปรับขนาดโดยอัตโนมัติ',NULL),(375,'Urgency','ຄວາມໄວດ່ວນ','text','index',0,'ความเร่งด่วน',NULL),(376,'User','ສະມາຊິກ','text','index',0,'สมาชิก',NULL),(377,'Username','ຊື່ຜູ້ໃຊ້','text','index',0,'ชื่อผู้ใช้',NULL),(378,'Username for the mail server. (To change, enter a new value.)','ຊື່ຜູ້ໃຊ້ຂອງເມວເຊີບເວີ (ຕ້ອງການປ່ຽນ ໃຫ້ເພີ່ມ)','text','index',0,'ชื่อผู้ใช้ของเมล์เซิร์ฟเวอร์ (ต้องการเปลี่ยน ให้กรอก)',NULL),(379,'Users','ສະມາຊິກ','text','index',0,'สมาชิก',NULL),(380,'Vehicle','ຍານພາຫະນະ','text','index',0,'ยานพาหนะ',NULL),(381,'Vehicle No.','ເລກທະບຽນ','text','index',0,'เลขทะเบียน',NULL),(382,'Vehicle usage details','ລາຍະລະອຽດການໃຊ້','text','index',0,'รายละเอียดการขอใช้',NULL),(383,'Vehicles cannot be used at the selected time','ບໍ່ສາມາດໃຊ້ຍານພາຫະນະໄດ້ໃນເວລາທີ່ເລືອກ','text','index',0,'ยานพาหนะไม่สามารถใช้งานได้ในเวลาที่เลือก',NULL),(384,'Vice-Director','ຮອງພະແນກ ປທສ ແຂວງສະຫວັນນະເຂດ','text','index',0,'รองผู้อำนวยการ',NULL),(385,'Website title','ຊື່ເວັບ','text','index',0,'ชื่อเว็บ',NULL),(386,'Welcome','ສະບາຍດີ','text','index',0,'สวัสดี',NULL),(387,'Welcome %s, login complete','ສະບາຍດີທ່ານ %s ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ລະບົບ','text','index',0,'สวัสดี คุณ %s ยินดีต้อนรับเข้าสู่ระบบ',NULL),(388,'Welcome new members','ຍິນດີຕ້ອນຮັບສະມາຊິກໃໝ່','text','index',0,'ยินดีต้อนรับสมาชิกใหม่',NULL),(389,'When download','ເມື່ອກົດດາວໂຫຼດ','text','index',0,'เมื่อคลิกดาวน์โหลด',NULL),(390,'When enabled Social accounts can be logged in as an administrator. (Some abilities will not be available)','ເມື່ອເປີດໃຊ້ງານ ບັນຊີສັງຄົມສາມາດເຂົ້າສູ່ລະບົບເປັນຜູ້ບໍລິຫານ. (ຄວາມສາມາດບາງຢ່າງຈະບໍ່ມີ)','text','index',0,'เมื่อเปิดใช้งาน บัญชีโซเชียลจะสามารถเข้าระบบเป็นผู้ดูแลได้ (ความสามารถบางอย่างจะไม่สามารถใช้งานได้)',NULL),(391,'Width','ກວ້າງ','text','index',0,'กว้าง',NULL),(392,'With selected','ເຮັດກັບທີ່ເລືອກ','text','index',0,'ทำกับที่เลือก',NULL),(393,'You can enter your LINE user ID below on your personal information page. to link your account to this official account','ທ່ານສາມາດໃສ່ LINE user ID ຂອງທ່ານຂ້າງລຸ່ມນີ້ຢູ່ໃນຫນ້າຂໍ້ມູນສ່ວນຕົວຂອງທ່ານ. ເພື່ອເຊື່ອມຕໍ່ບັນຊີຂອງທ່ານກັບບັນຊີທາງການນີ້','text','index',0,'คุณสามารถกรอก LINE user ID ด้านล่างในหน้าข้อมูลส่วนตัวของคุณ เพื่อผูกบัญชีของคุณเข้ากับบัญชีทางการนี้ได้',NULL),(394,'You want to','ທ່ານຕ້ອງການ','text','index',0,'คุณต้องการ',NULL),(395,'Your message was sent successfully','ສົ່ງຂໍ້ຄວາມໄປຍັງຜູ້ຮັບຮຽບຮ້ອຍແລ້ວ','text','index',0,'ส่งข้อความไปยังผู้ที่เกี่ยวข้องเรียบร้อยแล้ว',NULL),(396,'Your new password is','ລະຫັດຜ່ານໃໝ່ຂອງທ່ານຄື','text','index',0,'รหัสผ่านใหม่ของคุณคือ',NULL),(397,'Your registration information','ຂໍ້ມູນການລົງທະບຽນຂອງທ່ານ','text','index',0,'ข้อมูลการลงทะเบียนของคุณ',NULL),(398,'Zipcode','ລະຫັດໄປສະນີ','text','index',0,'รหัสไปรษณีย์',NULL);
/*!40000 ALTER TABLE `ed_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_line`
--

DROP TABLE IF EXISTS `ed_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_line` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_line`
--

LOCK TABLES `ed_line` WRITE;
/*!40000 ALTER TABLE `ed_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `ed_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_repair`
--

DROP TABLE IF EXISTS `ed_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_repair` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `inventory_id` int NOT NULL,
  `job_description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_repair`
--

LOCK TABLES `ed_repair` WRITE;
/*!40000 ALTER TABLE `ed_repair` DISABLE KEYS */;
/*!40000 ALTER TABLE `ed_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_repair_status`
--

DROP TABLE IF EXISTS `ed_repair_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_repair_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `repair_id` int NOT NULL,
  `status` tinyint NOT NULL,
  `operator_id` int NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `member_id` int NOT NULL,
  `create_date` datetime NOT NULL,
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `repair_id` (`repair_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_repair_status`
--

LOCK TABLES `ed_repair_status` WRITE;
/*!40000 ALTER TABLE `ed_repair_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ed_repair_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_reservation`
--

DROP TABLE IF EXISTS `ed_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `member_id` int NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `topic` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `attendees` int NOT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `department` int NOT NULL,
  `reason` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_reservation`
--

LOCK TABLES `ed_reservation` WRITE;
/*!40000 ALTER TABLE `ed_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ed_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_reservation_data`
--

DROP TABLE IF EXISTS `ed_reservation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_reservation_data` (
  `reservation_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  KEY `reservation_id` (`reservation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_reservation_data`
--

LOCK TABLES `ed_reservation_data` WRITE;
/*!40000 ALTER TABLE `ed_reservation_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ed_reservation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_rooms`
--

DROP TABLE IF EXISTS `ed_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `published` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_rooms`
--

LOCK TABLES `ed_rooms` WRITE;
/*!40000 ALTER TABLE `ed_rooms` DISABLE KEYS */;
INSERT INTO `ed_rooms` VALUES (1,'ห้องประชุม 2','ห้องประชุมพร้อมระบบ Video conference\r\nที่นั่งผู้เข้าร่วมประชุม รูปตัว U 2 แถว','#01579B',1),(2,'ห้องประชุม 1','ห้องประชุมขนาดใหญ่\r\nพร้อมสิ่งอำนวยความสะดวกครบครัน','#1A237E',1),(3,'ห้องประชุมส่วนเทคโนโลยีสารสนเทศ','ห้องประชุมขนาดใหญ่ (Hall)\r\nเหมาะสำรับการสัมนาเป็นหมู่คณะ และ จัดเลี้ยง','#B71C1C',1);
/*!40000 ALTER TABLE `ed_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_rooms_meta`
--

DROP TABLE IF EXISTS `ed_rooms_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_rooms_meta` (
  `room_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(150) NOT NULL,
  KEY `room_id` (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_rooms_meta`
--

LOCK TABLES `ed_rooms_meta` WRITE;
/*!40000 ALTER TABLE `ed_rooms_meta` DISABLE KEYS */;
INSERT INTO `ed_rooms_meta` VALUES (2,'seats','20 ที่นั่ง'),(2,'number','R-0001'),(2,'building','อาคาร 1'),(1,'number','R-0002'),(1,'seats','50 ที่นั่ง รูปตัว U'),(1,'building','อาคาร 2'),(3,'building','โรงอาหาร'),(3,'seats','100 คน');
/*!40000 ALTER TABLE `ed_rooms_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_user`
--

DROP TABLE IF EXISTS `ed_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `permission` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` int DEFAULT '0',
  `position` int DEFAULT '0',
  `code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinceID` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT 'TH',
  `visited` int DEFAULT '0',
  `lastvisited` int DEFAULT '0',
  `session_id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `social` tinyint(1) DEFAULT '0',
  `line_uid` varchar(33) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `token` (`token`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_user`
--

LOCK TABLES `ed_user` WRITE;
/*!40000 ALTER TABLE `ed_user` DISABLE KEYS */;
INSERT INTO `ed_user` VALUES (1,'admin','6294823e1f052','2d3dc8c14ffa7e6d46c8ea601e5febefc1a0345b','75453995f9e733d174b260bfd564ce5f50e9c34a',1,'','แอดมิน',NULL,NULL,0,0,'','0000-00-00',NULL,NULL,NULL,NULL,NULL,'TH',7,1653918718,'m4o0p3cqulopbdn5c4k4bm0g8s','10.6.0.4','2022-05-30 15:37:18',1,0,NULL),(2,'demo','23b56a6bc2179','a064716fdbb3fef898928320a8f2b7903d73e64f','c4062295bead3f95c614f7d9c4f26cbcd741336c',1,'','ตัวอย่าง','f','',0,0,'','0000-00-00','','','','','','TH',1,1653900544,'03kienois2hjb5l9u4r5nt2e40','192.168.100.106','2022-05-30 15:37:18',1,0,NULL);
/*!40000 ALTER TABLE `ed_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_user_category`
--

DROP TABLE IF EXISTS `ed_user_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_user_category` (
  `member_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(150) NOT NULL,
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_user_category`
--

LOCK TABLES `ed_user_category` WRITE;
/*!40000 ALTER TABLE `ed_user_category` DISABLE KEYS */;
INSERT INTO `ed_user_category` VALUES (2,'job','นักศึกษาฝึกงาน');
/*!40000 ALTER TABLE `ed_user_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_vehicles`
--

DROP TABLE IF EXISTS `ed_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `published` int NOT NULL DEFAULT '1',
  `seats` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_vehicles`
--

LOCK TABLES `ed_vehicles` WRITE;
/*!40000 ALTER TABLE `ed_vehicles` DISABLE KEYS */;
INSERT INTO `ed_vehicles` VALUES (1,'นม 6','#304FFE','พร้อมเครื่องเสียงชุดใหญ่',1,50),(2,'บจ 888','#4A148C','',1,4),(3,'กข 1234','#B71C1C','',1,4);
/*!40000 ALTER TABLE `ed_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_vehicles_meta`
--

DROP TABLE IF EXISTS `ed_vehicles_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ed_vehicles_meta` (
  `vehicle_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  KEY `room_id` (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_vehicles_meta`
--

LOCK TABLES `ed_vehicles_meta` WRITE;
/*!40000 ALTER TABLE `ed_vehicles_meta` DISABLE KEYS */;
INSERT INTO `ed_vehicles_meta` VALUES (1,'car_brand','3'),(2,'car_brand','2'),(2,'car_type','2'),(3,'car_brand','1'),(3,'car_type','1'),(1,'car_type','3');
/*!40000 ALTER TABLE `ed_vehicles_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31  9:03:36
