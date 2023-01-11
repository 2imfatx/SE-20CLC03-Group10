CREATE DATABASE  IF NOT EXISTS `shopaa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopaa`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shopaa
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `UserName` char(20) NOT NULL,
  `Password` char(20) NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('Customer1','123'),('Customer2','123'),('Customer3','123'),('Customer4','123'),('Customer5','123'),('Customer6','123'),('Customer7','123'),('Customer8','123'),('Customer9','123');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_order`
--

DROP TABLE IF EXISTS `b_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_order` (
  `IDOrder` char(5) NOT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LastName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `B_Address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Province` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PhoneNumber` char(10) DEFAULT NULL,
  `Note` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ShippingCost` float DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `UserName` char(20) DEFAULT NULL,
  `VoucherName` char(10) DEFAULT NULL,
  PRIMARY KEY (`IDOrder`),
  KEY `FK_B_ORDER_BUYER_idx` (`UserName`),
  KEY `FK_B_ORDER_VOUCHER_idx` (`VoucherName`,`Discount`),
  CONSTRAINT `FK_B_ORDER_BUYER` FOREIGN KEY (`UserName`) REFERENCES `buyer` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_B_ORDER_VOUCHER` FOREIGN KEY (`VoucherName`, `Discount`) REFERENCES `voucher` (`VoucherName`, `ValueDisCount`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_order`
--

LOCK TABLES `b_order` WRITE;
/*!40000 ALTER TABLE `b_order` DISABLE KEYS */;
INSERT INTO `b_order` VALUES ('OD001','Nguyễn','An','Số 3, đường 2','Quận 3','Tp.HCM','0123456789','không ớt',5000,20000,85000,'Customer1','SHOPAA1'),('OD002','Nguyễn','Bình','Số 5, đường 6','Quận 1','Tp.HCM','0123456788','cho nhiều rau',10000,20000,50000,'Customer3','SHOPAA1'),('OD003','Nguyễn','Công','Số 8, đường 5','Quận 7','Tp.HCM','0123456787','cho nhiều rau',20000,0,120000,'Customer5',NULL);
/*!40000 ALTER TABLE `b_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_orderdetail`
--

DROP TABLE IF EXISTS `b_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_orderdetail` (
  `FoodName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `StoreName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IDOrder` char(5) NOT NULL,
  `Quality` int DEFAULT NULL,
  `Totaling` float DEFAULT NULL,
  PRIMARY KEY (`FoodName`,`StoreName`,`IDOrder`),
  KEY `FK_B_ORDERDETAIL_B_ORDER_idx` (`IDOrder`),
  CONSTRAINT `FK_B_ORDERDETAIL_OD` FOREIGN KEY (`IDOrder`) REFERENCES `b_order` (`IDOrder`),
  CONSTRAINT `FK_B_ORDERDETAIL_STORE` FOREIGN KEY (`FoodName`, `StoreName`) REFERENCES `store` (`FoodName`, `StoreName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_orderdetail`
--

LOCK TABLES `b_orderdetail` WRITE;
/*!40000 ALTER TABLE `b_orderdetail` DISABLE KEYS */;
INSERT INTO `b_orderdetail` VALUES ('Bánh mì','Bánh mì cá','OD003',10,200000),('Bánh xèo','Bánh xèo tôm thịt','OD002',2,60000),('Hủ tiếu','Hủ tiếu Giò','OD001',2,100000);
/*!40000 ALTER TABLE `b_orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `Username` char(10) NOT NULL,
  `ImageProfile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Username`),
  CONSTRAINT `FK_BUYER_ACCOUNT` FOREIGN KEY (`Username`) REFERENCES `account` (`UserName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES ('Customer1',NULL),('Customer2',NULL),('Customer3',NULL),('Customer4',NULL),('Customer5',NULL),('Customer6',NULL),('Customer7',NULL),('Customer8',NULL),('Customer9',NULL);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `StoreName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserName` char(20) NOT NULL,
  `FoodName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `RatingStar` int DEFAULT NULL,
  `Comment` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`StoreName`,`UserName`,`FoodName`),
  KEY `FK_B_ORDERDETAIL_B_ORDER_idx` (`UserName`),
  KEY `FK_FEEDBACK_STORE_idx` (`StoreName`,`FoodName`),
  CONSTRAINT `FK_B_ORDERDETAIL_B_ORDER` FOREIGN KEY (`UserName`) REFERENCES `buyer` (`Username`),
  CONSTRAINT `FK_FEEDBACK_STORE` FOREIGN KEY (`StoreName`, `FoodName`) REFERENCES `store` (`StoreName`, `FoodName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('Bánh xèo rau rừng','Customer1','Bánh xèo',5,'Ngon'),('Bún thịt nướng số 1','Customer5','Bún thịt nướng',5,'Ngon'),('Cơm gà vàng','Customer4','Cơm gà',5,'Ngon'),('Hủ tiếu bò viên','Customer8','Hủ tiếu',5,'Ngon'),('Quán cơm bốn mùa','Customer8','Cơm sườn',5,'Ngon');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `FoodName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ImageFood` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FoodName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES ('Bánh mì',NULL),('Bánh xèo',NULL),('Bún bò Huế',NULL),('Bún thịt nướng',NULL),('Bún đậu mắm tôm',NULL),('Cơm gà',NULL),('Cơm sườn',NULL),('Hủ tiếu',NULL);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `StoreName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FoodName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ImageStore` varchar(150) DEFAULT NULL,
  `Adress` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Descriptions` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`StoreName`,`FoodName`),
  KEY `FK_STORE_FOOD_idx` (`FoodName`),
  CONSTRAINT `FK_STORE_FOOD` FOREIGN KEY (`FoodName`) REFERENCES `food` (`FoodName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES ('Bánh mì cá','Bánh mì','https://vcdn-vnexpress.vnecdn.net/2021/02/26/top-1614316281-4304-1614316323_680x408.png','Quận 1, Tp.HCM','Ngon',5,20000),('Bánh mì cô Ba','Bánh mì','https://znews-photo.zingcdn.me/w660/Uploaded/tmgtjz/2022_11_07/banh_mi_with_grilled_pork1_1663331872.jpg','Quận 5, Tp.HCM','Ngon',5,20000),('Bánh mì thịt','Bánh mì','https://bitly3s.com/ymiahm','Quận 3, Tp.HCM','Ngon',5,20000),('Bánh mì thịt nướng','Bánh mì','https://bitly3s.com/0ecvuf','Quận 3, Tp.HCM','Ngon',5,20000),('Bánh mì trứng','Bánh mì','https://img-global.cpcdn.com/recipes/01914f4be6cc4786/1200x630cq70/photo.jpg','Quận 3, Tp.HCM','Ngon',5,25000),('Bánh xèo 666','Bánh xèo','https://i.ytimg.com/vi/GOUmS6kRoGw/maxresdefault.jpg','Quận 3, Tp.HCM','Ngon',5,30000),('Bánh xèo miền Tây','Bánh xèo','https://cdn.tgdd.vn/2020/12/CookProduct/11-1200x676.jpg','Quận 5, Tp.HCM','Hương vị quê nhà',5,30000),('Bánh xèo miền Trung','Bánh xèo','https://cdn.tgdd.vn/Files/2019/05/06/1165123/cach-lam-banh-xeo-mien-trung-gion-tan-an-la-ghien-202109281817451829.jpg','Quận 8, Tp.HCM','Ngon',5,30000),('Bánh xèo rau rừng','Bánh xèo','https://cdn.vatgia.com/pictures/fullsize/2016/10/31/ive1477926771.jpg','Quận 4, Tp.HCM','Rau rừng 100%',5,30000),('Bánh xèo tôm thịt','Bánh xèo','https://cdn.daynauan.info.vn/wp-content/uploads/2019/09/banh-xeo-mien-trung.jpg','Quận 6, Tp.HCM','Ngon',5,30000),('Bún bò Bến Bình Đông','Bún bò Huế','https://bitly3s.com/9q2o6h','Quận 8, Tp.HCM','Bò tươi',5,40000),('Bún bò Huế','Bún bò Huế','https://bitly3s.com/iarqh8','Quận 1, Tp.HCM','Đúng chất vị Huế',5,40000),('Bún bò Huế cô Hoa','Bún bò Huế','https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Bun-Bo-Hue-from-Huong-Giang-2011.jpg/1200px-Bun-Bo-Hue-from-Huong-Giang-2011.jpg','Quận 1, Tp.HCM','Bún bò mỡ nổi',5,40000),('Bún bò Huế số 2','Bún bò Huế','https://bitly3s.com/9q2o6h','Quận 1, Tp.HCM','Ngon nhì thành phố',5,40000),('Bún bò Sài Gòn','Bún bò Huế','https://bitly3s.com/9q2o6h','Quận 2, Tp.HCM','Hương vị gần gũi',5,40000),('Bún thịt nướng','Bún thịt nướng','https://bitly3s.com/d39ezu','Quận 2, Tp.HCM','Ngon',5,40000),('Bún thịt nướng 888','Bún thịt nướng','https://monngonmoingay.com/wp-content/uploads/2015/08/1.bunthitnuong1.png','Quận 1, Tp.HCM','Ngon',5,40000),('Bún thịt nướng 999','Bún thịt nướng','https://bitly3s.com/yk13vo','Quận 1, Tp.HCM','Ngon',5,40000),('Bún thịt nướng hẻm số 2','Bún thịt nướng','https://i.ytimg.com/vi/DWAdlGKcTG0/maxresdefault.jpg','Quận 5, Tp.HCM','Ngon',5,40000),('Bún thịt nướng số 1','Bún thịt nướng','https://bitly3s.com/cw777r','Quận 1, Tp.HCM','Ngon',5,40000),('Bún đậu mắm tôm bà lão','Bún đậu mắm tôm','http://cdn.tgdd.vn/Files/2020/12/18/1314627/tong-hop-5-hang-quan-bun-dau-mam-tom-ngon-nuc-tieng-o-go-vap-202012181416569356.jpg','Quận 6, Tp.HCM','Ngon',5,50000),('Bún đậu mắm tôm cây me','Bún đậu mắm tôm','https://reviewvilla.vn/wp-content/uploads/2022/06/bun-dau-mam-tom-Ha-Noi-15-1024x1024.jpg','Quận 6, Tp.HCM','Ngon',5,50000),('Bún đậu mắm tôm cô Châu','Bún đậu mắm tôm','https://mayruaxecongnghiep.com/wp-content/uploads/2022/10/bun-dau-mam-tom-1.jpg','Quận 5, Tp.HCM','Ngon',5,50000),('Bún đậu mắm tôm quận 1','Bún đậu mắm tôm','https://cdn01.diadiemanuong.com/ddau/640x/undefined-bun-dau-29-phan-xich-long-0-5502fb3b637026767923198904.jpg','Quận 1, Tp.HCM','Ngon',5,50000),('Bún đậu mắm tôm Sạch','Bún đậu mắm tôm','https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/07/bun-dau-mam-tom-ha-noi-4-e1531198260314.jpg','Quận 8, Tp.HCM','Ngon',5,50000),('Chicken','Cơm gà','https://bitly3s.com/cakg6i','Quận 6, Tp.HCM','Gà theo món',5,40000),('Cơm gà 99','Cơm gà','https://bitly3s.com/0tet5d','Quận 1, Tp.HCM','Gà tươi',5,40000),('Cơm gà cây bông','Cơm gà','https://bitly3s.com/gqvb0y','Quận 2, Tp.HCM','Ngon',5,40000),('Cơm gà giòn','Cơm gà','https://bitly3s.com/z3ska5','Quận 5, Tp.HCM','Cơm gà tẩm bột chiên giòn',5,40000),('Cơm gà vàng','Cơm gà','https://bitly3s.com/x80q9s','Quận 9, Tp.HCM','Gà tươi ướp nghệ',5,40000),('Cơm sườn 1','Cơm sườn','https://bitly3s.com/x9cf5a','Quận 4, Tp. HCM','Ngon',5,30000),('Cơm sườn chị Ba','Cơm sườn','https://bitly3s.com/3wvqty','Quận 7, Tp. HCM\'','Ngon',5,20000),('Cơm sườn cô Năm','Cơm sườn','https://bitly3s.com/b5xc4e','Quận 8, Tp. HCM\'','Ngon',3,60000),('Cơm tấm sườn','Cơm sườn','https://bitly3s.com/j745t3','Quận 6, Tp. HCM','Ngon',4,80000),('Hủ tiếu bò viên','Hủ tiếu','https://cdn.tgdd.vn/Files/2017/05/03/978989/cach-nau-hu-tieu-bo-vien-ngon-202109291655171547.jpg','Quận 3, Tp.HCM','làm 100% từ bò thật',5,40000),('Hủ tiếu chay','Hủ tiếu','https://bitly3s.com/djm6lw','Quận 1, Tp.HCM','Nước dùng ngọt thanh, cam kết không đường',5,40000),('Hủ tiếu Giò','Hủ tiếu','https://bitly3s.com/djm6lw','Quận 2, Tp.HCM','Nước dùng được hầm từ xương',5,50000),('Hủ tiếu khô','Hủ tiếu','https://noiphodien123.vn/wp-content/uploads/2020/08/cach-lam-hu-tieu-kho-sa-dec-voi-nuoc-sot.jpg','Quận 1, Tp.HCM','Sợi hủ tiếu Mỹ Tho',5,40000),('Hủ tiếu truyền thống','Hủ tiếu','https://bitly3s.com/sbjhb7','Quận 1, Tp.HCM','hương vị miền tây sông nước',5,40000),('Quán cơm bốn mùa','Cơm sườn','https://bitly3s.com/t3c40c','Quận 5, Tp. HCM','Ngon, Cay',5,30000);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `VoucherName` char(10) NOT NULL,
  `ValueDisCount` float NOT NULL,
  `Remaining` int DEFAULT NULL,
  PRIMARY KEY (`VoucherName`,`ValueDisCount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES ('SHOPAA1',20000,NULL),('SHOPAA2',30000,NULL),('SHOPAA3',40000,NULL),('SHOPAA4',50000,NULL),('SHOPAA5',60000,NULL),('SHOPAA6',70000,NULL),('SHOPAA7',80000,NULL);
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-11  0:42:28
