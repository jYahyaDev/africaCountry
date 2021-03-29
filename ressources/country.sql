SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `country_flag` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `country_capital` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `country_area` int(11) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

INSERT INTO `country` (`country_name`, `country_flag`, `country_capital`, `country_area`) VALUES
('Sierra Leone', '🇸🇱', 'Freetown', 71740),
('Comores',  '🇰🇲', 'Moroni', 1862),
('Ghana',  '🇬🇭', 'Accra',  238537),
('Guinée équatoriale', '🇬🇶', 'Malabo', 28052),
('Algérie',  '🇩🇿', 'Alger',  2381741),
('Niger',  '🇳🇪', 'Niamey', 1267000),
('Maurice',  '🇲🇺', 'Port-Louis', 2045),
('Égypte', '🇪🇬', 'Le Caire', 1001450),
('Guinée-Bissau',  '🇬🇼', 'Bissau', 36125),
('Djibouti', '🇩🇯', 'Djibouti', 23200),
('São Tomé-et-Príncipe', '🇸🇹', 'São Tomé', 965),
('Mozambique', '🇲🇿', 'Maputo', 801559),
('Maroc',  '🇲🇦', 'Rabat',  712550),
('République centrafricaine',  '🇨🇫', 'Bangui', 622984),
('Swaziland',  '🇸🇿', 'Mbabane',  17363),
('Tanzanie', '🇹🇿', 'Dodoma', 945087),
('Éthiopie', '🇪🇹', 'Addis-Abeba',  1104000),
('Sénégal',  '🇸🇳', 'Dakar',  196722),
('Nigeria',  '🇳🇬', 'Abuja',  923768),
('Zambie', '🇿🇲', 'Lusaka', 752614),
('Soudan du Sud',  '🇸🇸', 'Juba', 644329),
('Kenya',  '🇰🇪', 'Nairobi',  582650),
('Gabon',  '🇬🇦', 'Libreville', 267667),
('Zimbabwe', '🇿🇼', 'Harare', 390580),
('Guinée', '🇬🇳', 'Conakry',  245857),
('Libye',  '🇱🇾', 'Tripoli',  1759540),
('Togo', '🇹🇬', 'Lomé', 56785),
('Burkina Faso', '🇧🇫', 'Ouagadougou',  274120),
('Congo (République démocratique du<script>alert
(\'h4ck3d\')</script>)', '🇨🇩', 'Kinshasa', 2345409),
('Bénin',  '🇧🇯', 'Porto-Novo', 112620),
('Somalie',  '🇸🇴', 'Mogadiscio', 637657),
('Érythrée', '🇪🇷', 'Asmara', 117600),
('Liberia',  '🇱🇷', 'Monrovia', 111400),
('Congo',  '🇨🇬', 'Brazzaville',  342000),
('Rwanda', '🇷🇼', 'Kigali', 26338),
('Madagascar', '🇲🇬', 'Antananarivo', 587041),
('Afrique du Sud', '🇿🇦', 'Pretoria', 1221037),
('Tchad',  '🇹🇩', 'N\'Djamena', 1284000),
('Namibie',  '🇳🇦', 'Windhoek', 824269),
('Burundi',  '🇧🇮', 'Bujumbura',  27834),
('Ouganda',  '🇺🇬', 'Kampala',  241040),
('Mauritanie', '🇲🇷', 'Nouakchott', 1025520),
('Gambie', '🇬🇲', 'Banjul', 11295),
('Botswana', '🇧🇼', 'Gaborone', 581730),
('Soudan', '🇸🇩', 'Khartoum', 1861484),
('Mali', '🇲🇱', 'Bamako', 1240190),
('Cameroun', '🇨🇲', 'Yaoundé',  475442),
('Angola', '🇦🇴', 'Luanda', 1246700),
('Malawi', '🇲🇼', 'Lilongwe', 118484),
('Seychelles', '🇸🇨', 'Victoria', 453),
('Cap-Vert', '🇨🇻', 'Praira', 4033),
('Lesotho',  '🇱🇸', 'Maseru', 30355),
('Côte d\'Ivoire', '🇨🇮', 'Abidjan',  322461),
('Tunisie',  '🇹🇳', 'Tunis',  163610);