CREATE DATABASE  IF NOT EXISTS `world_pop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `world_pop`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: world_pop
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country` text,
  `population` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('Afghanistan',38928346),('Albania',2877797),('Algeria',43851044),('Andorra',77265),('Angola',32866272),('Antigua and Barbuda',97929),('Argentina',45195774),('Armenia',2963243),('Aruba',106766),('Australia',25499884),('Austria',9006398),('Azerbaijan',10139177),('Bahamas',393244),('Bahamas, The',393244),('Bahrain',1701575),('Bangladesh',164689383),('Barbados',287375),('Belarus',9449323),('Belgium',11589623),('Belize',397628),('Benin',12123200),('Bhutan',771608),('Bolivia',11673021),('Bosnia and Herzegovina',3280819),('Botswana',2351627),('Brazil',212559417),('Brunei',437479),('Bulgaria',6948445),('Burkina Faso',20903273),('Burundi',11890784),('Cabo Verde',555987),('Cambodia',16718965),('Cameroon',26545863),('Canada',37742154),('Cayman Islands',65722),('Central African Republic',4829767),('Chad',16425864),('Channel Islands',173863),('Chile',19116201),('China',1439323776),('Colombia',50882891),('Congo (Kinshasa)',5518087),('Costa Rica',5094118),('Cote d\'Ivoire',26378274),('Croatia',4105267),('Cuba',11326616),('Curacao',164093),('Cyprus',1207359),('Czech Republic',10708981),('Czechia',10708981),('Denmark',5792202),('Djibouti',988000),('Dominica',71986),('Dominican Republic',10847910),('Ecuador',17643054),('Egypt',102334404),('El Salvador',6486205),('Equatorial Guinea',1402985),('Eritrea',3546421),('Estonia',1326535),('Eswatini',1160164),('Ethiopia',114963588),('Fiji',896445),('Finland',5540720),('France',65273511),('French Guiana',298682),('Gabon',2225734),('Gambia',2416668),('Gambia, The',2416668),('Georgia',3989167),('Germany',83783942),('Ghana',31072940),('Gibraltar',33691),('Greece',10423054),('Greenland',56770),('Grenada',112523),('Guadeloupe',400124),('Guam',168775),('Guatemala',17915568),('Guinea',13132795),('Guinea-Bissau',1968001),('Guyana',786552),('Haiti',11402528),('Holy See',801),('Honduras',9904607),('Hong Kong',7496981),('Hong Kong SAR',7496981),('Hungary',9660351),('Iceland',341243),('India',1380004385),('Indonesia',273523615),('Iran',83992949),('Iran (Islamic Republic of)',83992949),('Iraq',40222493),('Ireland',4937786),('Israel',8655535),('Italy',60461826),('Ivory Coast',26238707),('Jamaica',2961167),('Japan',126476461),('Jordan',10203134),('Kazakhstan',18776707),('Kenya',53771296),('Kuwait',4270571),('Kyrgyzstan',6524195),('Laos',7275560),('Latvia',1886198),('Lebanon',6825445),('Liberia',5057681),('Libya',6871292),('Liechtenstein',38128),('Lithuania',2722289),('Luxembourg',625978),('Macao SAR',649335),('Macau',649335),('Madagascar',27691018),('Mainland China',1439323776),('Malawi',19129952),('Malaysia',32365999),('Maldives',540544),('Mali',20250833),('Malta',441543),('Martinique',375265),('Mauritania',4649658),('Mauritius',1271768),('Mayotte',272815),('Mexico',128932753),('Moldova',4033963),('Monaco',39242),('Mongolia',3278290),('Montenegro',628066),('Morocco',36910560),('Mozambique',31255435),('Namibia',2540905),('Nepal',29136808),('Netherlands',17134872),('New Zealand',4822233),('Nicaragua',6624554),('Niger',24206644),('Nigeria',206139589),('North Macedonia',2083374),('Norway',5421241),('Oman',5106626),('Pakistan',220892340),('Palestine',5101414),('Panama',4314767),('Papua New Guinea',8947024),('Paraguay',7132538),('Peru',32971854),('Philippines',109581078),('Poland',37846611),('Portugal',10196709),('Puerto Rico',2860853),('Qatar',2881053),('Republic of Korea',25778816),('Republic of the Congo',89561403),('Reunion',895312),('Romania',19237691),('Russia',145934462),('Rwanda',12952218),('Saint Barthelemy',9877),('Saint Kitts and Nevis',53199),('Saint Lucia',183627),('Saint Vincent and the Grenadines',110940),('San Marino',33931),('Sao Tome and Principe',219159),('Saudi Arabia',34813871),('Senegal',16743927),('Serbia',8737371),('Seychelles',98347),('Sierra Leone',7976983),('Singapore',5850342),('Slovakia',5459642),('Slovenia',2078938),('Somalia',15893222),('South Africa',59308690),('South Korea',51269185),('South Sudan',11193725),('Spain',46754778),('Sri Lanka',21413249),('St. Martin',38666),('Sudan',43849260),('Suriname',586632),('Sweden',10099265),('Switzerland',8654622),('Syria',17500658),('Taiwan',23816775),('Tanzania',59734218),('Thailand',69799978),('The Bahamas',393244),('The Gambia',2416668),('Timor-Leste',1318445),('Togo',8278724),('Trinidad and Tobago',1399488),('Tunisia',11818619),('Turkey',84339067),('Uganda',45741007),('UK',67886011),('Ukraine',43733762),('United Arab Emirates',9890402),('United Kingdom',67886011),('Uruguay',3473730),('US',331002651),('Uzbekistan',33469203),('Venezuela',28435940),('Viet Nam',97338579),('Vietnam',97338579),('Western Sahara',597339),('Yemen',29825964),('Zambia',18383955),('Zimbabwe',14862924);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-18  8:59:52
