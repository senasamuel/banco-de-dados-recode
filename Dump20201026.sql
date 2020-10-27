CREATE DATABASE  IF NOT EXISTS `asfeletro` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `asfeletro`;
-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: asfeletro
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `produto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valortotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto` (`produto`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`produto`) REFERENCES `produto` (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'alan','rua da chuva',21558889,5,1,NULL),(2,'lucas','rua da cascata',255584,3,2,NULL);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(10,0) DEFAULT NULL,
  `precofinal` decimal(10,0) DEFAULT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'maquina de lavar','Maquina de lavar 15kg',3600,2500,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/maquina%20de%20lavar.webp'),(2,'maquina de lavar','Maquina de lavar 10kg',2490,1400,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/1162579-500-500.webp'),(3,'geladeira','geladeira',4327,3189,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/geladeira1.jpg'),(4,'geladeira','Geladeira Frost-Free',2800,1790,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/geladeira2.jpg'),(5,'fogao','Fogão 4 bocas',2390,1236,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/fogao1.webp'),(6,'fogao','Fogão 6 bocas',4267,3330,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/fogao2.jpg'),(7,'liquidificador','Liquidificador 4 potências',468,351,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/liquidificador.webp'),(8,'liquidificador','Liquidificador 3 potências',268,168,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/liquidificador2.jpg'),(9,'liquidificador','Liquidificador TopLine',533,411,'file:///C:/Users/alann/OneDrive/Desktop/asf%20eletro/liquidificador3.webp');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 22:17:57
