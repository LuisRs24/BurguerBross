-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: burgerbross
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tb_categoria_productos`
--

DROP TABLE IF EXISTS `tb_categoria_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categoria_productos` (
  `id_categoria_prod` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_categoria_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoria_productos`
--

LOCK TABLES `tb_categoria_productos` WRITE;
/*!40000 ALTER TABLE `tb_categoria_productos` DISABLE KEYS */;
INSERT INTO `tb_categoria_productos` VALUES (1,'Hamburguesas'),(2,'Bebidas'),(3,'Complementos'),(4,'Adicionales');
/*!40000 ALTER TABLE `tb_categoria_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalle_pedido`
--

DROP TABLE IF EXISTS `tb_detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_detalle_pedido` (
  `id_detalle_pedido` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `precio_producto` decimal(7,2) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `subtotal` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_pedido`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `tb_detalle_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedidos` (`id_pedido`),
  CONSTRAINT `tb_detalle_pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalle_pedido`
--

LOCK TABLES `tb_detalle_pedido` WRITE;
/*!40000 ALTER TABLE `tb_detalle_pedido` DISABLE KEYS */;
INSERT INTO `tb_detalle_pedido` VALUES (1,1,2,5.00,2,10.00),(2,1,1,6.00,2,12.00);
/*!40000 ALTER TABLE `tb_detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedidos`
--

DROP TABLE IF EXISTS `tb_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `total_pedido` decimal(7,2) DEFAULT NULL,
  `nombre_cliente` varchar(256) DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `estado_pedido` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedidos`
--

LOCK TABLES `tb_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_pedidos` DISABLE KEYS */;
INSERT INTO `tb_pedidos` VALUES (1,22.00,'Luis','2023-12-03 21:55:05',0);
/*!40000 ALTER TABLE `tb_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(256) DEFAULT NULL,
  `id_categoria_prod` int NOT NULL,
  `desc_prod` varchar(500) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `precio_producto` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_categoria_prod` (`id_categoria_prod`),
  CONSTRAINT `tb_productos_ibfk_1` FOREIGN KEY (`id_categoria_prod`) REFERENCES `tb_categoria_productos` (`id_categoria_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES (1,'Hamburguesa Royal',1,'Hamburguesa con huevo',50,6.00),(2,'Hamburguesa Simple',1,'Hamburguesa simple',50,5.00),(3,'Hamburguesa Cheese',1,'Hamburguesa con queso',50,6.50);
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_roles`
--

DROP TABLE IF EXISTS `tb_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_roles` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_roles`
--

LOCK TABLES `tb_roles` WRITE;
/*!40000 ALTER TABLE `tb_roles` DISABLE KEYS */;
INSERT INTO `tb_roles` VALUES (1,'Cocina'),(2,'Mesero');
/*!40000 ALTER TABLE `tb_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `id_rol` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `tb_roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` VALUES (1,'admin','112233',1);
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 14:40:44
