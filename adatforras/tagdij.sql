-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Okt 17. 17:28
-- Kiszolgáló verziója: 10.1.36-MariaDB
-- PHP verzió: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tagdij`
--
CREATE DATABASE IF NOT EXISTS `tagdij` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tagdij`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `befiz`
--

CREATE TABLE IF NOT EXISTS `befiz` (
  `azon` int(10) UNSIGNED NOT NULL,
  `datum` datetime NOT NULL,
  `osszeg` int(10) UNSIGNED NOT NULL,
  KEY `azon` (`azon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `befiz`
--

INSERT INTO `befiz` (`azon`, `datum`, `osszeg`) VALUES
(1001, '2020-01-11 16:25:00', 60000),
(1002, '2020-01-17 11:01:00', 5000),
(1004, '2020-01-21 15:40:00', 18000),
(1005, '2020-02-02 09:26:00', 24000),
(1004, '2020-02-04 11:47:00', 30000),
(1006, '2020-02-20 16:36:00', 9000),
(1007, '2020-02-21 13:44:00', 12000),
(1005, '2020-03-01 10:49:00', 8000),
(1007, '2020-03-06 14:52:00', 15000),
(1009, '2020-04-12 20:21:00', 20000),
(1004, '2020-05-10 12:00:00', 8000),
(1006, '2020-06-08 11:10:00', 4000),
(1010, '2020-06-22 17:22:00', 7000),
(1010, '2020-07-14 03:35:00', 8500),
(1012, '2020-07-19 12:48:00', 41000),
(1004, '2020-09-02 16:51:00', 11000),
(1006, '2020-09-05 14:34:00', 15000),
(1007, '2020-09-25 21:16:00', 4000),
(1012, '2020-10-01 13:13:00', 10000),
(1010, '2020-10-01 14:29:00', 5000),
(1012, '2020-10-12 16:54:00', 6000),
(1007, '2020-11-24 11:02:00', 14000),
(1009, '2020-11-25 10:48:00', 19000),
(1007, '2020-11-25 16:01:00', 17000),
(1002, '2020-11-29 13:34:00', 10000),
(1010, '2020-11-30 08:27:00', 12000),
(1004, '2020-12-12 22:02:00', 20000),
(1009, '2020-12-15 12:28:00', 25000),
(1002, '2020-12-23 19:42:00', 3000),
(1005, '2020-12-23 20:33:00', 7500),
(1002, '2020-12-29 10:00:00', 18000),
(1004, '2019-02-01 19:20:00', 71950),
(1005, '2017-03-11 12:40:00', 65750),
(1012, '2018-03-15 05:48:00', 32050),
(1004, '2018-11-03 23:00:00', 41250),
(1001, '2018-07-15 14:50:00', 16000),
(1004, '2021-04-30 19:41:00', 16600),
(1009, '2020-05-04 09:35:00', 52350),
(1010, '2016-08-25 06:11:00', 56750),
(1001, '2017-09-18 00:48:00', 25200),
(1009, '2018-12-21 13:38:00', 38850),
(1010, '2021-01-05 06:45:00', 39950),
(1009, '2016-08-16 02:45:00', 56800),
(1002, '2020-07-24 11:24:00', 64950),
(1009, '2019-05-16 05:34:00', 12650),
(1003, '2020-08-15 08:30:00', 60800),
(1002, '2020-10-09 12:47:00', 70000),
(1009, '2019-10-26 08:13:00', 36100),
(1009, '2019-04-23 13:15:00', 54550),
(1012, '2017-01-04 08:24:00', 21950),
(1002, '2018-11-09 22:05:00', 62400),
(1005, '2021-08-26 01:30:00', 51600),
(1003, '2020-11-10 22:43:00', 7400),
(1013, '2018-02-15 16:44:00', 44650),
(1013, '2020-01-18 03:42:00', 40650),
(1002, '2019-01-21 16:55:00', 50150),
(1007, '2020-08-07 14:29:00', 49200),
(1009, '2021-01-29 07:29:00', 13750),
(1010, '2016-06-12 18:36:00', 46300),
(1012, '2016-10-22 22:14:00', 72000),
(1012, '2019-07-11 16:26:00', 45500),
(1001, '2020-04-24 23:55:00', 74050),
(1002, '2021-09-12 00:45:00', 13300),
(1009, '2018-12-06 02:22:00', 65700),
(1004, '2016-11-10 08:07:00', 6400),
(1005, '2019-06-14 00:50:00', 48400),
(1005, '2018-06-10 13:04:00', 26100),
(1009, '2019-02-11 00:43:00', 74100),
(1003, '2021-03-31 01:21:00', 43100),
(1003, '2020-04-16 20:02:00', 16500),
(1001, '2019-07-06 03:24:00', 15700),
(1002, '2016-05-04 10:01:00', 72950),
(1009, '2019-12-08 19:14:00', 35250),
(1002, '2021-04-13 23:09:00', 8700),
(1005, '2019-04-30 15:01:00', 11000),
(1006, '2016-10-21 07:26:00', 15750),
(1012, '2020-12-04 10:50:00', 36650),
(1009, '2021-07-11 03:23:00', 63850),
(1005, '2021-04-23 17:30:00', 73750),
(1004, '2020-12-02 03:23:00', 33250),
(1006, '2021-03-21 03:24:00', 51300),
(1004, '2021-01-09 08:29:00', 9600),
(1006, '2018-09-13 05:37:00', 73650),
(1010, '2021-09-25 12:33:00', 73500),
(1003, '2020-12-31 07:54:00', 30900),
(1009, '2017-06-07 19:14:00', 36750),
(1004, '2016-08-10 09:07:00', 17200),
(1012, '2018-01-06 22:50:00', 26500),
(1009, '2016-12-07 05:44:00', 10650),
(1006, '2020-01-01 22:09:00', 28700),
(1009, '2017-12-01 17:23:00', 17550),
(1004, '2017-03-10 07:01:00', 48600),
(1007, '2018-03-30 13:13:00', 5100),
(1001, '2017-10-19 16:43:00', 44300),
(1007, '2016-09-13 18:10:00', 72200),
(1009, '2020-03-23 18:06:00', 49650),
(1009, '2019-11-07 17:54:00', 70900),
(1010, '2016-12-27 16:07:00', 65750),
(1003, '2021-05-18 23:32:00', 41850),
(1009, '2021-03-22 07:17:00', 36050),
(1013, '2016-05-29 00:31:00', 55150),
(1006, '2020-02-23 09:01:00', 68050),
(1003, '2018-06-23 19:19:00', 30800),
(1004, '2019-11-07 05:02:00', 18550),
(1002, '2017-06-12 08:03:00', 23500),
(1004, '2016-05-14 13:04:00', 39450),
(1010, '2020-05-15 21:03:00', 38950),
(1010, '2018-04-12 18:25:00', 20900),
(1004, '2018-07-15 19:47:00', 44750),
(1003, '2018-01-26 14:00:00', 17150),
(1002, '2019-07-18 02:16:00', 16100),
(1004, '2019-07-04 15:27:00', 26550),
(1007, '2017-01-20 19:19:00', 22900),
(1005, '2019-08-20 09:30:00', 62300),
(1009, '2017-03-08 23:16:00', 72400),
(1005, '2017-07-28 00:52:00', 57050),
(1001, '2021-08-06 20:54:00', 5050),
(1009, '2018-03-12 19:01:00', 32500),
(1006, '2018-10-18 11:30:00', 71450),
(1004, '2017-05-06 15:57:00', 9700),
(1009, '2020-08-03 10:40:00', 60350),
(1013, '2016-10-06 18:50:00', 30350),
(1004, '2018-03-18 21:23:00', 55300),
(1003, '2017-05-23 13:12:00', 34450),
(1003, '2016-05-08 12:58:00', 20400),
(1009, '2017-11-30 19:10:00', 9800),
(1013, '2016-08-06 11:14:00', 72250),
(1012, '2021-01-14 08:31:00', 69000),
(1012, '2016-08-01 17:31:00', 56900),
(1009, '2017-04-26 11:53:00', 33400),
(1003, '2019-07-30 10:51:00', 43450),
(1009, '2020-01-07 16:21:00', 17050),
(1002, '2019-04-03 15:37:00', 8650),
(1002, '2021-02-18 11:30:00', 57950),
(1009, '2017-01-19 02:05:00', 50400),
(1010, '2019-12-23 17:55:00', 17500),
(1004, '2019-07-18 17:25:00', 55600),
(1013, '2018-09-01 12:29:00', 35600),
(1001, '2020-03-29 15:52:00', 65950),
(1009, '2019-08-19 20:08:00', 71550),
(1010, '2019-09-04 00:20:00', 6150),
(1012, '2017-04-19 16:43:00', 40100),
(1013, '2018-07-26 10:14:00', 42250),
(1009, '2019-12-02 16:00:00', 27500),
(1013, '2019-02-06 17:35:00', 26400),
(1003, '2020-09-24 09:02:00', 29150),
(1006, '2017-03-26 12:48:00', 7100),
(1007, '2016-11-25 00:35:00', 41000),
(1009, '2021-05-10 21:12:00', 21500),
(1009, '2020-06-25 23:13:00', 44150),
(1013, '2019-06-16 06:00:00', 64200),
(1004, '2017-10-25 01:38:00', 46100),
(1009, '2020-04-11 07:32:00', 18600),
(1012, '2017-05-01 19:34:00', 26200),
(1012, '2020-11-30 18:23:00', 67150),
(1007, '2016-09-06 07:48:00', 22800),
(1005, '2017-07-22 14:19:00', 63650),
(1010, '2021-10-01 22:33:00', 41200),
(1009, '2017-08-07 19:26:00', 72650),
(1004, '2018-04-23 19:18:00', 60550),
(1001, '2018-06-08 08:14:00', 24700),
(1005, '2019-05-05 09:54:00', 8200),
(1006, '2019-10-01 13:11:00', 46400),
(1002, '2018-03-27 16:24:00', 21100),
(1004, '2019-08-11 21:48:00', 34350),
(1004, '2018-10-26 12:17:00', 70750),
(1009, '2017-11-04 21:38:00', 35300),
(1005, '2021-03-11 06:54:00', 42000),
(1003, '2019-01-26 05:32:00', 63550),
(1002, '2017-09-28 08:04:00', 13250),
(1010, '2017-12-13 12:56:00', 70100),
(1009, '2020-11-15 15:12:00', 44700),
(1006, '2021-09-19 21:29:00', 39800),
(1005, '2019-03-13 05:48:00', 16500),
(1006, '2019-09-09 21:02:00', 65150),
(1007, '2019-10-28 16:14:00', 70300),
(1002, '2017-12-16 20:45:00', 68200),
(1003, '2017-08-06 07:04:00', 49550),
(1009, '2021-01-30 23:13:00', 64600),
(1009, '2016-10-12 04:28:00', 35800),
(1006, '2020-01-14 11:45:00', 20250),
(1002, '2017-10-26 02:01:00', 25250),
(1010, '2018-10-22 14:51:00', 54950),
(1004, '2020-12-01 13:40:00', 22600),
(1013, '2021-09-24 18:37:00', 26500),
(1003, '2020-12-30 04:34:00', 20100),
(1013, '2019-10-05 01:43:00', 54750),
(1004, '2019-10-13 06:26:00', 66850),
(1009, '2019-12-15 14:17:00', 51400),
(1006, '2016-05-19 06:45:00', 25900),
(1013, '2020-10-12 21:14:00', 70050),
(1005, '2016-11-27 01:15:00', 23700),
(1002, '2021-08-31 23:27:00', 9700),
(1002, '2021-04-02 09:52:00', 62450),
(1003, '2016-07-30 20:59:00', 51450),
(1001, '2018-10-09 16:01:00', 18850),
(1012, '2020-12-26 11:53:00', 14700),
(1009, '2019-12-16 09:43:00', 9550),
(1002, '2016-06-23 16:49:00', 38350),
(1012, '2021-05-23 21:36:00', 69850),
(1012, '2018-05-26 19:56:00', 8150),
(1006, '2019-08-05 02:36:00', 6650),
(1013, '2017-05-02 14:44:00', 61450),
(1009, '2020-12-06 00:47:00', 47750),
(1013, '2018-05-31 05:43:00', 10550),
(1004, '2019-12-03 05:44:00', 19600),
(1003, '2019-02-16 06:38:00', 53000),
(1006, '2018-08-22 08:36:00', 61900),
(1004, '2017-08-31 02:18:00', 72700),
(1001, '2018-08-13 23:44:00', 58350),
(1010, '2021-05-22 21:16:00', 44400),
(1006, '2020-09-29 12:41:00', 18450),
(1005, '2018-05-08 23:11:00', 22300),
(1013, '2020-10-25 05:10:00', 65800),
(1004, '2018-04-12 02:03:00', 74300),
(1009, '2021-08-08 21:15:00', 55500),
(1003, '2019-08-20 23:15:00', 56800),
(1003, '2021-07-02 16:46:00', 12050),
(1001, '2016-09-24 08:05:00', 45550),
(1006, '2016-10-14 17:26:00', 28100),
(1010, '2017-12-16 23:43:00', 72100),
(1005, '2018-07-14 01:52:00', 9150),
(1009, '2018-06-26 15:36:00', 9100),
(1003, '2020-12-03 11:52:00', 53900),
(1009, '2018-08-22 17:05:00', 30350),
(1004, '2017-08-16 11:27:00', 6500),
(1013, '2018-02-25 02:54:00', 44400),
(1007, '2021-04-16 17:36:00', 10300),
(1005, '2021-09-18 13:08:00', 65350),
(1004, '2021-02-18 16:04:00', 69750),
(1009, '2020-06-09 02:39:00', 68500),
(1001, '2020-11-22 03:20:00', 32500),
(1010, '2016-10-19 21:22:00', 61200),
(1003, '2017-01-01 09:03:00', 41750),
(1007, '2018-10-16 01:38:00', 16000),
(1001, '2019-02-14 11:20:00', 31250),
(1009, '2020-07-08 13:10:00', 70900),
(1003, '2017-09-01 15:01:00', 56000),
(1004, '2021-02-01 15:22:00', 32550),
(1002, '2021-09-30 14:02:00', 31050),
(1005, '2017-09-11 06:09:00', 30500),
(1005, '2017-04-02 01:50:00', 27000),
(1005, '2021-07-19 19:04:00', 25900),
(1003, '2016-12-15 21:12:00', 6450),
(1004, '2020-11-02 19:32:00', 39950),
(1004, '2021-08-12 01:55:00', 52450),
(1004, '2019-10-14 02:29:00', 50450),
(1002, '2019-02-16 06:33:00', 49300),
(1001, '2019-10-29 21:21:00', 30200),
(1010, '2020-12-29 00:18:00', 39150),
(1002, '2019-09-28 16:09:00', 55450),
(1012, '2017-12-01 17:02:00', 74300),
(1012, '2021-09-17 07:15:00', 15000),
(1009, '2020-05-21 06:54:00', 74500),
(1013, '2017-01-18 07:31:00', 68800),
(1013, '2020-02-23 00:33:00', 43950),
(1003, '2021-07-27 09:46:00', 39150),
(1009, '2019-04-27 00:51:00', 40500),
(1004, '2016-06-22 13:43:00', 72600),
(1002, '2016-11-09 04:49:00', 23950),
(1005, '2019-02-22 06:03:00', 67850),
(1012, '2016-08-24 10:45:00', 52150),
(1009, '2019-03-17 23:26:00', 24350),
(1009, '2018-02-15 18:44:00', 40400),
(1010, '2020-02-09 15:50:00', 53250),
(1007, '2021-05-02 21:16:00', 10400),
(1010, '2016-07-21 17:26:00', 18500),
(1004, '2018-11-14 15:42:00', 33200),
(1003, '2021-04-16 07:26:00', 23200),
(1005, '2020-08-03 01:09:00', 68350),
(1003, '2017-06-03 10:55:00', 62450),
(1010, '2021-06-27 04:18:00', 17550),
(1006, '2020-10-22 18:14:00', 30900),
(1004, '2017-11-29 12:13:00', 50550),
(1012, '2018-05-21 22:41:00', 7750),
(1010, '2021-05-04 21:35:00', 25700),
(1003, '2016-07-21 12:42:00', 44500),
(1003, '2018-08-09 09:44:00', 27050),
(1012, '2020-07-26 07:57:00', 28150),
(1009, '2018-02-11 20:30:00', 37450),
(1012, '2018-11-18 04:24:00', 24500),
(1004, '2019-06-01 20:01:00', 10300),
(1012, '2018-02-08 02:49:00', 54700),
(1007, '2018-02-28 21:13:00', 8850),
(1006, '2016-07-29 02:29:00', 14900),
(1010, '2020-07-11 06:21:00', 63000),
(1004, '2016-10-31 19:25:00', 49050),
(1009, '2019-08-03 20:02:00', 71900),
(1010, '2020-04-14 14:05:00', 69300),
(1012, '2018-08-04 06:54:00', 39850),
(1012, '2020-04-19 03:10:00', 44850),
(1001, '2017-04-23 22:34:00', 15400),
(1012, '2017-05-28 10:26:00', 44400),
(1004, '2021-10-10 11:22:00', 37750),
(1002, '2019-08-01 04:05:00', 38300),
(1009, '2018-11-21 17:42:00', 14600),
(1009, '2021-06-16 23:05:00', 12400),
(1012, '2018-09-09 05:44:00', 40100),
(1005, '2020-12-28 02:03:00', 40600),
(1001, '2018-02-11 21:17:00', 53300),
(1013, '2018-05-10 00:20:00', 43700),
(1009, '2018-05-01 22:39:00', 72750),
(1006, '2020-06-28 08:21:00', 36550),
(1002, '2019-12-09 06:05:00', 48900),
(1009, '2021-05-15 16:41:00', 37400),
(1013, '2017-03-08 11:41:00', 33350),
(1009, '2020-03-25 01:13:00', 13450),
(1009, '2021-07-31 02:38:00', 45600),
(1002, '2019-05-13 01:13:00', 50950),
(1004, '2017-04-20 11:17:00', 10400),
(1006, '2018-11-07 21:04:00', 29250),
(1012, '2016-09-12 11:05:00', 39450),
(1007, '2020-04-28 17:12:00', 32500),
(1006, '2017-06-22 04:56:00', 24550),
(1007, '2017-11-14 04:04:00', 34400),
(1009, '2018-09-03 23:04:00', 24200),
(1010, '2020-09-11 16:08:00', 28700),
(1009, '2019-08-21 22:27:00', 37200),
(1002, '2020-08-29 01:55:00', 16450),
(1004, '2017-02-24 07:44:00', 13950),
(1013, '2018-10-06 22:17:00', 42600),
(1009, '2017-01-30 02:23:00', 28650),
(1012, '2019-06-02 16:54:00', 29650),
(1009, '2021-03-05 02:18:00', 11950),
(1013, '2016-11-06 23:09:00', 53750),
(1009, '2019-10-13 15:48:00', 43700),
(1009, '2020-05-24 03:55:00', 16450),
(1013, '2020-05-08 17:21:00', 58900),
(1009, '2020-06-17 13:14:00', 70250),
(1004, '2019-09-13 17:39:00', 50950),
(1001, '2017-05-07 19:55:00', 60800),
(1010, '2016-09-01 22:34:00', 24650),
(1004, '2016-08-20 23:09:00', 17950),
(1005, '2017-12-04 15:42:00', 8200),
(1013, '2019-10-12 22:00:00', 32400),
(1005, '2020-11-09 23:15:00', 59550),
(1007, '2020-05-20 18:01:00', 62200),
(1004, '2020-10-31 00:40:00', 56150),
(1001, '2017-11-26 15:08:00', 28900),
(1010, '2018-09-06 14:38:00', 70500),
(1013, '2020-12-20 17:52:00', 41150),
(1006, '2020-02-03 02:45:00', 21500),
(1007, '2018-01-07 07:30:00', 26700),
(1002, '2021-07-27 10:19:00', 22250),
(1002, '2020-08-15 01:06:00', 26150),
(1001, '2020-06-23 14:02:00', 40750),
(1004, '2020-04-05 07:30:00', 43050),
(1009, '2021-04-20 15:53:00', 11550),
(1005, '2020-11-22 04:05:00', 8700),
(1003, '2019-06-05 22:11:00', 6400),
(1006, '2017-09-18 10:44:00', 41300),
(1009, '2017-06-07 16:44:00', 52600),
(1001, '2018-07-13 16:54:00', 17850),
(1003, '2021-05-18 01:49:00', 53600),
(1002, '2021-08-21 01:27:00', 39600),
(1007, '2018-10-06 16:32:00', 29950),
(1005, '2017-04-22 12:22:00', 56450),
(1002, '2019-01-10 00:27:00', 10100),
(1004, '2021-05-20 12:13:00', 45350),
(1005, '2019-12-18 22:16:00', 28500),
(1010, '2018-06-20 09:00:00', 40150),
(1010, '2020-04-22 08:33:00', 19450),
(1006, '2020-08-03 01:58:00', 44950),
(1013, '2017-12-06 06:41:00', 44400),
(1006, '2020-09-09 11:20:00', 36150),
(1001, '2021-02-23 12:19:00', 15200),
(1009, '2020-07-09 03:29:00', 14100),
(1003, '2016-07-11 01:13:00', 53200),
(1003, '2020-04-08 06:43:00', 72950),
(1005, '2017-09-10 17:15:00', 10650),
(1004, '2020-04-06 15:33:00', 6300),
(1009, '2017-08-30 09:35:00', 24950),
(1009, '2016-11-13 21:19:00', 26500),
(1001, '2020-08-09 04:06:00', 31050),
(1010, '2016-07-01 18:34:00', 35100),
(1003, '2016-12-06 02:02:00', 68500),
(1001, '2020-12-05 09:44:00', 14700),
(1005, '2020-04-27 14:38:00', 72150),
(1012, '2020-03-30 07:42:00', 61550),
(1010, '2017-09-18 20:38:00', 8950),
(1006, '2017-12-26 13:29:00', 46350),
(1003, '2016-11-09 02:03:00', 43100),
(1012, '2019-10-22 05:43:00', 34900),
(1001, '2018-12-14 08:01:00', 11750),
(1004, '2016-11-27 11:34:00', 54950),
(1010, '2017-06-24 08:52:00', 33100),
(1005, '2018-08-13 23:23:00', 15450),
(1006, '2018-04-01 02:35:00', 29000),
(1009, '2018-02-24 15:09:00', 59500),
(1005, '2019-01-30 12:46:00', 15100),
(1010, '2017-04-23 16:32:00', 27950),
(1001, '2021-05-11 04:14:00', 69300),
(1003, '2020-09-26 05:39:00', 57950),
(1004, '2018-09-15 11:08:00', 10200),
(1009, '2019-09-06 02:53:00', 74600),
(1013, '2021-07-06 16:07:00', 57050),
(1009, '2021-07-07 03:17:00', 47650),
(1005, '2018-03-15 13:42:00', 71550),
(1013, '2017-06-14 17:55:00', 21950),
(1002, '2016-08-15 20:27:00', 24000),
(1013, '2020-07-27 13:35:00', 51050),
(1012, '2021-07-08 10:17:00', 6600),
(1007, '2021-07-22 19:16:00', 26200),
(1012, '2018-07-14 14:59:00', 66800),
(1002, '2021-02-13 03:56:00', 42150),
(1001, '2020-08-28 08:48:00', 66200),
(1003, '2020-06-20 17:27:00', 12200),
(1013, '2021-02-27 08:43:00', 61500),
(1009, '2018-07-25 23:07:00', 58850),
(1005, '2018-01-17 22:57:00', 32600),
(1004, '2017-05-09 22:07:00', 58650),
(1004, '2016-07-26 00:42:00', 72900),
(1009, '2021-01-08 23:09:00', 18650),
(1012, '2016-08-19 22:39:00', 20850),
(1003, '2016-11-25 23:27:00', 67250),
(1009, '2019-07-31 21:40:00', 66850),
(1009, '2016-11-11 12:27:00', 66450),
(1006, '2019-11-08 14:01:00', 13000),
(1001, '2018-05-10 06:20:00', 60950),
(1013, '2019-09-24 04:26:00', 54000),
(1006, '2016-09-07 07:02:00', 54950),
(1004, '2020-06-02 03:27:00', 45800),
(1001, '2018-07-03 20:09:00', 40650),
(1002, '2020-08-04 19:46:00', 38850),
(1001, '2018-04-02 12:51:00', 6200),
(1005, '2017-04-15 18:39:00', 62200),
(1010, '2016-05-03 04:00:00', 39700),
(1009, '2018-03-10 17:53:00', 24150),
(1004, '2017-05-03 16:05:00', 6350),
(1007, '2019-12-07 15:46:00', 17050),
(1012, '2019-04-18 06:38:00', 61350),
(1009, '2016-06-05 12:59:00', 70300),
(1004, '2021-07-19 18:53:00', 64950),
(1005, '2021-03-28 01:31:00', 29900),
(1007, '2019-06-23 16:10:00', 71500),
(1009, '2017-03-21 11:47:00', 35600),
(1009, '2020-05-06 02:11:00', 28100),
(1006, '2016-12-04 02:08:00', 35450),
(1004, '2019-03-01 05:29:00', 24100),
(1007, '2017-02-19 01:25:00', 19500),
(1006, '2017-06-03 13:16:00', 68750),
(1009, '2021-08-03 07:55:00', 35750),
(1013, '2017-04-15 13:38:00', 74100),
(1004, '2019-03-17 02:22:00', 51050),
(1009, '2017-10-28 13:02:00', 55100),
(1001, '2016-08-23 03:54:00', 6000),
(1013, '2017-07-18 08:25:00', 73950),
(1004, '2016-07-21 01:31:00', 23800),
(1004, '2018-08-17 11:00:00', 68100),
(1004, '2018-10-29 18:47:00', 28700),
(1004, '2018-05-24 08:36:00', 39250),
(1012, '2016-10-11 13:36:00', 56300),
(1001, '2020-05-25 00:43:00', 44400),
(1004, '2017-10-30 17:39:00', 13600),
(1005, '2018-01-08 22:26:00', 19500),
(1009, '2020-08-01 22:10:00', 50700),
(1013, '2017-10-28 19:38:00', 41150),
(1002, '2019-11-13 11:47:00', 14650),
(1010, '2019-10-31 10:46:00', 22750);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ugyfel`
--

CREATE TABLE IF NOT EXISTS `ugyfel` (
  `azon` int(10) UNSIGNED NOT NULL,
  `nev` varchar(30) NOT NULL,
  `szulev` smallint(4) UNSIGNED NOT NULL,
  `irszam` smallint(4) UNSIGNED NOT NULL,
  `orsz` varchar(3) NOT NULL,
  PRIMARY KEY (`azon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `ugyfel`
--

INSERT INTO `ugyfel` (`azon`, `nev`, `szulev`, `irszam`, `orsz`) VALUES
(1001, 'Buda Jenő', 1982, 1026, 'H'),
(1002, 'Makkos Mária', 1970, 1128, 'H'),
(1003, 'Pilis Csaba', 1992, 2442, 'H'),
(1004, 'Török Bálint', 1988, 2128, 'H'),
(1005, 'Szent Endre', 1962, 2000, 'H'),
(1006, 'Kis Marton', 1991, 9999, 'A'),
(1007, 'Békés Csaba', 1989, 4400, 'H'),
(1009, 'Dráva Szabolcs', 1985, 7520, 'H'),
(1010, 'Nagy Károly', 1975, 9999, 'RO'),
(1012, 'Boros Jenő', 1982, 9999, 'RO'),
(1013, 'Száva Magdolna', 1987, 9999, 'HR');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `befiz`
--
ALTER TABLE `befiz`
  ADD CONSTRAINT `befiz_ibfk_1` FOREIGN KEY (`azon`) REFERENCES `ugyfel` (`azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;