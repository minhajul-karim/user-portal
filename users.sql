-- Adminer 4.8.1 MySQL 8.0.26-0ubuntu0.20.04.2 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `users` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `users`;

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_irsamgnera6angm0prq1kemt2` (`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `role` (`id`, `version`, `authority`) VALUES
(1,	0,	'ROLE_ADMIN'),
(2,	0,	'ROLE_USER');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `birthdate` datetime NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `enabled` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user` (`id`, `version`, `phone`, `address`, `first_name`, `birthdate`, `password_expired`, `username`, `account_locked`, `password`, `account_expired`, `last_name`, `enabled`) VALUES
(1,	0,	'1111111111',	'cumilla',	'Minhajul',	'2011-11-11 00:00:00',	CONV('0', 2, 10) + 0,	'mkr@gmail.com',	CONV('0', 2, 10) + 0,	'{bcrypt}$2a$10$HRVJ5W3gKl2OogqgHyTiOeNgPMPzmOcJ0qxB.5U8y41OM.JI93b.G',	CONV('0', 2, 10) + 0,	'Karim',	CONV('1', 2, 10) + 0),
(2,	0,	'33333333',	'Germany',	'Abul',	'2011-11-11 00:00:00',	CONV('0', 2, 10) + 0,	'ab@gmail.com',	CONV('0', 2, 10) + 0,	'{bcrypt}$2a$10$yWtPI/GrFFZBhyH8r.zVouW2HJp3889Pn2zjMAt77YLPvL6smBfhG',	CONV('0', 2, 10) + 0,	'Hasnat',	CONV('1', 2, 10) + 0),
(3,	0,	'999999999',	'Chittagong',	'Tamim',	'2011-11-11 00:00:00',	CONV('0', 2, 10) + 0,	'admin@localhost.local',	CONV('0', 2, 10) + 0,	'{bcrypt}$2a$10$zC6comTs.ko2Luzc7Hly2utf9qDMKmPOpBIS5jRcX.k5t.TqjwoXK',	CONV('0', 2, 10) + 0,	'Iqbal',	CONV('1', 2, 10) + 0),
(6,	0,	'888888888',	'Dhaka',	'Shakib',	'2011-11-11 00:00:00',	CONV('0', 2, 10) + 0,	'shak@hasan.com',	CONV('0', 2, 10) + 0,	'{bcrypt}$2a$10$6wA6WLsX5jUVu5dTd8lMHuYs0WomMkyKr85BJUjLQIs.I7iUjf/gO',	CONV('0', 2, 10) + 0,	'Al Hasan',	CONV('1', 2, 10) + 0),
(7,	0,	'777777777',	'Noakhali',	'Mushfiqur',	'2011-11-11 00:00:00',	CONV('0', 2, 10) + 0,	'mushi@gmail.com',	CONV('0', 2, 10) + 0,	'{bcrypt}$2a$10$LkxOGlQ.AuEnRL1n4Cl6KONBCqswV2Y9rUSCVvGwXrkDiIjPk8fvK',	CONV('0', 2, 10) + 0,	'Rahim',	CONV('1', 2, 10) + 0);

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1,	1),
(3,	1),
(1,	2),
(2,	2),
(6,	2),
(7,	2);

-- 2021-09-30 13:08:32
