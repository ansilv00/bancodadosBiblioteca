-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para bibliotecadb
DROP DATABASE IF EXISTS `bibliotecadb`;
CREATE DATABASE IF NOT EXISTS `bibliotecadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bibliotecadb`;

-- Copiando estrutura para tabela bibliotecadb.autores
DROP TABLE IF EXISTS `autores`;
CREATE TABLE IF NOT EXISTS `autores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela bibliotecadb.autores: ~10 rows (aproximadamente)
INSERT INTO `autores` (`id`, `nome`, `email`) VALUES
	(1, 'R. J. Palacio', 'palacio@gmail.com'),
	(2, 'Jane austen', 'jane@gmail.com'),
	(3, 'Lucy Maud Montgomery', 'lucymaud@gmail.com'),
	(4, 'Marjane Strapi', 'marjane@gmail.com'),
	(5, 'Rick Riordan', 'rick@gmail.com'),
	(6, 'Elayne Baeta', 'elayne@gmail.com'),
	(7, 'Hayley Kiyoko', 'hayley@gmail.com'),
	(8, 'Ashley Herring Blake', 'ashley@gmail.com'),
	(9, 'Clara Alves', 'clara@gmail.com'),
	(10, 'estrela', 'estrela@gmail.com');

-- Copiando estrutura para tabela bibliotecadb.livros
DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `ano_publicacao` int DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `id_autor` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela bibliotecadb.livros: ~3 rows (aproximadamente)
INSERT INTO `livros` (`id`, `titulo`, `ano_publicacao`, `genero`, `id_autor`) VALUES
	(1, 'Extraordinário', 2012, 'Romance, ficção, literatura infantil', 1),
	(2, 'Orgulho e Preconceito', 1813, 'romance de amor', 2),
	(3, 'Anne', 1881, 'Romance', 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
