-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2020 at 11:06 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(2, 'Esimene postitus!', 'Mis on Lorem Ipsum?\r\nLorem Ipsum on lihtsalt proovitekst, mida kasutatakse printimis- ja ladumistööstuses. See on olnud tööstuse põhiline proovitekst juba alates 1500. aastatest, mil tundmatu printija võttis hulga suvalist teksti, et teha trükinäidist. Lorem Ipsum ei ole ainult viis sajandit säilinud, vaid on ka edasi kandunud elektroonilisse trükiladumisse, jäädes sealjuures peaaegu muutumatuks. See sai tuntuks 1960. aastatel Letraset\'i lehtede väljalaskmisega, ja hiljuti tekstiredaktoritega nagu Aldus PageMaker, mis sisaldavad erinevaid Lorem Ipsumi versioone.\r\n\r\nMiks me seda kasutame?\r\nOn teada-tuntud fakt, et lehe kujunduse vaatamisel juhib selle loetav sisu lugeja tähelepanu kõrvale. Lorem Ipsumi kasutamise mõte seisneb selles, et sellel on enam-vähem normaalne jaotus tähti, mitte nagu korduvatel sõnadel \"sisu siin, sisu siin\", nähes välja nagu tavaline loetav tekst. Paljud tekstiredaktorid ja veebilehtede valmistamise programmid kasutavad Lorem Ipsumit vaikimisi mudeltekstina, ja trükkides otsingusse \"lorem ipsum\" võib leida veebilehti, mida ei ole veel nende õige sisuga täidetud. Aastatega on tekkinud mitmeid versioone, mõnikord kogemata, mõnikord meelega (huumori sisestamisega jne).\r\n\r\n', '2020-02-12 18:38:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_admin`, `password`, `email`, `deleted`, `name`) VALUES
(1, 1, '$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm', 'demo@example.com', 0, 'Demo User');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;