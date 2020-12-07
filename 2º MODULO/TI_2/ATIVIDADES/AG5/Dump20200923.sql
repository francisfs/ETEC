-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: imobiliaria_francisley_ti2_ag_04
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Current Database: `imobiliaria_francisley_ti2_ag_04`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `imobiliaria_francisley_ti2_ag_04` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `imobiliaria_francisley_ti2_ag_04`;

--
-- Table structure for table `apartamento`
--

DROP TABLE IF EXISTS `apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartamento` (
  `num_apto_id` int NOT NULL AUTO_INCREMENT,
  `tipo_apto` varchar(20) DEFAULT NULL,
  `codigo_cond` int DEFAULT NULL,
  PRIMARY KEY (`num_apto_id`),
  KEY `fk_apto_cond` (`codigo_cond`),
  CONSTRAINT `fk_apto_cond` FOREIGN KEY (`codigo_cond`) REFERENCES `condominio` (`codigo_cond`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamento`
--

LOCK TABLES `apartamento` WRITE;
/*!40000 ALTER TABLE `apartamento` DISABLE KEYS */;
INSERT INTO `apartamento` VALUES (1,'cobertura',1),(2,'cobertura',1),(3,'comum',1),(4,'comum',1),(5,'comum',1),(6,'cobertura',2),(7,'cobertura',2),(8,'comum',2),(9,'comum',2),(10,'comum',2);
/*!40000 ALTER TABLE `apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condominio`
--

DROP TABLE IF EXISTS `condominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condominio` (
  `codigo_cond` int NOT NULL AUTO_INCREMENT,
  `nome_cond` varchar(50) DEFAULT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `matricula_sind` int DEFAULT NULL,
  PRIMARY KEY (`codigo_cond`),
  KEY `fk_cond_sind` (`matricula_sind`),
  CONSTRAINT `fk_cond_sind` FOREIGN KEY (`matricula_sind`) REFERENCES `sindico` (`matricula_sind`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condominio`
--

LOCK TABLES `condominio` WRITE;
/*!40000 ALTER TABLE `condominio` DISABLE KEYS */;
INSERT INTO `condominio` VALUES (1,'condominio das flores','Av. Turistica nº 5970',1),(2,'condominio das arvores','Rua Pedro alvares nº 2415',2);
/*!40000 ALTER TABLE `condominio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garagem`
--

DROP TABLE IF EXISTS `garagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garagem` (
  `num_garagem` int NOT NULL AUTO_INCREMENT,
  `tipo_garagem` varchar(7) DEFAULT NULL,
  `num_apto_id` int DEFAULT NULL,
  PRIMARY KEY (`num_garagem`),
  KEY `fk_garagem_apto` (`num_apto_id`),
  CONSTRAINT `fk_garagem_apto` FOREIGN KEY (`num_apto_id`) REFERENCES `apartamento` (`num_apto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garagem`
--

LOCK TABLES `garagem` WRITE;
/*!40000 ALTER TABLE `garagem` DISABLE KEYS */;
INSERT INTO `garagem` VALUES (41,'coberta',1),(42,'coberta',1),(43,'aberta',2),(44,'aberta',2),(45,'aberta',3),(46,'coberta',3),(47,'coberta',4),(48,'aberta',4),(49,'aberta',5),(50,'aberta',5);
/*!40000 ALTER TABLE `garagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proprietario` (
  `proprietario_id` int NOT NULL AUTO_INCREMENT,
  `rg_proprietario` varchar(15) NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `telefone_prop` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`proprietario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietario`
--

LOCK TABLES `proprietario` WRITE;
/*!40000 ALTER TABLE `proprietario` DISABLE KEYS */;
INSERT INTO `proprietario` VALUES (1,'42454779','Ana Paula dos Santos','11957915231','ana@gmail.com'),(2,'54724578','Juliana fernandes','11957234567','julia@gmai.com'),(3,'35157987','Pedro Araujo','11969741224','pedro@yahoo.com.br'),(4,'12485132','Alvarenga Peixoto','1192134469','peixoto@gmail.com'),(5,'12457978','Fernado da Silva','1197541225','fernando@ig.com.br'),(6,'35835112','Silvio Santos','1197312141','silvio@ig.com.br'),(7,'68453385','Maria Aparecida','1197321154','maria@ig.com.br'),(8,'11578968','roberto Fernandes','1191241551','roberto@terra.com.br'),(9,'15778968','Tomas Fernandes','1191241551','alice@terra.com.br'),(10,'16578968','Carla de Souza','1191241551','alice@terra.com.br');
/*!40000 ALTER TABLE `proprietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietario_apartamento`
--

DROP TABLE IF EXISTS `proprietario_apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proprietario_apartamento` (
  `prop_apto_id` int NOT NULL AUTO_INCREMENT,
  `num_apto_id` int DEFAULT NULL,
  `proprietario_id` int DEFAULT NULL,
  PRIMARY KEY (`prop_apto_id`),
  KEY `fk_num_apto` (`num_apto_id`),
  KEY `fk_prop_pa` (`proprietario_id`),
  CONSTRAINT `fk_num_apto` FOREIGN KEY (`num_apto_id`) REFERENCES `apartamento` (`num_apto_id`),
  CONSTRAINT `fk_prop_pa` FOREIGN KEY (`proprietario_id`) REFERENCES `proprietario` (`proprietario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietario_apartamento`
--

LOCK TABLES `proprietario_apartamento` WRITE;
/*!40000 ALTER TABLE `proprietario_apartamento` DISABLE KEYS */;
INSERT INTO `proprietario_apartamento` VALUES (1,1,10),(2,2,10),(3,3,10),(4,3,1),(5,4,2),(6,5,3),(7,6,4),(8,7,8),(9,8,9),(10,9,5),(11,10,6);
/*!40000 ALTER TABLE `proprietario_apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sindico`
--

DROP TABLE IF EXISTS `sindico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sindico` (
  `matricula_sind` int NOT NULL AUTO_INCREMENT,
  `nome_sind` varchar(80) DEFAULT NULL,
  `endereco_sind` varchar(80) DEFAULT NULL,
  `telefone_sind` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`matricula_sind`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sindico`
--

LOCK TABLES `sindico` WRITE;
/*!40000 ALTER TABLE `sindico` DISABLE KEYS */;
INSERT INTO `sindico` VALUES (1,'Carlos Alberto de Nobrega','Rua maria amalia nº 200 - jardim santa monica - São Paulo - SP','11945221597'),(2,'Francisco Soares de Souza','Rua avelino chaves nº 590 - jardim dos pinheiros - Caieiras - SP','11945272115');
/*!40000 ALTER TABLE `sindico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `bd_agenda2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bd_agenda2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bd_agenda2`;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `uk_cur_des` (`descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (2,'Designer Web'),(1,'Sistemas');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_professor`
--

DROP TABLE IF EXISTS `curso_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_professor` (
  `curso_prof_id` int NOT NULL AUTO_INCREMENT,
  `codigo_curso` int NOT NULL,
  `matricula_prof` int NOT NULL,
  PRIMARY KEY (`curso_prof_id`),
  UNIQUE KEY `uk_cp_cur_mat` (`codigo_curso`,`matricula_prof`),
  KEY `fk_cp_mat_prof` (`matricula_prof`),
  CONSTRAINT `fk_cp_cod_curso` FOREIGN KEY (`codigo_curso`) REFERENCES `curso` (`codigo`),
  CONSTRAINT `fk_cp_mat_prof` FOREIGN KEY (`matricula_prof`) REFERENCES `professor` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_professor`
--

LOCK TABLES `curso_professor` WRITE;
/*!40000 ALTER TABLE `curso_professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `matricula` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(30) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `salario` float(10,2) DEFAULT '0.00',
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'José da Silva','1977-10-03','Alameda 5','1000','Centro','São Paulo','SP','08150-640',1854.00),(2,'João de Souza','1970-12-12','Travessa Mato Grosso','10','Bom retiro','São Paulo','SP','01122-000',1530.00),(3,'João de Souza','1970-12-12','Travessa Mato Grosso',NULL,'Bom retiro','São Paulo','SP','01122-000',1500.00);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_telefone`
--

DROP TABLE IF EXISTS `professor_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_telefone` (
  `professor_fone_id` int NOT NULL AUTO_INCREMENT,
  `matricula` int NOT NULL,
  `numero` varchar(15) NOT NULL,
  PRIMARY KEY (`professor_fone_id`),
  UNIQUE KEY `uk_pt_mat_tel` (`matricula`,`numero`),
  CONSTRAINT `fk_professor_matricula` FOREIGN KEY (`matricula`) REFERENCES `professor` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_telefone`
--

LOCK TABLES `professor_telefone` WRITE;
/*!40000 ALTER TABLE `professor_telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor_telefone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-23 17:45:14
