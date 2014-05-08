-- ----------------------------------------------------------------------
-- Discuz!ML (Multilingual) (C) 2008-2014 Codersclub.org
--
-- All the Countries SUBDIVISIONS
-- (Regions, States, Provinces, etc.)
--
-- by Valery Votintsev, http://codersclub.org/discuzx/?1
-- ----------------------------------------------------------------------

-- SET NAMES utf8;

-- DROP TABLE IF EXISTS pre_common_district;
-- CREATE TABLE pre_common_district (
--   id int(11) unsigned NOT NULL AUTO_INCREMENT,
--   `name` varchar(255) NOT NULL DEFAULT '',
--   `level` int(11) unsigned NOT NULL DEFAULT '0',
--   usetype tinyint(1) unsigned NOT NULL DEFAULT '0',
--   upid int(11) unsigned NOT NULL DEFAULT '0',
--   displayorder int(11) NOT NULL DEFAULT '0',
--   `code` varchar(64) NOT NULL DEFAULT '',
--   PRIMARY KEY (id),
--   KEY upid (upid,displayorder)
-- );

-- 10) ADD NEW SUBDISVISIONS (Regions/States/Provinces)

--  'Abkhazia', 'AB', 'ABK'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48001, 2, 45120, 3, 'GG', 'Gagra'),
(48002, 2, 45120, 3, 'GD', 'Gudauta'),
(48003, 2, 45120, 3, 'SH', 'Sukhum'),
(48004, 2, 45120, 3, 'GR', 'Gulripsh'),
(48005, 2, 45120, 3, 'OC', 'Ochamchira'),
(48006, 2, 45120, 3, 'TQ', 'Tquarchal'),
(48007, 2, 45120, 3, 'GL', 'Gali');

--  'Andorra', 'AD', 'AND'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48101, 2, 45130, 3, 'AN', 'Andorra la Vella'),
(48102, 2, 45130, 3, 'CA', 'Canillo'),
(48103, 2, 45130, 3, 'EN', 'Encamp'),
(48104, 2, 45130, 3, 'EE', 'Escaldes-Engordany'),
(48105, 2, 45130, 3, 'MA', 'La Massana'),
(48106, 2, 45130, 3, 'OR', 'Ordino'),
(48107, 2, 45130, 3, 'JL', 'Sant Julia de Loria');

--  'United Arab Emirates', 'AE', 'ARE'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48201, 2, 45140, 3, 'AZ', 'Abu Dhaby'),
(48202, 2, 45140, 3, 'AJ', 'Ajman'),
(48203, 2, 45140, 3, 'FU', 'Al Fujayrah'),
(48204, 2, 45140, 3, 'SH', 'Ash Shariqah'),
(48205, 2, 45140, 3, 'DU', 'Dubayy'),
(48206, 2, 45140, 3, 'RK', 'R\'as al Khaymah'),
(48207, 2, 45140, 3, 'UQ', 'Umm al Qaywayn');

--  'Afghanistan', 'AF', 'AFG'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48301, 2, 45150, 3, 'BDS', 'Badakhshan'),
(48302, 2, 45150, 3, 'BDG', 'Badghis'),
(48303, 2, 45150, 3, 'BGL', 'Baghlan'),
(48304, 2, 45150, 3, 'BAL', 'Balkh'),
(48305, 2, 45150, 3, 'BAM', 'Bamian'),
(48306, 2, 45150, 3, 'FRA', 'Farah'),
(48307, 2, 45150, 3, 'FYB', 'Faryab'),
(48308, 2, 45150, 3, 'GHA', 'Ghazni'),
(48309, 2, 45150, 3, 'GHO', 'Ghowr'),
(48310, 2, 45150, 3, 'HEL', 'Helmand'),
(48311, 2, 45150, 3, 'HER', 'Herat'),
(48312, 2, 45150, 3, 'JOW', 'Jowzjan'),
(48313, 2, 45150, 3, 'KAB', 'Kabul'),
(48314, 2, 45150, 3, 'KAN', 'Kandahar'),
(48315, 2, 45150, 3, 'KAP', 'Kapisa'),
(48316, 2, 45150, 3, 'KHO', 'Khost'),
(48317, 2, 45150, 3, 'KNR', 'Konar'),
(48318, 2, 45150, 3, 'KDZ', 'Kondoz'),
(48319, 2, 45150, 3, 'LAG', 'Laghman'),
(48320, 2, 45150, 3, 'LOW', 'Lowgar'),
(48321, 2, 45150, 3, 'NAN', 'Nangrahar'),
(48322, 2, 45150, 3, 'NIM', 'Nimruz'),
(48323, 2, 45150, 3, 'NUR', 'Nurestan'),
(48324, 2, 45150, 3, 'ORU', 'Oruzgan'),
(48325, 2, 45150, 3, 'PIA', 'Paktia'),
(48326, 2, 45150, 3, 'PKA', 'Paktika'),
(48327, 2, 45150, 3, 'PAR', 'Parwan'),
(48328, 2, 45150, 3, 'SAM', 'Samangan'),
(48329, 2, 45150, 3, 'SAR', 'Sar-e Pol'),
(48330, 2, 45150, 3, 'TAK', 'Takhar'),
(48331, 2, 45150, 3, 'WAR', 'Wardak'),
(48332, 2, 45150, 3, 'ZAB', 'Zabol');

--  'Antigua and Barbuda', 'AG', 'ATG'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48401, 2, 45160, 3, 'BB', 'Barbuda'),
(48402, 2, 45160, 3, 'RD', 'Redonda'),
(48403, 2, 45160, 3, 'GE', 'Saint George'),
(48404, 2, 45160, 3, 'JO', 'Saint John'),
(48405, 2, 45160, 3, 'MA', 'Saint Mary'),
(48406, 2, 45160, 3, 'PA', 'Saint Paul'),
(48407, 2, 45160, 3, 'PE', 'Saint Peter'),
(48408, 2, 45160, 3, 'PH', 'Saint Philip');

--  'Anguilla', 'AI', 'AIA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48501, 2, 45170, 3, 'BP', 'Blowing Point'),
(48502, 2, 45170, 3, 'EE', 'East End'),
(48503, 2, 45170, 3, 'GH', 'George Hill'),
(48504, 2, 45170, 3, 'IH', 'Island Harbour'),
(48505, 2, 45170, 3, 'NH', 'North Hill'),
(48506, 2, 45170, 3, 'NS', 'North Side'),
(48507, 2, 45170, 3, 'SG', 'Sandy Ground'),
(48508, 2, 45170, 3, 'SH', 'Sandy Hill'),
(48509, 2, 45170, 3, 'SO', 'South Hill'),
(48510, 2, 45170, 3, 'ST', 'Stoney Ground'),
(48511, 2, 45170, 3, 'TF', 'The Farrington'),
(48512, 2, 45170, 3, 'TQ', 'The Quarter'),
(48513, 2, 45170, 3, 'TV', 'The Valley'),
(48514, 2, 45170, 3, 'WE', 'West End');

--  'Albania', 'AL', 'ALB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48601, 2, 45180, 3, 'BR', 'Berat'),
(48602, 2, 45180, 3, 'BU', 'Bulqize'),
(48603, 2, 45180, 3, 'DL', 'Delvine'),
(48604, 2, 45180, 3, 'DV', 'Devoll'),
(48605, 2, 45180, 3, 'DI', 'Diber'),
(48606, 2, 45180, 3, 'DR', 'Durres'),
(48607, 2, 45180, 3, 'EL', 'Elbasan'),
(48608, 2, 45180, 3, 'ER', 'Kolonje'),
(48609, 2, 45180, 3, 'FR', 'Fier'),
(48610, 2, 45180, 3, 'GJ', 'Gjirokaster'),
(48611, 2, 45180, 3, 'GR', 'Gramsh'),
(48612, 2, 45180, 3, 'HA', 'Has'),
(48613, 2, 45180, 3, 'KA', 'Kavaje'),
(48614, 2, 45180, 3, 'KB', 'Kurbin'),
(48615, 2, 45180, 3, 'KC', 'Kucove'),
(48616, 2, 45180, 3, 'KO', 'Korce'),
(48617, 2, 45180, 3, 'KR', 'Kruje'),
(48618, 2, 45180, 3, 'KU', 'Kukes'),
(48619, 2, 45180, 3, 'LB', 'Librazhd'),
(48620, 2, 45180, 3, 'LE', 'Lezhe'),
(48621, 2, 45180, 3, 'LU', 'Lushnje'),
(48622, 2, 45180, 3, 'MM', 'Malesi e Madhe'),
(48623, 2, 45180, 3, 'MK', 'Mallakaster'),
(48624, 2, 45180, 3, 'MT', 'Mat'),
(48625, 2, 45180, 3, 'MR', 'Mirdite'),
(48626, 2, 45180, 3, 'PQ', 'Peqin'),
(48627, 2, 45180, 3, 'PR', 'Permet'),
(48628, 2, 45180, 3, 'PG', 'Pogradec'),
(48629, 2, 45180, 3, 'PU', 'Puke'),
(48630, 2, 45180, 3, 'SH', 'Shkoder'),
(48631, 2, 45180, 3, 'SK', 'Skrapar'),
(48632, 2, 45180, 3, 'SR', 'Sarande'),
(48633, 2, 45180, 3, 'TE', 'Tepelene'),
(48634, 2, 45180, 3, 'TP', 'Tropoje'),
(48635, 2, 45180, 3, 'TR', 'Tirane'),
(48636, 2, 45180, 3, 'VL', 'Vlore');

--  'Armenia', 'AM', 'ARM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48701, 2, 45190, 3, 'AG', 'Aragatsotn'),
(48702, 2, 45190, 3, 'AR', 'Ararat'),
(48703, 2, 45190, 3, 'AV', 'Armavir'),
(48704, 2, 45190, 3, 'GR', 'Geghark\'unik\''),
(48705, 2, 45190, 3, 'KT', 'Kotayk\''),
(48706, 2, 45190, 3, 'LO', 'Lorri'),
(48707, 2, 45190, 3, 'SH', 'Shirak'),
(48708, 2, 45190, 3, 'SU', 'Syunik\''),
(48709, 2, 45190, 3, 'TV', 'Tavush'),
(48710, 2, 45190, 3, 'VD', 'Vayots\' Dzor'),
(48711, 2, 45190, 3, 'ER', 'Yerevan');

--  'Netherlands Antilles', 'AN', 'ANT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48801, 2, 45200, 3, 'AR', 'Aruba'),
(48802, 2, 45200, 3, 'BO', 'Bonaire'),
(48803, 2, 45200, 3, 'CU', 'Curachao'),
(48804, 2, 45200, 3, 'SB', 'Saba'),
(48805, 2, 45200, 3, 'SE', 'Sint Eustatius'),
(48806, 2, 45200, 3, 'SM', 'Sint Maarten');

--  'Angola', 'AO', 'AGO'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(48901, 2, 45210, 3, 'BGO', 'Bengo'),
(48902, 2, 45210, 3, 'BGU', 'Benguela'),
(48903, 2, 45210, 3, 'BIE', 'Bie'),
(48904, 2, 45210, 3, 'CAB', 'Cabinda'),
(48905, 2, 45210, 3, 'CCU', 'Cuando-Cubango'),
(48906, 2, 45210, 3, 'CNO', 'Cuanza Norte'),
(48907, 2, 45210, 3, 'CUS', 'Cuanza Sul'),
(48908, 2, 45210, 3, 'CNN', 'Cunene'),
(48909, 2, 45210, 3, 'HUA', 'Huambo'),
(48910, 2, 45210, 3, 'HUI', 'Huila'),
(48911, 2, 45210, 3, 'LUA', 'Luanda'),
(48912, 2, 45210, 3, 'LNO', 'Lunda Norte'),
(48913, 2, 45210, 3, 'LSU', 'Lunda Sul'),
(48914, 2, 45210, 3, 'MAL', 'Malange'),
(48915, 2, 45210, 3, 'MOX', 'Moxico'),
(48916, 2, 45210, 3, 'NAM', 'Namibe'),
(48917, 2, 45210, 3, 'UIG', 'Uige'),
(48918, 2, 45210, 3, 'ZAI', 'Zaire');

--  'AP', 'Asia/Pacific Region'

--  'Antarctica', 'AQ', 'ATA'

--  'Argentina', 'AR', 'ARG'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(49201, 2, 563, 3, 'AN', 'Antartida e Islas del Atlantico'),
(49202, 2, 563, 3, 'BA', 'Buenos Aires'),
(49203, 2, 563, 3, 'CA', 'Catamarca'),
(49204, 2, 563, 3, 'CH', 'Chaco'),
(49205, 2, 563, 3, 'CU', 'Chubut'),
(49206, 2, 563, 3, 'CO', 'Cordoba'),
(49207, 2, 563, 3, 'CR', 'Corrientes'),
(49208, 2, 563, 3, 'DF', 'Distrito Federal'),
(49209, 2, 563, 3, 'ER', 'Entre Rios'),
(49210, 2, 563, 3, 'FO', 'Formosa'),
(49211, 2, 563, 3, 'JU', 'Jujuy'),
(49212, 2, 563, 3, 'LP', 'La Pampa'),
(49213, 2, 563, 3, 'LR', 'La Rioja'),
(49214, 2, 563, 3, 'ME', 'Mendoza'),
(49215, 2, 563, 3, 'MI', 'Misiones'),
(49216, 2, 563, 3, 'NE', 'Neuquen'),
(49217, 2, 563, 3, 'RN', 'Rio Negro'),
(49218, 2, 563, 3, 'SA', 'Salta'),
(49219, 2, 563, 3, 'SJ', 'San Juan'),
(49220, 2, 563, 3, 'SL', 'San Luis'),
(49221, 2, 563, 3, 'SC', 'Santa Cruz'),
(49222, 2, 563, 3, 'SF', 'Santa Fe'),
(49223, 2, 563, 3, 'SD', 'Santiago del Estero'),
(49224, 2, 563, 3, 'TF', 'Tierra del Fuego'),
(49225, 2, 563, 3, 'TU', 'Tucuman');

--  'American Samoa', 'AS', 'ASM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(49301, 2, 45240, 3, 'FA', 'Faleasao'),
(49302, 2, 45240, 3, 'FI', 'Fitiuta'),
(49303, 2, 45240, 3, 'IT', 'Ituau'),
(49304, 2, 45240, 3, 'LL', 'Lealataua'),
(49305, 2, 45240, 3, 'LS', 'Leasina'),
(49306, 2, 45240, 3, 'MA', 'Ma\'oputasi'),
(49307, 2, 45240, 3, 'OF', 'Ofu'),
(49308, 2, 45240, 3, 'OL', 'Olosega'),
(49309, 2, 45240, 3, 'SA', 'Sa\'ole'),
(49310, 2, 45240, 3, 'SU', 'Sua'),
(49311, 2, 45240, 3, 'SW', 'Swains'),
(49312, 2, 45240, 3, 'TA', 'Ta\'u'),
(49313, 2, 45240, 3, 'TI', 'Tualatai'),
(49314, 2, 45240, 3, 'TU', 'Tualauta'),
(49315, 2, 45240, 3, 'VA', 'Vaifanua');

--  'Austria', 'AT', 'AUT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(49401, 2, 551, 3, 'BU', 'Burgenland'),
(49402, 2, 551, 3, 'KA', 'Carinthia'),
(49403, 2, 551, 3, 'NO', 'Lower Austria'),
(49404, 2, 551, 3, 'OO', 'Upper Austria'),
(49405, 2, 551, 3, 'SZ', 'Salzburg'),
(49406, 2, 551, 3, 'ST', 'Styria'),
(49407, 2, 551, 3, 'TR', 'Tirol'),
(49408, 2, 551, 3, 'VO', 'Vorarlberg'),
(49409, 2, 551, 3, 'WI', 'Wien');

--  'Australia', 'AU', 'AUS'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(49501, 2, 537, 3, 'ACT', 'Australian Capitol Territory'),
(49502, 2, 537, 3, 'NSW', 'New South Wales'),
(49503, 2, 537, 3, 'NT',  'Northern Territory'),
(49504, 2, 537, 3, 'QLD', 'Queensland'),
(49505, 2, 537, 3, 'SA',  'South Australia'),
(49506, 2, 537, 3, 'TAS', 'Tasmania'),
(49507, 2, 537, 3, 'VIC', 'Victoria'),
(49508, 2, 537, 3, 'WA',  'Western Australia');

--  'AW', 'Aruba'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(49601, 2, 45250, 3, 'NO', 'Noord'),
(49602, 2, 45250, 3, 'OW', 'Oranjestad West'),
(49603, 2, 45250, 3, 'OO', 'Oranjestad Oost'),
(49604, 2, 45250, 3, 'PR', 'Paradera'),
(49605, 2, 45250, 3, 'SC', 'Santa Cruz'),
(49606, 2, 45250, 3, 'SV', 'Savaneta'),
(49607, 2, 45250, 3, 'SN', 'San Nicolaas Noord'),
(49608, 2, 45250, 3, 'SZ', 'San Nicolaas Zuid');

--  'AX', 'Aland Islands'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(49701, 2, 45260, 3, 'BR', 'Brando'),
(49702, 2, 45260, 3, 'EC', 'Eckero'),
(49703, 2, 45260, 3, 'FN', 'Finstrom'),
(49704, 2, 45260, 3, 'FG', 'Foglo'),
(49705, 2, 45260, 3, 'GT', 'Geta'),
(49706, 2, 45260, 3, 'HM', 'Hammarland'),
(49707, 2, 45260, 3, 'JM', 'Jomala'),
(49708, 2, 45260, 3, 'KK', 'Kokar'),
(49709, 2, 45260, 3, 'KM', 'Kumlinge'),
(49710, 2, 45260, 3, 'LE', 'Lemland'),
(49711, 2, 45260, 3, 'LU', 'Lumparland'),
(49712, 2, 45260, 3, 'MH', 'Mariehamn'),
(49713, 2, 45260, 3, 'SV', 'Saltvik'),
(49714, 2, 45260, 3, 'ST', 'Sottunga'),
(49715, 2, 45260, 3, 'SD', 'Sund'),
(49716, 2, 45260, 3, 'VR', 'Vardo');

--  'Azerbaijan', 'AZ', 'AZE'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(49801, 2, 45270, 3, 'AB',  'Ali Bayramli'),
(49802, 2, 45270, 3, 'ABS', 'Abseron'),
(49803, 2, 45270, 3, 'AGC', 'AgcabAdi'),
(49804, 2, 45270, 3, 'AGM', 'Agdam'),
(49805, 2, 45270, 3, 'AGS', 'Agdas'),
(49806, 2, 45270, 3, 'AGA', 'Agstafa'),
(49807, 2, 45270, 3, 'AGU', 'Agsu'),
(49808, 2, 45270, 3, 'AST', 'Astara'),
(49809, 2, 45270, 3, 'BA',  'Baki'),
(49810, 2, 45270, 3, 'BAB', 'BabAk'),
(49811, 2, 45270, 3, 'BAL', 'BalakAn'),
(49812, 2, 45270, 3, 'BAR', 'BArdA'),
(49813, 2, 45270, 3, 'BEY', 'Beylaqan'),
(49814, 2, 45270, 3, 'BIL', 'Bilasuvar'),
(49815, 2, 45270, 3, 'CAB', 'Cabrayil'),
(49816, 2, 45270, 3, 'CAL', 'Calilabab'),
(49817, 2, 45270, 3, 'CUL', 'Culfa'),
(49818, 2, 45270, 3, 'DAS', 'Daskasan'),
(48819, 2, 45270, 3, 'DAV', 'Davaci'),
(49820, 2, 45270, 3, 'FUZ', 'Fuzuli'),
(49821, 2, 45270, 3, 'GA',  'Ganca'),
(49822, 2, 45270, 3, 'GAD', 'Gadabay'),
(49823, 2, 45270, 3, 'GOR', 'Goranboy'),
(49824, 2, 45270, 3, 'GOY', 'Goycay'),
(49825, 2, 45270, 3, 'HAC', 'Haciqabul'),
(49826, 2, 45270, 3, 'IMI', 'Imisli'),
(49827, 2, 45270, 3, 'ISM', 'Ismayilli'),
(49828, 2, 45270, 3, 'KAL', 'Kalbacar'),
(49829, 2, 45270, 3, 'KUR', 'Kurdamir'),
(49830, 2, 45270, 3, 'LA',  'Lankaran'),
(49831, 2, 45270, 3, 'LAC', 'Lacin'),
(49832, 2, 45270, 3, 'LAN', 'Lankaran'),
(49833, 2, 45270, 3, 'LER', 'Lerik'),
(49834, 2, 45270, 3, 'MAS', 'Masalli'),
(49835, 2, 45270, 3, 'MI',  'Mingacevir'),
(49836, 2, 45270, 3, 'NA',  'Naftalan'),
(49837, 2, 45270, 3, 'NEF', 'Neftcala'),
(49838, 2, 45270, 3, 'OGU', 'Oguz'),
(49839, 2, 45270, 3, 'ORD', 'Ordubad'),
(49840, 2, 45270, 3, 'QAB', 'Qabala'),
(49841, 2, 45270, 3, 'QAX', 'Qax'),
(49842, 2, 45270, 3, 'QAZ', 'Qazax'),
(49843, 2, 45270, 3, 'QOB', 'Qobustan'),
(49844, 2, 45270, 3, 'QBA', 'Quba'),
(49845, 2, 45270, 3, 'QBI', 'Qubadli'),
(49846, 2, 45270, 3, 'QUS', 'Qusar'),
(49847, 2, 45270, 3, 'SA',  'Saki'),
(49848, 2, 45270, 3, 'SAT', 'Saatli'),
(49849, 2, 45270, 3, 'SAB', 'Sabirabad'),
(49850, 2, 45270, 3, 'SAD', 'Sadarak'),
(49851, 2, 45270, 3, 'SAH', 'Sahbuz'),
(49852, 2, 45270, 3, 'SAK', 'Saki'),
(49853, 2, 45270, 3, 'SAL', 'Salyan'),
(49854, 2, 45270, 3, 'SM',  'Sumqayit'),
(49855, 2, 45270, 3, 'SMI', 'Samaxi'),
(49856, 2, 45270, 3, 'SKR', 'Samkir'),
(49857, 2, 45270, 3, 'SMX', 'Samux'),
(49858, 2, 45270, 3, 'SAR', 'Sarur'),
(49859, 2, 45270, 3, 'SIY', 'Siyazan'),
(49860, 2, 45270, 3, 'SS',  'Susa'),
(49861, 2, 45270, 3, 'SUS', 'Susa'),
(49862, 2, 45270, 3, 'TAR', 'Tartar'),
(49863, 2, 45270, 3, 'TOV', 'Tovuz'),
(49864, 2, 45270, 3, 'UCA', 'Ucar'),
(49865, 2, 45270, 3, 'XA',  'Xankandi'),
(49866, 2, 45270, 3, 'XAC', 'Xacmaz'),
(49867, 2, 45270, 3, 'XAN', 'Xanlar'),
(49868, 2, 45270, 3, 'XIZ', 'Xizi'),
(49869, 2, 45270, 3, 'XCI', 'Xocali'),
(49870, 2, 45270, 3, 'XVD', 'Xocavand'),
(49871, 2, 45270, 3, 'YAR', 'Yardimli'),
(49872, 2, 45270, 3, 'YEV', 'Yevlax'),
(49873, 2, 45270, 3, 'ZAN', 'Zangilan'),
(49874, 2, 45270, 3, 'ZAQ', 'Zaqatala'),
(49875, 2, 45270, 3, 'ZAR', 'Zardab'),
(49876, 2, 45270, 3, 'NX',  'Naxcivan');

--  'Bosnia and Herzegowina', 'BA', 'BIH'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(49901, 2, 45280, 3, 'BR', 'Brcko district'),
(49902, 2, 45280, 3, 'BP', 'Bosansko-Podrinjski Kanton'),
(49903, 2, 45280, 3, 'HN', 'Hercegovacko-Neretvanski Kanton'),
(49904, 2, 45280, 3, 'PO', 'Posavski Kanton'),
(49905, 2, 45280, 3, 'SA', 'Sarajevo Kanton'),
(49906, 2, 45280, 3, 'SB', 'Srednje-Bosanski Kanton'),
(49907, 2, 45280, 3, 'TU', 'Tuzlanski Kanton'),
(49908, 2, 45280, 3, 'US', 'Unsko-Sanski Kanton'),
(49909, 2, 45280, 3, 'ZB', 'Zapadno-Bosanski Kanton'),
(49910, 2, 45280, 3, 'ZD', 'Zenicko-Dobojski Kanton'),
(49911, 2, 45280, 3, 'ZH', 'Zapadno-Hercegovacki Kanton'),
(49912, 2, 45280, 3, 'BL', 'Banja Luka'),
(49913, 2, 45280, 3, 'BH', 'Bihach'),
(49914, 2, 45280, 3, 'DO', 'Doboj'),
(49915, 2, 45280, 3, 'GO', 'Gorazhde'),
(49916, 2, 45280, 3, 'JJ', 'Jajce'),
(49917, 2, 45280, 3, 'LI', 'Livno'),
(49918, 2, 45280, 3, 'MO', 'Mostar'),
(49919, 2, 45280, 3, 'TR', 'Trebinje'),
(49920, 2, 45280, 3, 'SR', 'Republika Srpska');

--  'Barbados', 'BB', 'BRB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(50000, 2, 45290, 3, 'CC', 'Christ Church'),
(50001, 2, 45290, 3, 'AN', 'Saint Andrew'),
(50002, 2, 45290, 3, 'GE', 'Saint George'),
(50003, 2, 45290, 3, 'JM', 'Saint James'),
(50004, 2, 45290, 3, 'JN', 'Saint John'),
(50005, 2, 45290, 3, 'JS', 'Saint Joseph'),
(50006, 2, 45290, 3, 'LU', 'Saint Lucy'),
(50007, 2, 45290, 3, 'MI', 'Saint Michael'),
(50008, 2, 45290, 3, 'PE', 'Saint Peter'),
(50009, 2, 45290, 3, 'PH', 'Saint Philip'),
(50010, 2, 45290, 3, 'TH', 'Saint Thomas');

--  'Bangladesh', 'BD', 'BGD'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(50201, 2, 45300, 3, 'BA', 'Barisal'),
(50202, 2, 45300, 3, 'CG', 'Chittagong'),
(50203, 2, 45300, 3, 'DA', 'Dhaka'),
(50204, 2, 45300, 3, 'KH', 'Khulna'),
(50205, 2, 45300, 3, 'RS', 'Rajshahi'),
(50206, 2, 45300, 3, 'SY', 'Sylhet');

--  'Belgium', 'BE', 'BEL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(50301, 2, 45310, 3, 'VAN', 'Antwerpen'),
(50302, 2, 45310, 3, 'WBR', 'Brabant Wallon'),
(50303, 2, 45310, 3, 'WHT', 'Hainaut'),
(50304, 2, 45310, 3, 'WLG', 'Liege'),
(50305, 2, 45310, 3, 'VLI', 'Limburg'),
(50306, 2, 45310, 3, 'WLX', 'Luxembourg'),
(50307, 2, 45310, 3, 'WNA', 'Namur'),
(50308, 2, 45310, 3, 'VOV', 'Oost-Vlaanderen'),
(50309, 2, 45310, 3, 'VBR', 'Vlaams Brabant'),
(50310, 2, 45310, 3, 'VWV', 'West-Vlaanderen');

--  'Burkina Faso', 'BF', 'BFA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(50401, 2, 45320, 3, 'BAL', 'Bale'),
(50402, 2, 45320, 3, 'BAM', 'Bam'),
(50403, 2, 45320, 3, 'BAN', 'Banwa'),
(50404, 2, 45320, 3, 'BAZ', 'Bazega'),
(50405, 2, 45320, 3, 'BOR', 'Bougouriba'),
(50406, 2, 45320, 3, 'BLG', 'Boulgou'),
(50407, 2, 45320, 3, 'BOK', 'Boulkiemde'),
(50408, 2, 45320, 3, 'COM', 'Comoe'),
(50409, 2, 45320, 3, 'GAN', 'Ganzourgou'),
(50410, 2, 45320, 3, 'GNA', 'Gnagna'),
(50411, 2, 45320, 3, 'GOU', 'Gourma'),
(50412, 2, 45320, 3, 'HOU', 'Houet'),
(50413, 2, 45320, 3, 'IOA', 'Ioba'),
(50414, 2, 45320, 3, 'KAD', 'Kadiogo'),
(50415, 2, 45320, 3, 'KEN', 'Kenedougou'),
(50416, 2, 45320, 3, 'KOD', 'Komondjari'),
(50417, 2, 45320, 3, 'KOP', 'Kompienga'),
(50418, 2, 45320, 3, 'KOS', 'Kossi'),
(50419, 2, 45320, 3, 'KOL', 'Koulpelogo'),
(50420, 2, 45320, 3, 'KOT', 'Kouritenga'),
(50421, 2, 45320, 3, 'KOW', 'Kourweogo'),
(50422, 2, 45320, 3, 'LER', 'Leraba'),
(50423, 2, 45320, 3, 'LOR', 'Loroum'),
(50424, 2, 45320, 3, 'MOU', 'Mouhoun'),
(50425, 2, 45320, 3, 'NAH', 'Nahouri'),
(50426, 2, 45320, 3, 'NAM', 'Namentenga'),
(50427, 2, 45320, 3, 'NAY', 'Nayala'),
(50428, 2, 45320, 3, 'NOU', 'Noumbiel'),
(50429, 2, 45320, 3, 'OUB', 'Oubritenga'),
(50430, 2, 45320, 3, 'OUD', 'Oudalan'),
(50431, 2, 45320, 3, 'PAS', 'Passore'),
(50432, 2, 45320, 3, 'PON', 'Poni'),
(50433, 2, 45320, 3, 'SAG', 'Sanguie'),
(50434, 2, 45320, 3, 'SAM', 'Sanmatenga'),
(50435, 2, 45320, 3, 'SEN', 'Seno'),
(50436, 2, 45320, 3, 'SIS', 'Sissili'),
(50437, 2, 45320, 3, 'SOM', 'Soum'),
(50438, 2, 45320, 3, 'SOR', 'Sourou'),
(50439, 2, 45320, 3, 'TAP', 'Tapoa'),
(50440, 2, 45320, 3, 'TUY', 'Tuy'),
(50441, 2, 45320, 3, 'YAG', 'Yagha'),
(50442, 2, 45320, 3, 'YAT', 'Yatenga'),
(50443, 2, 45320, 3, 'ZIR', 'Ziro'),
(50444, 2, 45320, 3, 'ZOD', 'Zondoma'),
(50445, 2, 45320, 3, 'ZOW', 'Zoundweogo');

--  'Bulgaria', 'BG', 'BGR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(50501, 2, 45330, 3, 'BL', 'Blagoevgrad'),
(50502, 2, 45330, 3, 'BR', 'Burgas'),
(50503, 2, 45330, 3, 'DO', 'Dobrich'),
(50504, 2, 45330, 3, 'GB', 'Gabrovo'),
(50505, 2, 45330, 3, 'HA', 'Haskovo'),
(50506, 2, 45330, 3, 'KU', 'Kurdzhali'),
(50507, 2, 45330, 3, 'KY', 'Kyustendil'),
(50508, 2, 45330, 3, 'LV', 'Lovech'),
(50509, 2, 45330, 3, 'MT', 'Montana'),
(50510, 2, 45330, 3, 'PZ', 'Pazardjik'),
(50511, 2, 45330, 3, 'PN', 'Pernik'),
(50512, 2, 45330, 3, 'PV', 'Pleven'),
(50513, 2, 45330, 3, 'PD', 'Plovdiv'),
(50514, 2, 45330, 3, 'RG', 'Razgrad'),
(50515, 2, 45330, 3, 'RS', 'Ruse'),
(50516, 2, 45330, 3, 'SH', 'Shumen'),
(50517, 2, 45330, 3, 'SI', 'Silistra'),
(50518, 2, 45330, 3, 'SL', 'Sliven'),
(50519, 2, 45330, 3, 'SM', 'Smolyan'),
(50520, 2, 45330, 3, 'SO', 'Sofia city'),
(50521, 2, 45330, 3, 'SR', 'Sofia region'),
(50522, 2, 45330, 3, 'SZ', 'Stara Zagora'),
(50523, 2, 45330, 3, 'TU', 'Targovishte'),
(50524, 2, 45330, 3, 'VN', 'Varna'),
(50525, 2, 45330, 3, 'VT', 'Veliko Tarnovo'),
(50526, 2, 45330, 3, 'VD', 'Vidin'),
(50527, 2, 45330, 3, 'VR', 'Vratza'),
(50528, 2, 45330, 3, 'YA', 'Yambol');

--  'Bahrain', 'BH', 'BHR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(50601, 2, 45340, 3, 'CA', 'Al Manamah'),
(50602, 2, 45340, 3, 'CE', 'Al Janubiyah'),
(50603, 2, 45340, 3, 'MU', 'Al Muharraq'),
(50604, 2, 45340, 3, 'NO', 'Al Wustah'),
(50605, 2, 45340, 3, 'SO', 'Ash Shamaliyah');

--  'Burundi', 'BI', 'BDI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(50701, 2, 45350, 3, 'BB', 'Bubanza'),
(50702, 2, 45350, 3, 'BM', 'Bujumbura Mairie'),
(50703, 2, 45350, 3, 'BL', 'Bujumbura Rural'),
(50704, 2, 45350, 3, 'BR', 'Bururi'),
(50705, 2, 45350, 3, 'CA', 'Cankuzo'),
(50706, 2, 45350, 3, 'CI', 'Cibitoke'),
(50707, 2, 45350, 3, 'GI', 'Gitega'),
(50708, 2, 45350, 3, 'KR', 'Karuzi'),
(50709, 2, 45350, 3, 'KY', 'Kayanza'),
(50710, 2, 45350, 3, 'KI', 'Kirundo'),
(50711, 2, 45350, 3, 'MA', 'Makamba'),
(50712, 2, 45350, 3, 'MU', 'Muramvya'),
(50713, 2, 45350, 3, 'MY', 'Muyinga'),
(50714, 2, 45350, 3, 'MW', 'Mwaro'),
(50715, 2, 45350, 3, 'NG', 'Ngozi'),
(50716, 2, 45350, 3, 'RT', 'Rutana'),
(50717, 2, 45350, 3, 'RY', 'Ruyigi');

--  'Benin', 'BJ', 'BEN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(50801, 2, 45360, 3, 'AL', 'Alibori'),
(50802, 2, 45360, 3, 'AK', 'Atakora'),
(50803, 2, 45360, 3, 'AQ', 'Atlantique'),
(50804, 2, 45360, 3, 'BO', 'Borgou'),
(50805, 2, 45360, 3, 'CO', 'Collines'),
(50806, 2, 45360, 3, 'DO', 'Donga'),
(50807, 2, 45360, 3, 'KO', 'Kouffo'),
(50808, 2, 45360, 3, 'LI', 'Littoral'),
(50809, 2, 45360, 3, 'MO', 'Mono'),
(50810, 2, 45360, 3, 'OU', 'Oueme'),
(50811, 2, 45360, 3, 'PL', 'Plateau'),
(50812, 2, 45360, 3, 'ZO', 'Zou');

--  'BL', 'Saint Barthelemy'

--  'Bermuda', 'BM', 'BMU'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60001, 2, 45380, 3, 'DS', 'Devonshire'),
(60002, 2, 45380, 3, 'HC', 'Hamilton City'),
(60003, 2, 45380, 3, 'HA', 'Hamilton municipality'),
(60004, 2, 45380, 3, 'PG', 'Page'),
(60005, 2, 45380, 3, 'PB', 'Pembroke'),
(60006, 2, 45380, 3, 'GC', 'Saint George\'s City'),
(60007, 2, 45380, 3, 'SG', 'Saint George\'s municipality'),
(60008, 2, 45380, 3, 'SA', 'Sandys'),
(60009, 2, 45380, 3, 'SM', 'Smith\'s'),
(60010, 2, 45380, 3, 'SH', 'Southampton'),
(60011, 2, 45380, 3, 'WA', 'Warwick');

--  'Brunei Darussalam', 'BN', 'BRN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60101, 2, 45390, 3, 'BE', 'Belait'),
(60102, 2, 45390, 3, 'BM', 'Brunei and Muara'),
(60103, 2, 45390, 3, 'TE', 'Temburong'),
(60104, 2, 45390, 3, 'TU', 'Tutong');

--  'Bolivia', 'BO', 'BOL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60201, 2, 45400, 3, 'B', 'El Beni'),
(60202, 2, 45400, 3, 'H', 'Chuquisaca'),
(60203, 2, 45400, 3, 'C', 'Cochabamba'),
(60204, 2, 45400, 3, 'L', 'La Paz'),
(60205, 2, 45400, 3, 'O', 'Oruro'),
(60206, 2, 45400, 3, 'N', 'Pando'),
(60207, 2, 45400, 3, 'P', 'Potosi'),
(60208, 2, 45400, 3, 'S', 'Santa Cruz'),
(60209, 2, 45400, 3, 'T', 'Tarija');

--  'Brazil', 'BR', 'BRA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60301, 2, 562, 3, 'AC', 'Acre'),
(60302, 2, 562, 3, 'AL', 'Alagoas'),
(60303, 2, 562, 3, 'AP', 'Amapa'),
(60304, 2, 562, 3, 'AM', 'Amazonas'),
(60305, 2, 562, 3, 'BA', 'Bahia'),
(60306, 2, 562, 3, 'CE', 'Ceara'),
(60307, 2, 562, 3, 'DF', 'Distrito Federal'),
(60308, 2, 562, 3, 'ES', 'Espirito Santo'),
(60309, 2, 562, 3, 'GO', 'Goias'),
(60310, 2, 562, 3, 'MA', 'Maranhao'),
(60311, 2, 562, 3, 'MT', 'Mato Grosso'),
(60312, 2, 562, 3, 'MS', 'Mato Grosso do Sul'),
(60313, 2, 562, 3, 'MG', 'Minas Gerais'),
(60314, 2, 562, 3, 'PA', 'Para'),
(60315, 2, 562, 3, 'PB', 'Paraiba'),
(60316, 2, 562, 3, 'PR', 'Parana'),
(60317, 2, 562, 3, 'PE', 'Pernambuco'),
(60318, 2, 562, 3, 'PI', 'Piaui'),
(60319, 2, 562, 3, 'RJ', 'Rio de Janeiro'),
(60320, 2, 562, 3, 'RN', 'Rio Grande do Norte'),
(60321, 2, 562, 3, 'RS', 'Rio Grande do Sul'),
(60322, 2, 562, 3, 'RO', 'Rondonia'),
(60323, 2, 562, 3, 'RR', 'Roraima'),
(60324, 2, 562, 3, 'SC', 'Santa Catarina'),
(60325, 2, 562, 3, 'SP', 'Sao Paulo'),
(60326, 2, 562, 3, 'SE', 'Sergipe'),
(60327, 2, 562, 3, 'TO', 'Tocantins');

--  'Bahamas', 'BS', 'BHS'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60401, 2, 45410, 3, 'AK', 'Acklins'),
(60402, 2, 45410, 3, 'BY', 'Berry Islands'),
(60403, 2, 45410, 3, 'BI', 'Bimini'),
(60404, 2, 45410, 3, 'BP', 'Black Point'),
(60405, 2, 45410, 3, 'CI', 'Cat Island'),
(60406, 2, 45410, 3, 'CO', 'Central Abaco'),
(60407, 2, 45410, 3, 'CS', 'Central Andros'),
(60408, 2, 45410, 3, 'CE', 'Central Eleuthera'),
(60409, 2, 45410, 3, 'FP', 'City of Freeport'),
(60410, 2, 45410, 3, 'CK', 'Crooked Island'),
(60411, 2, 45410, 3, 'EG', 'East Grand Bahama'),
(60412, 2, 45410, 3, 'EX', 'Exuma'),
(60413, 2, 45410, 3, 'GC', 'Grand Cay'),
(60414, 2, 45410, 3, 'HI', 'Harbour Island'),
(60415, 2, 45410, 3, 'HT', 'Hope Town'),
(60416, 2, 45410, 3, 'IN', 'Inagua'),
(60417, 2, 45410, 3, 'LI', 'Long Island'),
(60418, 2, 45410, 3, 'MC', 'Mangrove Cay'),
(60419, 2, 45410, 3, 'MG', 'Mayaguana'),
(60420, 2, 45410, 3, 'MI', 'Moore\'s Island'),
(60421, 2, 45410, 3, 'NO', 'North Abaco'),
(60422, 2, 45410, 3, 'NS', 'North Andros'),
(60423, 2, 45410, 3, 'NE', 'North Eleuthera'),
(60424, 2, 45410, 3, 'RI', 'Ragged Island'),
(60425, 2, 45410, 3, 'RC', 'Rum Cay'),
(60426, 2, 45410, 3, 'SS', 'San Salvador'),
(60427, 2, 45410, 3, 'SO', 'South Abaco'),
(60428, 2, 45410, 3, 'SA', 'South Andros'),
(60429, 2, 45410, 3, 'SE', 'South Eleuthera'),
(60430, 2, 45410, 3, 'SW', 'Spanish Wells'),
(60431, 2, 45410, 3, 'WG', 'West Grand Bahama');

--  'Bhutan', 'BT', 'BTN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60501, 2, 45420, 3, 'BU', 'Bumthang'),
(60502, 2, 45420, 3, 'CK', 'Chukha'),
(60503, 2, 45420, 3, 'CR', 'Chirang'),
(60504, 2, 45420, 3, 'DA', 'Dagana'),
(60505, 2, 45420, 3, 'GA', 'Gasa'),
(60506, 2, 45420, 3, 'GE', 'Geylegphug'),
(60507, 2, 45420, 3, 'HA', 'Haa'),
(60508, 2, 45420, 3, 'LH', 'Lhuntshi'),
(60509, 2, 45420, 3, 'MO', 'Mongar'),
(60510, 2, 45420, 3, 'PR', 'Paro'),
(60511, 2, 45420, 3, 'PM', 'Pemagatshel'),
(60512, 2, 45420, 3, 'PN', 'Punakha'),
(60513, 2, 45420, 3, 'SM', 'Samchi'),
(60514, 2, 45420, 3, 'SJ', 'Samdrup Jongkhar'),
(60515, 2, 45420, 3, 'SG', 'Shemgang'),
(60517, 2, 45420, 3, 'TA', 'Tashigang'),
(60518, 2, 45420, 3, 'TY', 'Tashiyangste'),
(60516, 2, 45420, 3, 'TM', 'Thimphu'),
(60519, 2, 45420, 3, 'TO', 'Tongsa'),
(60520, 2, 45420, 3, 'WP', 'Wangdi Phodrang');

--  'Bouvet Island', 'BV', 'BVT'

--  'Botswana', 'BW', 'BWA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60701, 2, 45440, 3, 'CE', 'Central'),
(60702, 2, 45440, 3, 'GH', 'Ghanzi'),
(60703, 2, 45440, 3, 'KG', 'Kgalagadi'),
(60704, 2, 45440, 3, 'KL', 'Kgatleng'),
(60705, 2, 45440, 3, 'KW', 'Kweneng'),
(60706, 2, 45440, 3, 'NG', 'Ngamiland'),
(60707, 2, 45440, 3, 'NE', 'North East'),
(60708, 2, 45440, 3, 'NW', 'North West'),
(60709, 2, 45440, 3, 'SE', 'South East'),
(60710, 2, 45440, 3, 'SO', 'Southern');

--  'Belarus', 'BY', 'BLR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60801, 2, 45450, 3, 'BR', 'Brest region'),
(60802, 2, 45450, 3, 'HO', 'Homel region'),
(60803, 2, 45450, 3, 'HM', 'Minsk city'),
(60804, 2, 45450, 3, 'HR', 'Hrodno region'),
(60805, 2, 45450, 3, 'MA', 'Mogilev region'),
(60806, 2, 45450, 3, 'MI', 'Minsk region'),
(60807, 2, 45450, 3, 'VI', 'Vitebsk region');

--  'Belize', 'BZ', 'BLZ'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(60901, 2, 45460, 3, 'BZ', 'Belize'),
(60902, 2, 45460, 3, 'CY', 'Cayo'),
(60903, 2, 45460, 3, 'CR', 'Corozal'),
(60904, 2, 45460, 3, 'OW', 'Orange Walk'),
(60905, 2, 45460, 3, 'SC', 'Stann Creek'),
(60906, 2, 45460, 3, 'TO', 'Toledo');

--  'Canada', 'CA', 'CAN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61001, 2, 536, 3, 'AB', 'Alberta'),
(61002, 2, 536, 3, 'BC', 'British Columbia'),
(61003, 2, 536, 3, 'MB', 'Manitoba'),
(61004, 2, 536, 3, 'NB', 'New Brunswick'),
(61005, 2, 536, 3, 'NL', 'Newfoundland and Labrador'),
(61006, 2, 536, 3, 'NT', 'Northwest Territories'),
(61007, 2, 536, 3, 'NS', 'Nova Scotia'),
(61008, 2, 536, 3, 'NU', 'Nunavut'),
(61009, 2, 536, 3, 'ON', 'Ontario'),
(61010, 2, 536, 3, 'PE', 'Prince Edward Island'),
(61011, 2, 536, 3, 'QC', 'Quebec'),
(61012, 2, 536, 3, 'SK', 'Saskatchewan'),
(61013, 2, 536, 3, 'YT', 'Yukon Territory');

--  'Cocos (Keeling) Islands', 'CC', 'CCK'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61101, 2, 45470, 3, 'AM', 'Ampang Minor'),
(61102, 2, 45470, 3, 'BU', 'Burial Island'),
(61103, 2, 45470, 3, 'CA', 'Canui Island'),
(61104, 2, 45470, 3, 'DI', 'Direction Island'),
(61105, 2, 45470, 3, 'EC', 'East Cay'),
(61106, 2, 45470, 3, 'GS', 'Gooseberry Island '),
(61107, 2, 45470, 3, 'GO', 'Goat Island'),
(61108, 2, 45470, 3, 'GW', 'Goldwater Island'),
(61109, 2, 45470, 3, 'HB', 'Horsburgh Island'),
(61110, 2, 45470, 3, 'HO', 'Home Island'),
(61111, 2, 45470, 3, 'KH', 'Keelingham Horn Island'),
(61112, 2, 45470, 3, 'MI', 'Misery Island'),
(61113, 2, 45470, 3, 'NG', 'North Goat Island'),
(61114, 2, 45470, 3, 'NK', 'North Keeling Island'),
(61115, 2, 45470, 3, 'MM', 'Middle Mission Isle'),
(61116, 2, 45470, 3, 'PR', 'Prison Island'),
(61117, 2, 45470, 3, 'SB', 'Closed sandbar, now part of Home Island'),
(61118, 2, 45470, 3, 'SG', 'South Goat Island'),
(61119, 2, 45470, 3, 'SI', 'South Island'),
(61120, 2, 45470, 3, 'SV', 'Scaevola Islet'),
(61121, 2, 45470, 3, 'TH', 'Thorn Island'),
(61122, 2, 45470, 3, 'TR', 'Turtle Island'),
(61123, 2, 45470, 3, 'WC', 'West Cay'),
(61124, 2, 45470, 3, 'WE', 'West Island'),
(61125, 2, 45470, 3, 'WH', 'Workhouse Island');

--  'CD', 'Congo, The Democratic Republic of the'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61201, 2, 45480, 3, 'BN', 'Bandundu'),
(61202, 2, 45480, 3, 'BC', 'Bas-Congo'),
(61203, 2, 45480, 3, 'EQ', 'Equateur'),
(61204, 2, 45480, 3, 'KW', 'Kasai-Occidental'),
(61205, 2, 45480, 3, 'KE', 'Kasai-Oriental'),
(61206, 2, 45480, 3, 'KA', 'Katanga'),
(61207, 2, 45480, 3, 'KN', 'Kinshasa City'),
(61208, 2, 45480, 3, 'MA', 'Maniema'),
(61209, 2, 45480, 3, 'NK', 'Nord-Kivu'),
(61210, 2, 45480, 3, 'OR', 'Orientale'),
(61211, 2, 45480, 3, 'SK', 'Sud-Kivu');

--  'Central African Republic', 'CF', 'CAF'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61301, 2, 45490, 3, 'BGF', 'Bangui'),
(61302, 2, 45490, 3, 'BB', 'Bamingui-Bangoran'),
(61303, 2, 45490, 3, 'BK', 'Basse-Kotto'),
(61304, 2, 45490, 3, 'HK', 'Haute-Kotto'),
(61305, 2, 45490, 3, 'HM', 'Haut-Mbomou'),
(61306, 2, 45490, 3, 'HS', 'Haute-Sangha'),
(61307, 2, 45490, 3, 'KG', 'Kemo-Gribingui'),
(61308, 2, 45490, 3, 'LB', 'Lobaye'),
(61309, 2, 45490, 3, 'MB', 'Mbomou'),
(61310, 2, 45490, 3, 'NM', 'Nana-Mambere'),
(61311, 2, 45490, 3, 'NG', 'Nana-Grebizi'),
(61312, 2, 45490, 3, 'MP', 'Ombella-M\'Poko'),
(61313, 2, 45490, 3, 'UK', 'Ouaka'),
(61314, 2, 45490, 3, 'AC', 'Ouham'),
(61315, 2, 45490, 3, 'OP', 'Ouham-Pende'),
(61316, 2, 45490, 3, 'VK', 'Vakaga'),
(61317, 2, 45490, 3, 'KB', 'Gribingui'),
(61318, 2, 45490, 3, 'SE', 'Sangha'),
(61319, 2, 45490, 3, 'SM', 'Sangha-Mbaere');

--  'Congo, Republic of', 'CG', 'COG'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61401, 2, 45500, 3, 'BO', 'Bouenza'),
(61402, 2, 45500, 3, 'BR', 'Brazzaville'),
(61403, 2, 45500, 3, 'CU', 'Cuvette'),
(61404, 2, 45500, 3, 'CO', 'Cuvette-Ouest'),
(61405, 2, 45500, 3, 'KO', 'Kouilou'),
(61406, 2, 45500, 3, 'LE', 'Lekoumou'),
(61407, 2, 45500, 3, 'LI', 'Likouala'),
(61408, 2, 45500, 3, 'NI', 'Niari'),
(61409, 2, 45500, 3, 'PL', 'Plateaux'),
(61410, 2, 45500, 3, 'PO', 'Pool'),
(61411, 2, 45500, 3, 'SA', 'Sangha');

--  'Switzerland', 'CH', 'CHE'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61501, 2, 544, 3, 'AG', 'Aargau'),
(61502, 2, 544, 3, 'AI', 'Appenzell Inner Rhodes'),
(61503, 2, 544, 3, 'AR', 'Appenzell Outer Rhodes'),
(61504, 2, 544, 3, 'BE', 'Bern'),
(61505, 2, 544, 3, 'BL', 'Basel Country'),
(61506, 2, 544, 3, 'BS', 'Basel City'),
(61507, 2, 544, 3, 'BE', 'Bern'),
(61508, 2, 544, 3, 'FR', 'Fribourg'),
(61509, 2, 544, 3, 'GE', 'Geneva'),
(61510, 2, 544, 3, 'GL', 'Glarus'),
(61511, 2, 544, 3, 'GR', 'Grisons'),
(61512, 2, 544, 3, 'JU', 'Jura'),
(61513, 2, 544, 3, 'LU', 'Lucerne'),
(61514, 2, 544, 3, 'NE', 'Neuchatel'),
(61515, 2, 544, 3, 'NW', 'Nidwalden'),
(61516, 2, 544, 3, 'OW', 'Obwalden'),
(61517, 2, 544, 3, 'SG', 'Sankt Gallen'),
(61518, 2, 544, 3, 'SH', 'Schaffhausen'),
(61519, 2, 544, 3, 'SO', 'Solothurn'),
(61520, 2, 544, 3, 'SZ', 'Schwyz'),
(61521, 2, 544, 3, 'TG', 'Thurgau'),
(61522, 2, 544, 3, 'TI', 'Ticino'),
(61523, 2, 544, 3, 'UR', 'Uri'),
(61524, 2, 544, 3, 'VD', 'Vaud'),
(61525, 2, 544, 3, 'VS', 'Valais'),
(61526, 2, 544, 3, 'ZG', 'Zug'),
(61527, 2, 544, 3, 'ZH', 'Zurich');

--  'Cote D\'Ivoire', 'CI', 'CIV'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61601, 2, 45510, 3, 'AG', 'Agnebi'),
(61602, 2, 45510, 3, 'BF', 'Bafing'),
(61603, 2, 45510, 3, 'BA', 'Bas-Sassandra'),
(61604, 2, 45510, 3, 'DE', 'Denguele'),
(61605, 2, 45510, 3, 'FR', 'Fromager'),
(61606, 2, 45510, 3, 'HS', 'Haut-Sassandra'),
(61607, 2, 45510, 3, 'LC', 'Lacs'),
(61608, 2, 45510, 3, 'LG', 'Lagunes'),
(61609, 2, 45510, 3, 'MR', 'Marahoue'),
(61610, 2, 45510, 3, 'MN', '18 Montagnes'),
(61611, 2, 45510, 3, 'CV', 'Moyen-Cavally'),
(61612, 2, 45510, 3, 'CM', 'Moyen-Comoe'),
(61613, 2, 45510, 3, 'NC', 'Nzi-Comoe'),
(61614, 2, 45510, 3, 'SA', 'Savanes'),
(61615, 2, 45510, 3, 'SB', 'Sud-Bandama'),
(61616, 2, 45510, 3, 'SC', 'Sud-Comoe '),
(61617, 2, 45510, 3, 'VB', 'Vallee du Bandama'),
(61618, 2, 45510, 3, 'WD', 'Worodougou'),
(61619, 2, 45510, 3, 'ZZ', 'Zanzan');

--  'Cook Islands', 'CK', 'COK'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61701, 2, 45520, 3, 'AI', 'Aitutaki'),
(61702, 2, 45520, 3, 'AT', 'Atiu'),
(61703, 2, 45520, 3, 'MA', 'Mangaia'),
(61704, 2, 45520, 3, 'MH', 'Manihiki'),
(61705, 2, 45520, 3, 'MN', 'Manuae'),
(61706, 2, 45520, 3, 'MU', 'Ma\'uke'),
(61707, 2, 45520, 3, 'MT', 'Mitiaro'),
(61708, 2, 45520, 3, 'NI', 'Nassau Island'),
(61709, 2, 45520, 3, 'PA', 'Palmerston'),
(61710, 2, 45520, 3, 'PE', 'Penrhyn'),
(61711, 2, 45520, 3, 'PU', 'Pukapuka'),
(61712, 2, 45520, 3, 'RK', 'Rakahanga'),
(61713, 2, 45520, 3, 'RR', 'Rarotonga'),
(61714, 2, 45520, 3, 'SU', 'Surwarrow'),
(61715, 2, 45520, 3, 'TA', 'Takutea'),
(61716, 2, 45520, 3, 'TR', 'Tema Reef'),
(61717, 2, 45520, 3, 'WR', 'Winslow Reef');

--  'Chile', 'CL', 'CHL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61801, 2, 45530, 3, 'AI', 'Aisen del General Carlos Ibanez del Campo'),
(61802, 2, 45530, 3, 'AN', 'Antofagasta'),
(61803, 2, 45530, 3, 'AR', 'Araucania'),
(61804, 2, 45530, 3, 'AP', 'Arica y Parinacota'),
(61805, 2, 45530, 3, 'AT', 'Atacama'),
(61806, 2, 45530, 3, 'BI', 'Bio-Bio'),
(61807, 2, 45530, 3, 'CO', 'Coquimbo'),
(61808, 2, 45530, 3, 'LI', 'Libertador General Bernardo O\'Higgins'),
(61809, 2, 45530, 3, 'LL', 'Los Lagos'),
(61810, 2, 45530, 3, 'MA', 'Magallanes'),
(61811, 2, 45530, 3, 'ML', 'Maule'),
(61812, 2, 45530, 3, 'RM', 'Region Metropolitana de Santiago'),
(61813, 2, 45530, 3, 'TA', 'Tarapaca'),
(61814, 2, 45530, 3, 'VS', 'Valparaiso');

--  'Cameroon', 'CM', 'CMR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(61901, 2, 45540, 3, 'AD', 'Adamawa'),
(61902, 2, 45540, 3, 'CE', 'Centre'),
(61903, 2, 45540, 3, 'ES', 'East (Est)'),
(61904, 2, 45540, 3, 'EN', 'Far North (Extreme-Nord)'),
(61905, 2, 45540, 3, 'LT', 'Littoral'),
(61906, 2, 45540, 3, 'NO', 'North (Nord)'),
(61907, 2, 45540, 3, 'NW', 'North-West (Nord-Ouest)'),
(61908, 2, 45540, 3, 'SU', 'South (Sud)'),
(61909, 2, 45540, 3, 'SW', 'South-West (Sud-Ouest)'),
(61910, 2, 45540, 3, 'OU', 'West (Ouest)');

--  'China', 'CN', 'CHN'
--  ALREADY EXISTS

--  'Colombia', 'CO', 'COL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62001, 2, 45560, 3, 'AMA', 'Amazonas'),
(62002, 2, 45560, 3, 'ANT', 'Antioquia'),
(62003, 2, 45560, 3, 'ARA', 'Arauca'),
(62004, 2, 45560, 3, 'ATL', 'Atlantico'),
(62005, 2, 45560, 3, 'DC',  'Bogota D.C.'),
(62006, 2, 45560, 3, 'BOL', 'Bolivar'),
(62007, 2, 45560, 3, 'BOY', 'Boyaca'),
(62008, 2, 45560, 3, 'CAL', 'Caldas'),
(62009, 2, 45560, 3, 'CAQ', 'Caqueta'),
(62010, 2, 45560, 3, 'CAS', 'Casanare'),
(62011, 2, 45560, 3, 'CAU', 'Cauca'),
(62012, 2, 45560, 3, 'CES', 'Cesar'),
(62013, 2, 45560, 3, 'CHO', 'Choco'),
(62014, 2, 45560, 3, 'COR', 'Cordoba'),
(62015, 2, 45560, 3, 'CUN', 'Cundinamarca'),
(62016, 2, 45560, 3, 'GUA', 'Guainia'),
(62017, 2, 45560, 3, 'GUV', 'Guaviare'),
(62018, 2, 45560, 3, 'GVR', 'Guaviare'),
(62019, 2, 45560, 3, 'HUI', 'Huila'),
(62020, 2, 45560, 3, 'MAG', 'Magdalena'),
(62021, 2, 45560, 3, 'MET', 'Meta'),
(62022, 2, 45560, 3, 'NAR', 'Narino'),
(62023, 2, 45560, 3, 'NSA', 'Norte de Santander'),
(62024, 2, 45560, 3, 'PUT', 'Putumayo'),
(62025, 2, 45560, 3, 'QUI', 'Quindio'),
(62026, 2, 45560, 3, 'RIS', 'Risaralda'),
(62027, 2, 45560, 3, 'SAP', 'San Andres, Providencia y Santa Catalina'),
(62028, 2, 45560, 3, 'SAN', 'Santander'),
(62029, 2, 45560, 3, 'SUC', 'Sucre'),
(62030, 2, 45560, 3, 'TOL', 'Tolima'),
(62031, 2, 45560, 3, 'VAC', 'Valle del Cauca'),
(62032, 2, 45560, 3, 'VAU', 'Vaupes'),
(62033, 2, 45560, 3, 'VID', 'Vichada');

--  'Costa Rica', 'CR', 'CRI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62101, 2, 45570, 3, 'AL', 'Alajuela'),
(62102, 2, 45570, 3, 'CA', 'Cartago'),
(62103, 2, 45570, 3, 'GU', 'Guanacaste'),
(62104, 2, 45570, 3, 'HE', 'Heredia'),
(62105, 2, 45570, 3, 'LI', 'Limon'),
(62106, 2, 45570, 3, 'PU', 'Puntarenas'),
(62107, 2, 45570, 3, 'SJ', 'San Jose');

--  'Cuba', 'CU', 'CUB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62201, 2, 45580, 3, 'CA', 'Camaguey'),
(62202, 2, 45580, 3, 'CD', 'Ciego de Avila'),
(62203, 2, 45580, 3, 'CI', 'Cienfuegos'),
(62204, 2, 45580, 3, 'CH', 'Ciudad de La Habana'),
(62205, 2, 45580, 3, 'GR', 'Granma'),
(62206, 2, 45580, 3, 'GU', 'Guantanamo'),
(62207, 2, 45580, 3, 'HO', 'Holguin'),
(62208, 2, 45580, 3, 'IJ', 'Isla de la Juventud'),
(62209, 2, 45580, 3, 'LH', 'La Habana'),
(62210, 2, 45580, 3, 'LT', 'Las Tunas'),
(62211, 2, 45580, 3, 'MA', 'Matanzas'),
(62212, 2, 45580, 3, 'PR', 'Pinar del Rio'),
(62213, 2, 45580, 3, 'SS', 'Sancti Spiritus'),
(62214, 2, 45580, 3, 'SC', 'Santiago de Cuba'),
(62215, 2, 45580, 3, 'VC', 'Villa Clara');

--  'Cape Verde', 'CV', 'CPV'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62301, 2, 45590, 3, 'BV', 'Boa Vista'),
(62302, 2, 45590, 3, 'BR', 'Brava'),
(62303, 2, 45590, 3, 'CS', 'Calheta de Sao Miguel'),
(62304, 2, 45590, 3, 'MA', 'Maio'),
(62305, 2, 45590, 3, 'MO', 'Mosteiros'),
(62306, 2, 45590, 3, 'PA', 'Paul'),
(62307, 2, 45590, 3, 'PN', 'Porto Novo'),
(62308, 2, 45590, 3, 'PR', 'Praia'),
(62309, 2, 45590, 3, 'RG', 'Ribeira Grande'),
(62310, 2, 45590, 3, 'SL', 'Sal'),
(62311, 2, 45590, 3, 'CA', 'Santa Catarina'),
(62312, 2, 45590, 3, 'CR', 'Santa Cruz'),
(62313, 2, 45590, 3, 'SD', 'Sao Domingos'),
(62314, 2, 45590, 3, 'SF', 'Sao Filipe'),
(62315, 2, 45590, 3, 'SN', 'Sao Nicolau'),
(62316, 2, 45590, 3, 'SV', 'Sao Vicente'),
(62317, 2, 45590, 3, 'TA', 'Tarrafal');

--  'Christmas Island', 'CX', 'CXR'

--  'Cyprus', 'CY', 'CYP'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62401, 2, 45610, 3, 'F', 'Famagusta'),
(62402, 2, 45610, 3, 'K', 'Kyrenia'),
(62403, 2, 45610, 3, 'A', 'Larnaca'),
(62404, 2, 45610, 3, 'I', 'Limassol'),
(62405, 2, 45610, 3, 'N', 'Nicosia'),
(62406, 2, 45610, 3, 'P', 'Paphos');

--  'Czech Republic', 'CZ', 'CZE'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62501, 2, 542, 3, 'JC', 'Jihocesky kraj'),
(62502, 2, 542, 3, 'JM', 'Jihomoravsky kraj'),
(62503, 2, 542, 3, 'KA', 'Karlovarsky kraj'),
(62504, 2, 542, 3, 'KR', 'Kralovehradecky kraj'),
(62505, 2, 542, 3, 'LI', 'Liberecky kraj'),
(62506, 2, 542, 3, 'MO', 'Moravskoslezsky kraj'),
(62507, 2, 542, 3, 'OL', 'Olomoucky kraj'),
(62508, 2, 542, 3, 'PA', 'Pardubicky kraj'),
(62509, 2, 542, 3, 'PL', 'Plzensky kraj'),
(62510, 2, 542, 3, 'PR', 'Praha city'),
(62511, 2, 542, 3, 'ST', 'Stredocesky kraj'),
(62512, 2, 542, 3, 'US', 'Ustecky kraj'),
(62513, 2, 542, 3, 'VY', 'Vysocina'),
(62514, 2, 542, 3, 'ZL', 'Zlinsky kraj');

--  'Germany', 'DE', 'DEU'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62601, 2, 541, 3, 'BE', 'Berlin'),
(62602, 2, 541, 3, 'BR', 'Brandenburg'),
(62603, 2, 541, 3, 'BW', 'Baden-Wurttemberg'),
(62604, 2, 541, 3, 'BY', 'Bayern'),
(62605, 2, 541, 3, 'HB', 'Bremen'),
(62606, 2, 541, 3, 'HE', 'Hessen'),
(62607, 2, 541, 3, 'HH', 'Hamburg'),
(62608, 2, 541, 3, 'MV', 'Mecklenburg-Vorpommern'),
(62609, 2, 541, 3, 'NI', 'Niedersachsen'),
(62610, 2, 541, 3, 'NW', 'Nordrhein-Westfalen'),
(62611, 2, 541, 3, 'RP', 'Rheinland-Pfalz'),
(62612, 2, 541, 3, 'SH', 'Schleswig-Holstein'),
(62613, 2, 541, 3, 'SL', 'Saarland'),
(62614, 2, 541, 3, 'SN', 'Sachsen'),
(62615, 2, 541, 3, 'ST', 'Sachsen-Anhalt'),
(62616, 2, 541, 3, 'TH', 'Thuringen');

--  'Djibouti', 'DJ', 'DJI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62701, 2, 45620, 3, 'AS', 'Ali Sabieh'),
(62702, 2, 45620, 3, 'AR', 'Arta'),
(62703, 2, 45620, 3, 'DI', 'Dikhil'),
(62704, 2, 45620, 3, 'DJ', 'Djibouti'),
(62705, 2, 45620, 3, 'OB', 'Obock'),
(62706, 2, 45620, 3, 'TA', 'Tadjoura');

--  'Denmark', 'DK', 'DNK'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62801, 2, 548, 3, 'HS', 'Capital'),
(62802, 2, 548, 3, 'MJ', 'Central Jutland'),
(62803, 2, 548, 3, 'ND', 'North Jutland'),
(62804, 2, 548, 3, 'SL', 'Zealand'),
(62805, 2, 548, 3, 'SD', 'South Denmark');

--  'Dominica', 'DM', 'DMA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(62901, 2, 45630, 3, 'AN', 'Saint Andrew Parish'),
(62902, 2, 45630, 3, 'DA', 'Saint David Parish'),
(62903, 2, 45630, 3, 'GO', 'Saint George Parish'),
(62904, 2, 45630, 3, 'JH', 'Saint John Parish'),
(62905, 2, 45630, 3, 'JH', 'Saint Joseph Parish'),
(62906, 2, 45630, 3, 'LU', 'Saint Luke Parish'),
(62907, 2, 45630, 3, 'MA', 'Saint Mark Parish'),
(62908, 2, 45630, 3, 'PK', 'Saint Patrick Parish'),
(62909, 2, 45630, 3, 'PL', 'Saint Paul Parish'),
(62910, 2, 45630, 3, 'PR', 'Saint Peter Parish');

--  'Dominican Republic', 'DO', 'DOM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63001, 2, 45640, 3, 'NC', 'Distrito Nacional (Santo Domingo)'),
(63002, 2, 45640, 3, 'AZ', 'Azua'),
(63003, 2, 45640, 3, 'BR', 'Baoruco'),
(63004, 2, 45640, 3, 'BH', 'Barahona'),
(63005, 2, 45640, 3, 'DA', 'Dajabon'),
(63006, 2, 45640, 3, 'DU', 'Duarte'),
(63007, 2, 45640, 3, 'EP', 'La Estrelleta (Elias Pina)'),
(63008, 2, 45640, 3, 'SE', 'El Seybo'),
(63009, 2, 45640, 3, 'ES', 'Espaillat'),
(63010, 2, 45640, 3, 'HM', 'Hato Mayor'),
(63011, 2, 45640, 3, 'IN', 'Independencia'),
(63012, 2, 45640, 3, 'AL', 'La Altagracia'),
(63013, 2, 45640, 3, 'RO', 'La Romana'),
(63014, 2, 45640, 3, 'VE', 'La Vega'),
(63015, 2, 45640, 3, 'MT', 'Maria Trinidad Sanchez'),
(63016, 2, 45640, 3, 'MN', 'Monsenor Nouel'),
(63017, 2, 45640, 3, 'MC', 'Monte Cristi'),
(63018, 2, 45640, 3, 'MP', 'Monte Plata'),
(63019, 2, 45640, 3, 'PD', 'Pedernales'),
(63020, 2, 45640, 3, 'PR', 'Peravia (Bani)'),
(63021, 2, 45640, 3, 'PP', 'Puerto Plata'),
(63022, 2, 45640, 3, 'SL', 'Salcedo'),
(63023, 2, 45640, 3, 'SM', 'Samana'),
(63024, 2, 45640, 3, 'SH', 'Sanchez Ramirez'),
(63025, 2, 45640, 3, 'SC', 'San Cristobal'),
(63026, 2, 45640, 3, 'JO', 'San Jose de Ocoa'),
(63027, 2, 45640, 3, 'SJ', 'San Juan'),
(63028, 2, 45640, 3, 'PM', 'San Pedro de Macoris'),
(63029, 2, 45640, 3, 'SA', 'Santiago'),
(63030, 2, 45640, 3, 'ST', 'Santiago Rodriguez'),
(63031, 2, 45640, 3, 'SD', 'Santo Domingo'),
(63032, 2, 45640, 3, 'VA', 'Valverde');

--  'Algeria', 'DZ', 'DZA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63101, 2, 45650, 3, 'AR', 'Adrar'),
(63102, 2, 45650, 3, 'AD', 'Ain Defla'),
(63103, 2, 45650, 3, 'AT', 'Ain Temouchent'),
(63104, 2, 45650, 3, 'AL', 'Alger'),
(63105, 2, 45650, 3, 'AN', 'Annaba'),
(63106, 2, 45650, 3, 'BT', 'Batna'),
(63107, 2, 45650, 3, 'BC', 'Bechar'),
(63108, 2, 45650, 3, 'BJ', 'Bejaia'),
(63109, 2, 45650, 3, 'BS', 'Biskra'),
(63110, 2, 45650, 3, 'BL', 'Blida'),
(63111, 2, 45650, 3, 'BB', 'Bordj Bou Arreridj'),
(63112, 2, 45650, 3, 'BU', 'Bouira'),
(63113, 2, 45650, 3, 'BM', 'Boumerdes'),
(63114, 2, 45650, 3, 'CH', 'Chlef'),
(63115, 2, 45650, 3, 'CO', 'Constantine'),
(63116, 2, 45650, 3, 'DJ', 'Djelfa'),
(63117, 2, 45650, 3, 'EB', 'El Bayadh'),
(63118, 2, 45650, 3, 'EO', 'El Oued'),
(63119, 2, 45650, 3, 'ET', 'El Tarf'),
(63120, 2, 45650, 3, 'GR', 'Ghardaia'),
(63121, 2, 45650, 3, 'GL', 'Guelma'),
(63122, 2, 45650, 3, 'IL', 'Illizi'),
(63123, 2, 45650, 3, 'JJ', 'Jijel'),
(63124, 2, 45650, 3, 'KH', 'Khenchela'),
(63125, 2, 45650, 3, 'LG', 'Laghouat'),
(63126, 2, 45650, 3, 'MC', 'Mascara'),
(63127, 2, 45650, 3, 'MD', 'Medea'),
(63128, 2, 45650, 3, 'ML', 'Mila'),
(63129, 2, 45650, 3, 'MG', 'Mostaganem'),
(63130, 2, 45650, 3, 'MS', 'M\'Sila'),
(63131, 2, 45650, 3, 'NA', 'Naama'),
(63132, 2, 45650, 3, 'OR', 'Oran'),
(63133, 2, 45650, 3, 'OG', 'Ouargla'),
(63134, 2, 45650, 3, 'OB', 'Oum el-Bouaghi'),
(63135, 2, 45650, 3, 'RE', 'Relizane'),
(63136, 2, 45650, 3, 'SD', 'Saida'),
(63137, 2, 45650, 3, 'SF', 'Setif'),
(63138, 2, 45650, 3, 'SB', 'Sidi Bel Abbes'),
(63139, 2, 45650, 3, 'SK', 'Skikda'),
(63140, 2, 45650, 3, 'SA', 'Souk Ahras'),
(63141, 2, 45650, 3, 'TM', 'Tamanghasset'),
(63142, 2, 45650, 3, 'TB', 'Tebessa'),
(63143, 2, 45650, 3, 'TR', 'Tiaret'),
(63144, 2, 45650, 3, 'TN', 'Tindouf'),
(63145, 2, 45650, 3, 'TP', 'Tipaza'),
(63146, 2, 45650, 3, 'TS', 'Tissemsilt'),
(63147, 2, 45650, 3, 'TO', 'Tizi Ouzou'),
(63148, 2, 45650, 3, 'TL', 'Tlemcen');

--  'Ecuador', 'EC', 'ECU'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63201, 2, 45660, 3, 'AZ', 'Azuay'),
(63202, 2, 45660, 3, 'BO', 'Bolivar'),
(63203, 2, 45660, 3, 'CN', 'Canar'),
(63204, 2, 45660, 3, 'CR', 'Carchi'),
(63205, 2, 45660, 3, 'CB', 'Chimborazo'),
(63206, 2, 45660, 3, 'CT', 'Cotopaxi'),
(63207, 2, 45660, 3, 'EO', 'El Oro'),
(63208, 2, 45660, 3, 'ES', 'Esmeraldas'),
(63209, 2, 45660, 3, 'GA', 'Galapagos'),
(63210, 2, 45660, 3, 'GY', 'Guayas'),
(63211, 2, 45660, 3, 'IM', 'Imbabura'),
(63212, 2, 45660, 3, 'LJ', 'Loja'),
(63213, 2, 45660, 3, 'LR', 'Los Rios'),
(63214, 2, 45660, 3, 'MN', 'Manabi'),
(63215, 2, 45660, 3, 'MS', 'Morona Santiago'),
(63216, 2, 45660, 3, 'NA', 'Napo'),
(63217, 2, 45660, 3, 'OR', 'Orellana'),
(63218, 2, 45660, 3, 'PA', 'Pastaza'),
(63219, 2, 45660, 3, 'PC', 'Pichincha'),
(63220, 2, 45660, 3, 'SE', 'Santa Elena'),
(63221, 2, 45660, 3, 'SD', 'Santo Domingo de los Tsachilas'),
(63222, 2, 45660, 3, 'SU', 'Sucumbios'),
(63223, 2, 45660, 3, 'TU', 'Tungurahua'),
(63224, 2, 45660, 3, 'ZC', 'Zamora Chinchipe');

--  'Estonia', 'EE', 'EST'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63301, 2, 45670, 3, 'HA', 'Harjumaa (Tallinn)'),
(63302, 2, 45670, 3, 'HI', 'Hiiumaa (Kardla)'),
(63303, 2, 45670, 3, 'IV', 'Ida-Virumaa (Johvi)'),
(63304, 2, 45670, 3, 'JR', 'Jarvamaa (Paide)'),
(63305, 2, 45670, 3, 'JN', 'Jogevamaa (Jogeva)'),
(63306, 2, 45670, 3, 'LN', 'Laanemaa (Haapsalu)'),
(63307, 2, 45670, 3, 'LV', 'Laane-Virumaa (Rakvere)'),
(63308, 2, 45670, 3, 'PA', 'Parnumaa (Parnu)'),
(63309, 2, 45670, 3, 'PL', 'Polvamaa (Polva)'),
(63310, 2, 45670, 3, 'RA', 'Raplamaa (Rapla)'),
(63311, 2, 45670, 3, 'SA', 'Saaremaa (Kuessaare)'),
(63312, 2, 45670, 3, 'TA', 'Tartumaa (Tartu)'),
(63313, 2, 45670, 3, 'VG', 'Valgamaa (Valga)'),
(63314, 2, 45670, 3, 'VD', 'Viljandimaa (Viljandi)'),
(63315, 2, 45670, 3, 'VR', 'Vorumaa (Voru)');

--  'Egypt', 'EG', 'EGY'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63401, 2, 565, 3, 'DQ', 'Ad Daqahliyah'),
(63402, 2, 565, 3, 'BA', 'Al Bahr al Ahmar'),
(63403, 2, 565, 3, 'BH', 'Al Buhayrah'),
(63404, 2, 565, 3, 'FY', 'Al Fayyum'),
(63405, 2, 565, 3, 'GH', 'Al Gharbiyah'),
(63406, 2, 565, 3, 'IK', 'Al Iskandariyah'),
(63407, 2, 565, 3, 'IS', 'Al Isma\'iliyah'),
(63408, 2, 565, 3, 'JZ', 'Al Jizah'),
(63409, 2, 565, 3, 'MF', 'Al Minufiyah'),
(63410, 2, 565, 3, 'MN', 'Al Minya'),
(63411, 2, 565, 3, 'QH', 'Al Qahirah'),
(63412, 2, 565, 3, 'QL', 'Al Qalyubiyah'),
(63413, 2, 565, 3, 'UQ', 'Al Uqsur'),
(63414, 2, 565, 3, 'WJ', 'Al Wadi al Jadid'),
(63415, 2, 565, 3, 'SQ', 'Ash Sharqiyah'),
(63416, 2, 565, 3, 'SW', 'As Suways'),
(63417, 2, 565, 3, 'AN', 'Aswan'),
(63418, 2, 565, 3, 'AT', 'Asyut'),
(63419, 2, 565, 3, 'BN', 'Bani Suwayf'),
(63420, 2, 565, 3, 'BS', 'Bur Sa\'id'),
(63421, 2, 565, 3, 'DT', 'Dumyat'),
(63422, 2, 565, 3, 'JS', 'Janub Sina\''),
(63423, 2, 565, 3, 'KS', 'Kafr ash Shaykh'),
(63424, 2, 565, 3, 'MT', 'Matruh'),
(63425, 2, 565, 3, 'QN', 'Qina'),
(63426, 2, 565, 3, 'SS', 'Shamal Sina\''),
(63427, 2, 565, 3, 'SJ', 'Suhaj');

--  'Western Sahara', 'EH', 'ESH'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63501, 2, 45690, 3, 'BO', 'Boujdour'),
(63502, 2, 45690, 3, 'ES', 'Es Semara'),
(63503, 2, 45690, 3, 'LA', 'Laayoune'),
(63504, 2, 45690, 3, 'OD', 'Oued el Dahab');

--  'Eritrea', 'ER', 'ERI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63601, 2, 45700, 3, 'AN', 'Anseba'),
(63602, 2, 45700, 3, 'DU', 'Debub'),
(63603, 2, 45700, 3, 'DK', 'Southern Red Sea (Debubawi Keyih Bahri)'),
(63604, 2, 45700, 3, 'GB', 'Gash-Barka'),
(63605, 2, 45700, 3, 'MA', 'Al Awsat (Maekel)'),
(63606, 2, 45700, 3, 'SK', 'Northern Red Sea (Semenawi Keyih Bahri)');

--  'Spain', 'ES', 'ESP'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63701, 2, 555, 3, 'AN', 'Andalusia'),
(63702, 2, 555, 3, 'AR', 'Aragon'),
(63703, 2, 555, 3, 'AS', 'Asturias, Principado de'),
(63704, 2, 555, 3, 'PM', 'Balearic Islands'),
(63705, 2, 555, 3, 'PV', 'Basque Country'),
(63706, 2, 555, 3, 'CN', 'Canary Islands'),
(63707, 2, 555, 3, 'CB', 'Cantabria'),
(63708, 2, 555, 3, 'CL', 'Castile and Leon'),
(63709, 2, 555, 3, 'CM', 'Castilla-La Mancha'),
(63710, 2, 555, 3, 'CT', 'Catalonia'),
(63711, 2, 555, 3, 'CE', 'Ceuta'),
(63712, 2, 555, 3, 'EX', 'Extremadura'),
(63713, 2, 555, 3, 'GA', 'Galicia'),
(63714, 2, 555, 3, 'LO', 'La Rioja'),
(63715, 2, 555, 3, 'M',  'Madrid'),
(63716, 2, 555, 3, 'ML', 'Melilla'),
(63717, 2, 555, 3, 'MU', 'Murcia'),
(63718, 2, 555, 3, 'NA', 'Navarra'),
(63719, 2, 555, 3, 'V',  'Valencia');

--  'Ethiopia', 'ET', 'ETH'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63801, 2, 45710, 3, 'AA', 'Addis Ababa'),
(63802, 2, 45710, 3, 'AF', 'Afar'),
(63803, 2, 45710, 3, 'AM', 'Amhara'),
(63804, 2, 45710, 3, 'BE', 'Benishangul-Gumaz'),
(63805, 2, 45710, 3, 'DD', 'Dire Dawa'),
(63806, 2, 45710, 3, 'GB', 'Gambela'),
(63807, 2, 45710, 3, 'HA', 'Harari'),
(63808, 2, 45710, 3, 'OR', 'Oromia'),
(63809, 2, 45710, 3, 'SM', 'Somali'),
(63810, 2, 45710, 3, 'SN', 'Southern Nations, Nationalities and Peoples'),
(63811, 2, 45710, 3, 'TG', 'Tigray');

--  'EU', 'European Union'

--  'Finland', 'FI', 'FIN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(63901, 2, 549, 3, 'AX', 'Aland'),
(63902, 2, 549, 3, 'CF', 'Central Finland'),
(63903, 2, 549, 3, 'CO', 'Central Ostrobothnia'),
(63904, 2, 549, 3, 'KA', 'Kainuu'),
(63905, 2, 549, 3, 'KH', 'Kanta-Hame (Tavasia Proper)'),
(63906, 2, 549, 3, 'KY', 'Kymenlaakso'),
(63907, 2, 549, 3, 'LA', 'Lapland'),
(63908, 2, 549, 3, 'NK', 'North Karelia'),
(63909, 2, 549, 3, 'NO', 'North Ostrobothnia'),
(63910, 2, 549, 3, 'NS', 'North Savonia'),
(63911, 2, 549, 3, 'OS', 'Ostrobothnia'),
(63912, 2, 549, 3, 'PH', 'Paijat-Hame (Paijanne Tavastia)'),
(63913, 2, 549, 3, 'SA', 'Satakunta'),
(63914, 2, 549, 3, 'SK', 'South Karelia'),
(63915, 2, 549, 3, 'SO', 'South Ostrobothnia'),
(63916, 2, 549, 3, 'SS', 'South Savonia'),
(63917, 2, 549, 3, 'SF', 'Southwest Finland (Finland Proper)'),
(63918, 2, 549, 3, 'TR', 'Pirkanmaa (Tampere Region)'),
(63919, 2, 549, 3, 'US', 'Uusimaa');

--  'Fiji', 'FJ', 'FJI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(64001, 2, 45730, 3, 'CE', 'Central Division'),
(64002, 2, 45730, 3, 'EA', 'Eastern Division'),
(64003, 2, 45730, 3, 'NO', 'Northern Division'),
(64004, 2, 45730, 3, 'RO', 'Rotuma'),
(64005, 2, 45730, 3, 'WE', 'Western Division');

--  'Falkland Islands (Malvinas)', 'FK', 'FLK'

--  'Micronesia, Federated States of', 'FM', 'FSM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(64201, 2, 45750, 3, 'CH', 'Chuuk'),
(64202, 2, 45750, 3, 'KO', 'Kosrae'),
(64203, 2, 45750, 3, 'PO', 'Pohnpei'),
(64204, 2, 45750, 3, 'YY', 'Yap');

--  'Faroe Islands', 'FO', 'FRO'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(64301, 2, 45760, 3, 'NO', 'Norderoerne'),
(64302, 2, 45760, 3, 'OS', 'Ostero'),
(64303, 2, 45760, 3, 'SA', 'Sando'),
(64304, 2, 45760, 3, 'ST', 'Stromo'),
(64305, 2, 45760, 3, 'SU', 'Sudero'),
(64306, 2, 45760, 3, 'VG', 'Vago');

--  'France', 'FR', 'FRA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(64401, 2, 540, 3, 'AI', 'Ain'),
(64402, 2, 540, 3, 'AS', 'Aisne'),
(64403, 2, 540, 3, 'AL', 'Allier'),
(64404, 2, 540, 3, 'AP', 'Alpes de Haute Provence'),
(64405, 2, 540, 3, 'AM', 'Alpes Maritimes'),
(64406, 2, 540, 3, 'AH', 'Ardache'),
(64407, 2, 540, 3, 'AN', 'Ardennes'),
(64408, 2, 540, 3, 'AG', 'Ariage'),
(64409, 2, 540, 3, 'AB', 'Aube'),
(64410, 2, 540, 3, 'AD', 'Aude'),
(64411, 2, 540, 3, 'AV', 'Aveyron'),
(64412, 2, 540, 3, 'BR', 'Bas-Rhin'),
(64413, 2, 540, 3, 'BD', 'Bouches-du-Rhone'),
(64414, 2, 540, 3, 'CV', 'Calvados'),
(64415, 2, 540, 3, 'CL', 'Cantal'),
(64416, 2, 540, 3, 'CT', 'Charente'),
(64417, 2, 540, 3, 'CM', 'Charente Maritime'),
(64418, 2, 540, 3, 'CH', 'Cher'),
(64419, 2, 540, 3, 'CZ', 'Correze'),
(64420, 2, 540, 3, 'CS', 'Corse du Sud'),
(64421, 2, 540, 3, 'CO', 'Cate d\'or'),
(64422, 2, 540, 3, 'CA', 'Cates d\'Armor'),
(64423, 2, 540, 3, 'CR', 'Creuse'),
(64424, 2, 540, 3, 'DS', 'Deux-Sevres'),
(64425, 2, 540, 3, 'DD', 'Dordogne'),
(64426, 2, 540, 3, 'DB', 'Doubs'),
(64427, 2, 540, 3, 'DM', 'Drame'),
(64428, 2, 540, 3, 'ES', 'Essonne'),
(64429, 2, 540, 3, 'EU', 'Eure'),
(64430, 2, 540, 3, 'EL', 'Eure et Loir'),
(64431, 2, 540, 3, 'FI', 'Finistare'),
(64432, 2, 540, 3, 'GA', 'Gard'),
(64433, 2, 540, 3, 'GE', 'Gers'),
(64434, 2, 540, 3, 'GI', 'Gironde'),
(64435, 2, 540, 3, 'HC', 'Haute-Corse'),
(64436, 2, 540, 3, 'HG', 'Haute Garonne'),
(64437, 2, 540, 3, 'HL', 'Haute Loire'),
(64438, 2, 540, 3, 'HM', 'Haute Marne'),
(64439, 2, 540, 3, 'HA', 'Haute Aples'),
(64440, 2, 540, 3, 'HN', 'Haute Saane'),
(64441, 2, 540, 3, 'HS', 'Haute Savoie'),
(64442, 2, 540, 3, 'HP', 'Hautes Pyranaes'),
(64443, 2, 540, 3, 'HV', 'Haute Vienne'),
(64444, 2, 540, 3, 'HR', 'Haut Rhin'),
(64445, 2, 540, 3, 'HD', 'Hauts de Seine'),
(64446, 2, 540, 3, 'HE', 'Herault'),
(64447, 2, 540, 3, 'IV', 'Ille et Vilaine'),
(64448, 2, 540, 3, 'IN', 'Indre'),
(64449, 2, 540, 3, 'IL', 'Indre et Loire'),
(64450, 2, 540, 3, 'IS', 'Isare'),
(64451, 2, 540, 3, 'JU', 'Jura'),
(64452, 2, 540, 3, 'LD', 'Landes'),
(64453, 2, 540, 3, 'LR', 'Loire'),
(64454, 2, 540, 3, 'LA', 'Loire Atlantique'),
(64455, 2, 540, 3, 'LT', 'Loiret'),
(64456, 2, 540, 3, 'LC', 'Loir et Cher'),
(64457, 2, 540, 3, 'LO', 'Lot'),
(64458, 2, 540, 3, 'LG', 'Lot et Garonne'),
(64459, 2, 540, 3, 'LZ', 'Lozare'),
(64460, 2, 540, 3, 'ML', 'Maine et Loire'),
(64461, 2, 540, 3, 'MH', 'Manche'),
(64462, 2, 540, 3, 'MR', 'Marne'),
(64463, 2, 540, 3, 'MY', 'Mayenne'),
(64464, 2, 540, 3, 'MM', 'Meurthe et Moselle'),
(64465, 2, 540, 3, 'MS', 'Meuse'),
(64466, 2, 540, 3, 'MB', 'Morbihan'),
(64467, 2, 540, 3, 'MO', 'Moselle'),
(64468, 2, 540, 3, 'NI', 'Niavre'),
(64469, 2, 540, 3, 'NO', 'Nord'),
(64470, 2, 540, 3, 'OI', 'Oise'),
(64471, 2, 540, 3, 'OR', 'Orne'),
(64472, 2, 540, 3, 'PC', 'Pas de Calais'),
(64473, 2, 540, 3, 'PD', 'Puy de Dame'),
(64474, 2, 540, 3, 'PA', 'Pyranaes Atlantiqu'),
(64475, 2, 540, 3, 'PO', 'Pyranaes Orientale'),
(64476, 2, 540, 3, 'RH', 'Rhane'),
(64477, 2, 540, 3, 'SL', 'Saane et Loire'),
(64478, 2, 540, 3, 'ST', 'Sarthe'),
(64479, 2, 540, 3, 'SV', 'Savoie'),
(64480, 2, 540, 3, 'SE', 'Seine et Marne'),
(64481, 2, 540, 3, 'SM', 'Seine Maritime'),
(64482, 2, 540, 3, 'SS', 'Seine Saint-Denis'),
(64483, 2, 540, 3, 'SO', 'Somme'),
(64484, 2, 540, 3, 'TA', 'Tarn'),
(64485, 2, 540, 3, 'TG', 'Tarn et Garonne'),
(64486, 2, 540, 3, 'TB', 'Territoire de Belfort'),
(64487, 2, 540, 3, 'VM', 'Val de Marne'),
(64488, 2, 540, 3, 'VO', 'Val d\'Oise'),
(64489, 2, 540, 3, 'VR', 'Var'),
(64490, 2, 540, 3, 'VC', 'Vaucluse'),
(64491, 2, 540, 3, 'VD', 'Vendae'),
(64492, 2, 540, 3, 'VN', 'Vienne'),
(64493, 2, 540, 3, 'VP', 'Paris'),
(64494, 2, 540, 3, 'VG', 'Vosges'),
(64495, 2, 540, 3, 'YO', 'Yonne'),
(64496, 2, 540, 3, 'YV', 'Yvelines'),
-- French Overseas Departments
(64501, 2, 540, 3, 'GP', 'Guadeloupe'),
(64502, 2, 540, 3, 'GF', 'French Guiana'),
(64503, 2, 540, 3, 'MQ', 'Martinique'),
(64504, 2, 540, 3, 'YT', 'Mayotte'),
(64505, 2, 540, 3, 'RE', 'Reunion'),
-- French Dependency and overseas territorial collectivities
(64601, 2, 540, 3, 'CP', 'Clipperton'),
(64602, 2, 540, 3, 'NC', 'New Caledonia'),
(64603, 2, 540, 3, 'PF', 'French Polynesia'),
(64604, 2, 540, 3, 'BL', 'Saint-Barthelemy'),
(64605, 2, 540, 3, 'MF', 'Saint-Martin'),
(64606, 2, 540, 3, 'PM', 'Saint Pierre and Miquelon'),
(64607, 2, 540, 3, 'TF', 'French Southern Territories'),
(64608, 2, 540, 3, 'WF', 'Wallis and Futuna');

-- 'France, Metropolitan', 'FX', 'FXX' [OBSOLETE!!!]
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(64701, 2, 45770, 3, 'AI', 'Ain'),
(64702, 2, 45770, 3, 'AS', 'Aisne'),
(64703, 2, 45770, 3, 'AL', 'Allier'),
(64704, 2, 45770, 3, 'AP', 'Alpes de Haute Provence'),
(64705, 2, 45770, 3, 'AM', 'Alpes Maritimes'),
(64706, 2, 45770, 3, 'AH', 'Ardache'),
(64707, 2, 45770, 3, 'AN', 'Ardennes'),
(64708, 2, 45770, 3, 'AG', 'Ariage'),
(64709, 2, 45770, 3, 'AB', 'Aube'),
(64710, 2, 45770, 3, 'AD', 'Aude'),
(64711, 2, 45770, 3, 'AV', 'Aveyron'),
(64712, 2, 45770, 3, 'BR', 'Bas-Rhin'),
(64713, 2, 45770, 3, 'BD', 'Bouches-du-Rhone'),
(64714, 2, 45770, 3, 'CV', 'Calvados'),
(64715, 2, 45770, 3, 'CL', 'Cantal'),
(64716, 2, 45770, 3, 'CT', 'Charente'),
(64717, 2, 45770, 3, 'CM', 'Charente Maritime'),
(64718, 2, 45770, 3, 'CH', 'Cher'),
(64719, 2, 45770, 3, 'CZ', 'Correze'),
(64720, 2, 45770, 3, 'CS', 'Corse du Sud'),
(64721, 2, 45770, 3, 'CO', 'Cate d\'or'),
(64722, 2, 45770, 3, 'CA', 'Cates d\'Armor'),
(64723, 2, 45770, 3, 'CR', 'Creuse'),
(64724, 2, 45770, 3, 'DS', 'Deux-Sevres'),
(64725, 2, 45770, 3, 'DD', 'Dordogne'),
(64726, 2, 45770, 3, 'DB', 'Doubs'),
(64727, 2, 45770, 3, 'DM', 'Drame'),
(64728, 2, 45770, 3, 'ES', 'Essonne'),
(64729, 2, 45770, 3, 'EU', 'Eure'),
(64730, 2, 45770, 3, 'EL', 'Eure et Loir'),
(64731, 2, 45770, 3, 'FI', 'Finistare'),
(64732, 2, 45770, 3, 'GA', 'Gard'),
(64733, 2, 45770, 3, 'GE', 'Gers'),
(64734, 2, 45770, 3, 'GI', 'Gironde'),
(64735, 2, 45770, 3, 'HC', 'Haute-Corse'),
(64736, 2, 45770, 3, 'HG', 'Haute Garonne'),
(64737, 2, 45770, 3, 'HL', 'Haute Loire'),
(64738, 2, 45770, 3, 'HM', 'Haute Marne'),
(64739, 2, 45770, 3, 'HA', 'Haute Aples'),
(64740, 2, 45770, 3, 'HN', 'Haute Saane'),
(64741, 2, 45770, 3, 'HS', 'Haute Savoie'),
(64742, 2, 45770, 3, 'HP', 'Hautes Pyranaes'),
(64743, 2, 45770, 3, 'HV', 'Haute Vienne'),
(64744, 2, 45770, 3, 'HR', 'Haut Rhin'),
(64745, 2, 45770, 3, 'HD', 'Hauts de Seine'),
(64746, 2, 45770, 3, 'HE', 'Herault'),
(64747, 2, 45770, 3, 'IV', 'Ille et Vilaine'),
(64748, 2, 45770, 3, 'IN', 'Indre'),
(64749, 2, 45770, 3, 'IL', 'Indre et Loire'),
(64750, 2, 45770, 3, 'IS', 'Isare'),
(64751, 2, 45770, 3, 'JU', 'Jura'),
(64752, 2, 45770, 3, 'LD', 'Landes'),
(64753, 2, 45770, 3, 'LR', 'Loire'),
(64754, 2, 45770, 3, 'LA', 'Loire Atlantique'),
(64755, 2, 45770, 3, 'LT', 'Loiret'),
(64756, 2, 45770, 3, 'LC', 'Loir et Cher'),
(64757, 2, 45770, 3, 'LO', 'Lot'),
(64758, 2, 45770, 3, 'LG', 'Lot et Garonne'),
(64759, 2, 45770, 3, 'LZ', 'Lozare'),
(64760, 2, 45770, 3, 'ML', 'Maine et Loire'),
(64761, 2, 45770, 3, 'MH', 'Manche'),
(64762, 2, 45770, 3, 'MR', 'Marne'),
(64763, 2, 45770, 3, 'MY', 'Mayenne'),
(64764, 2, 45770, 3, 'MM', 'Meurthe et Moselle'),
(64765, 2, 45770, 3, 'MS', 'Meuse'),
(64766, 2, 45770, 3, 'MB', 'Morbihan'),
(64767, 2, 45770, 3, 'MO', 'Moselle'),
(64768, 2, 45770, 3, 'NI', 'Niavre'),
(64769, 2, 45770, 3, 'NO', 'Nord'),
(64770, 2, 45770, 3, 'OI', 'Oise'),
(64771, 2, 45770, 3, 'OR', 'Orne'),
(64772, 2, 45770, 3, 'PC', 'Pas de Calais'),
(64773, 2, 45770, 3, 'PD', 'Puy de Dame'),
(64774, 2, 45770, 3, 'PA', 'Pyranaes Atlantiqu'),
(64775, 2, 45770, 3, 'PO', 'Pyranaes Orientale'),
(64776, 2, 45770, 3, 'RH', 'Rhane'),
(64777, 2, 45770, 3, 'SL', 'Saane et Loire'),
(64778, 2, 45770, 3, 'ST', 'Sarthe'),
(64779, 2, 45770, 3, 'SV', 'Savoie'),
(64780, 2, 45770, 3, 'SE', 'Seine et Marne'),
(64781, 2, 45770, 3, 'SM', 'Seine Maritime'),
(64782, 2, 45770, 3, 'SS', 'Seine Saint-Denis'),
(64783, 2, 45770, 3, 'SO', 'Somme'),
(64784, 2, 45770, 3, 'TA', 'Tarn'),
(64785, 2, 45770, 3, 'TG', 'Tarn et Garonne'),
(64786, 2, 45770, 3, 'TB', 'Territoire de Belfort'),
(64787, 2, 45770, 3, 'VM', 'Val de Marne'),
(64788, 2, 45770, 3, 'VO', 'Val d\'Oise'),
(64789, 2, 45770, 3, 'VR', 'Var'),
(64790, 2, 45770, 3, 'VC', 'Vaucluse'),
(64791, 2, 45770, 3, 'VD', 'Vendae'),
(64792, 2, 45770, 3, 'VN', 'Vienne'),
(64793, 2, 45770, 3, 'VP', 'Paris'),
(64794, 2, 45770, 3, 'VG', 'Vosges'),
(64795, 2, 45770, 3, 'YO', 'Yonne'),
(64796, 2, 45770, 3, 'YV', 'Yvelines');

--  'Gabon', 'GA', 'GAB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(64801, 2, 45780, 3, 'ES', 'Estuaire'),
(64802, 2, 45780, 3, 'HO', 'Haut-Ogooue'),
(64803, 2, 45780, 3, 'MO', 'Moyen-Ogooue'),
(64804, 2, 45780, 3, 'NG', 'Ngounie'),
(64805, 2, 45780, 3, 'NY', 'Nyanga'),
(64806, 2, 45780, 3, 'OI', 'Ogooue-Ivindo'),
(64807, 2, 45780, 3, 'OL', 'Ogooue-Lolo'),
(64808, 2, 45780, 3, 'OM', 'Ogooue-Maritime'),
(64809, 2, 45780, 3, 'WN', 'Woleu-Ntem');

--  'Great Britain', 'GB', 'GBR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(64901, 2, 539, 3, 'AR', 'Aberdeen City'),
(64902, 2, 539, 3, 'AS', 'Aberdeenshire'),
(64903, 2, 539, 3, 'AY', 'Anglesey island'),
(64904, 2, 539, 3, 'AG', 'Angus'),
(64905, 2, 539, 3, 'AN', 'Antrim'),
(64906, 2, 539, 3, 'AD', 'Ards'),
(64907, 2, 539, 3, 'AB', 'Argyll and Bute'),
(64908, 2, 539, 3, 'AM', 'Armagh'),
(64909, 2, 539, 3, 'BL', 'Ballymena'),
(64910, 2, 539, 3, 'BY', 'Ballymoney'),
(64911, 2, 539, 3, 'BB', 'Banbridge'),
(64912, 2, 539, 3, 'BX', 'Barnsley'),
(64913, 2, 539, 3, 'BN', 'Bath and North East Somerset'),
(64914, 2, 539, 3, 'FO', 'Bedford'),
(64915, 2, 539, 3, 'BF', 'Belfast'),
(64916, 2, 539, 3, 'BI', 'Birmingham'),
(64917, 2, 539, 3, 'BW', 'Blackburn with Darwen'),
(64918, 2, 539, 3, 'BP', 'Blackpool'),
(64919, 2, 539, 3, 'BG', 'Blaenau Gwent'),
(64920, 2, 539, 3, 'BT', 'Bolton'),
(64921, 2, 539, 3, 'BM', 'Bournemouth'),
(64922, 2, 539, 3, 'BC', 'Bracknell Forest'),
(64923, 2, 539, 3, 'BV', 'Bradford'),
(64924, 2, 539, 3, 'BJ', 'Bridgend'),
(64925, 2, 539, 3, 'BH', 'Brighton and Hove'),
(64926, 2, 539, 3, 'BS', 'Bristol'),
(64927, 2, 539, 3, 'BU', 'Buckinghamshire'),
(64928, 2, 539, 3, 'BR', 'Bury'),
(64929, 2, 539, 3, 'CP', 'Caerphilly'),
(64930, 2, 539, 3, 'CX', 'Calderdale'),
(64931, 2, 539, 3, 'CM', 'Cambridgeshire'),
(64932, 2, 539, 3, 'CA', 'Cardiff'),
(64933, 2, 539, 3, 'CI', 'Carmarthenshire'),
(64934, 2, 539, 3, 'CF', 'Carrickfergus'),
(64935, 2, 539, 3, 'CS', 'Castlereagh'),
(64936, 2, 539, 3, 'CB', 'Central Bedfordshire'),
(64937, 2, 539, 3, 'CG', 'Ceredigion'),
(64938, 2, 539, 3, 'CQ', 'Cheshire East'),
(64939, 2, 539, 3, 'CZ', 'Cheshire West and Chester'),
(64940, 2, 539, 3, 'CC', 'Clackmannanshire'),
(64941, 2, 539, 3, 'CL', 'Coleraine'),
(64942, 2, 539, 3, 'CW', 'Conwy'),
(64943, 2, 539, 3, 'CK', 'Cookstown'),
(64944, 2, 539, 3, 'CO', 'Cornwall'),
(64945, 2, 539, 3, 'CT', 'Coventry'),
(64946, 2, 539, 3, 'CR', 'Craigavon'),
(64947, 2, 539, 3, 'CU', 'Cumbria'),
(64948, 2, 539, 3, 'DA', 'Darlington'),
(64949, 2, 539, 3, 'DI', 'Denbighshire'),
(64950, 2, 539, 3, 'DE', 'Derby'),
(64951, 2, 539, 3, 'DB', 'Derbyshire'),
(64952, 2, 539, 3, 'LD', 'Derry'),
(64953, 2, 539, 3, 'DO', 'Devon'),
(64954, 2, 539, 3, 'DC', 'Doncaster'),
(64955, 2, 539, 3, 'DS', 'Dorset'),
(64956, 2, 539, 3, 'DW', 'Down'),
(64957, 2, 539, 3, 'DY', 'Dudley'),
(64958, 2, 539, 3, 'DG', 'Dumfries and Galloway'),
(64959, 2, 539, 3, 'DU', 'Dundee'),
(64960, 2, 539, 3, 'DN', 'Dungannon'),
(64961, 2, 539, 3, 'DH', 'Durham'),
(64962, 2, 539, 3, 'EA', 'East Ayrshire'),
(64963, 2, 539, 3, 'ED', 'East Dunbartonshire'),
(64964, 2, 539, 3, 'EL', 'East Lothian'),
(64965, 2, 539, 3, 'ER', 'East Renfrewshire'),
(64966, 2, 539, 3, 'EY', 'East Riding of Yorkshire'),
(64967, 2, 539, 3, 'ES', 'East Sussex'),
(64968, 2, 539, 3, 'EB', 'Edinburgh'),
(64969, 2, 539, 3, 'WI', 'Eilean Siar'),
(64970, 2, 539, 3, 'EX', 'Essex'),
(64971, 2, 539, 3, 'FK', 'Falkirk'),
(64972, 2, 539, 3, 'FE', 'Fermanagh'),
(64973, 2, 539, 3, 'FI', 'Fife'),
(64974, 2, 539, 3, 'FL', 'Flintshire'),
(64975, 2, 539, 3, 'GH', 'Gateshead'),
(64976, 2, 539, 3, 'GG', 'Glasgow'),
(64977, 2, 539, 3, 'GC', 'Gloucestershire'),
(64978, 2, 539, 3, 'GL', 'Greater London'),
(64979, 2, 539, 3, 'GD', 'Gwynedd'),
(64980, 2, 539, 3, 'HL', 'Halton'),
(64981, 2, 539, 3, 'HA', 'Hampshire'),
(64982, 2, 539, 3, 'HP', 'Hartlepool'),
(64983, 2, 539, 3, 'HE', 'Herefordshire'),
(64984, 2, 539, 3, 'HT', 'Hertfordshire'),
(64985, 2, 539, 3, 'HI', 'Highland'),
(64986, 2, 539, 3, 'IC', 'Inverclyde'),
(64987, 2, 539, 3, 'IW', 'Isle of Wight'),
(64988, 2, 539, 3, 'IS', 'Isles of Scilly'),
(64989, 2, 539, 3, 'KE', 'Kent'),
(64990, 2, 539, 3, 'KH', 'Kingston upon Hull'),
(64991, 2, 539, 3, 'KK', 'Kirklees'),
(64992, 2, 539, 3, 'KN', 'Knowsley'),
(64993, 2, 539, 3, 'LA', 'Lancashire'),
(64994, 2, 539, 3, 'LR', 'Larne'),
(64995, 2, 539, 3, 'LS', 'Leeds'),
(64996, 2, 539, 3, 'LC', 'Leicester'),
(64997, 2, 539, 3, 'LE', 'Leicestershire'),
(64998, 2, 539, 3, 'LM', 'Limavady'),
(64999, 2, 539, 3, 'LI', 'Lincolnshire'),
(65000, 2, 539, 3, 'LB', 'Lisburn'),
(65001, 2, 539, 3, 'LV', 'Liverpool'),
(65002, 2, 539, 3, 'LU', 'Luton'),
(65003, 2, 539, 3, 'MF', 'Magherafelt'),
(65004, 2, 539, 3, 'MN', 'Manchester'),
(65005, 2, 539, 3, 'MW', 'Medway'),
(65006, 2, 539, 3, 'MT', 'Merthyr Tydfil'),
(65007, 2, 539, 3, 'MB', 'Middlesbrough'),
(65008, 2, 539, 3, 'ML', 'Midlothian'),
(65009, 2, 539, 3, 'MK', 'Milton Keynes'),
(65010, 2, 539, 3, 'MM', 'Monmouthshire'),
(65011, 2, 539, 3, 'MO', 'Moray'),
(65012, 2, 539, 3, 'MY', 'Moyle'),
(65013, 2, 539, 3, 'NP', 'Neath Port Talbot'),
(65014, 2, 539, 3, 'NU', 'Newcastle upon Tyne'),
(65015, 2, 539, 3, 'NO', 'Newport'),
(65016, 2, 539, 3, 'NM', 'Newry and Mourne'),
(65017, 2, 539, 3, 'NW', 'Newtownabbey'),
(65018, 2, 539, 3, 'NF', 'Norfolk'),
(65019, 2, 539, 3, 'NA', 'Northamptonshire'),
(65020, 2, 539, 3, 'NR', 'North Ayrshire'),
(65021, 2, 539, 3, 'ND', 'North Down'),
(65022, 2, 539, 3, 'NE', 'North East Lincolnshire'),
(65023, 2, 539, 3, 'NN', 'North Lanarkshire'),
(65024, 2, 539, 3, 'NL', 'North Lincolnshire'),
(65025, 2, 539, 3, 'NS', 'North Somerset'),
(65026, 2, 539, 3, 'NI', 'North Tyneside'),
(65027, 2, 539, 3, 'NB', 'Northumberland'),
(65028, 2, 539, 3, 'NY', 'North Yorkshire'),
(65029, 2, 539, 3, 'NG', 'Nottingham'),
(65030, 2, 539, 3, 'NT', 'Nottinghamshire'),
(65031, 2, 539, 3, 'OL', 'Oldham'),
(65032, 2, 539, 3, 'OM', 'Omagh'),
(65033, 2, 539, 3, 'OR', 'Orkney Islands'),
(65034, 2, 539, 3, 'OX', 'Oxfordshire'),
(65035, 2, 539, 3, 'PE', 'Pembrokeshire'),
(65036, 2, 539, 3, 'PK', 'Perthshire and Kinross'),
(65037, 2, 539, 3, 'PB', 'Peterborough'),
(65038, 2, 539, 3, 'PM', 'Plymouth'),
(65039, 2, 539, 3, 'PL', 'Poole'),
(65040, 2, 539, 3, 'PS', 'Portsmouth'),
(65041, 2, 539, 3, 'PO', 'Powys'),
(65042, 2, 539, 3, 'RG', 'Reading'),
(65043, 2, 539, 3, 'RC', 'Redcar and Cleveland'),
(65044, 2, 539, 3, 'RF', 'Renfrewshire'),
(65045, 2, 539, 3, 'RT', 'Rhondda, Cynon, Taff'),
(65046, 2, 539, 3, 'RD', 'Rochdale'),
(65047, 2, 539, 3, 'RH', 'Rotherham'),
(65048, 2, 539, 3, 'RL', 'Rutland'),
(65049, 2, 539, 3, 'SZ', 'Saint Helens'),
(65050, 2, 539, 3, 'ZF', 'Salford'),
(65051, 2, 539, 3, 'ZW', 'Sandwell'),
(65052, 2, 539, 3, 'BO', 'Scottish Borders'),
(65053, 2, 539, 3, 'SE', 'Sefton'),
(65054, 2, 539, 3, 'SV', 'Sheffield'),
(65055, 2, 539, 3, 'SH', 'Shetland Islands'),
(65056, 2, 539, 3, 'SP', 'Shropshire'),
(65057, 2, 539, 3, 'ZL', 'Slough'),
(65058, 2, 539, 3, 'SI', 'Solihull'),
(65059, 2, 539, 3, 'SM', 'Somerset'),
(65060, 2, 539, 3, 'ZH', 'Southampton'),
(65061, 2, 539, 3, 'SA', 'South Ayrshire'),
(65062, 2, 539, 3, 'SS', 'Southend-on-Sea'),
(65063, 2, 539, 3, 'SJ', 'South Gloucestershire'),
(65064, 2, 539, 3, 'SL', 'South Lanarkshire'),
(65065, 2, 539, 3, 'SX', 'South Tyneside'),
(65066, 2, 539, 3, 'ST', 'Staffordshire'),
(65067, 2, 539, 3, 'ZG', 'Stirling'),
(65068, 2, 539, 3, 'SK', 'Stockport'),
(65069, 2, 539, 3, 'ZT', 'Stockton-on-Tees'),
(65070, 2, 539, 3, 'SO', 'Stoke-on-Trent'),
(65071, 2, 539, 3, 'SB', 'Strabane'),
(65072, 2, 539, 3, 'SF', 'Suffolk'),
(65073, 2, 539, 3, 'SD', 'Sunderland'),
(65074, 2, 539, 3, 'SR', 'Surrey'),
(65075, 2, 539, 3, 'SW', 'Swansea'),
(65076, 2, 539, 3, 'SN', 'Swindon'),
(65077, 2, 539, 3, 'TM', 'Tameside'),
(65078, 2, 539, 3, 'TK', 'Telford and Wrekin'),
(65079, 2, 539, 3, 'TR', 'Thurrock'),
(65080, 2, 539, 3, 'TB', 'Torbay'),
(65081, 2, 539, 3, 'TF', 'Torfaen'),
(65082, 2, 539, 3, 'TD', 'Trafford'),
(65083, 2, 539, 3, 'VG', 'Vale of Glamorgan'),
(65084, 2, 539, 3, 'WK', 'Wakefield'),
(65085, 2, 539, 3, 'WZ', 'Walsall'),
(65086, 2, 539, 3, 'WT', 'Warrington'),
(65087, 2, 539, 3, 'WR', 'Warwickshire'),
(65088, 2, 539, 3, 'WB', 'West Berkshire'),
(65089, 2, 539, 3, 'WD', 'West Dunbartonshire'),
(65090, 2, 539, 3, 'WH', 'West Lothian'),
(65091, 2, 539, 3, 'WS', 'West Sussex'),
(65092, 2, 539, 3, 'WN', 'Wigan'),
(65093, 2, 539, 3, 'WL', 'Wiltshire'),
(65094, 2, 539, 3, 'WA', 'Windsor and Maidenhead'),
(65095, 2, 539, 3, 'WQ', 'Wirral'),
(65096, 2, 539, 3, 'WO', 'Wokingham'),
(65097, 2, 539, 3, 'WV', 'Wolverhampton'),
(65098, 2, 539, 3, 'WC', 'Worcestershire'),
(65099, 2, 539, 3, 'WX', 'Wrexham'),
(65100, 2, 539, 3, 'YK', 'York');

--  'Grenada', 'GD', 'GRD'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(65201, 2, 45790, 3, 'AN', 'Saint Andrew'),
(65202, 2, 45790, 3, 'DA', 'Saint David'),
(65203, 2, 45790, 3, 'GE', 'Saint George'),
(65204, 2, 45790, 3, 'JO', 'Saint John'),
(65205, 2, 45790, 3, 'MA', 'Saint Mark'),
(65206, 2, 45790, 3, 'PA', 'Saint Patrick'),
(65207, 2, 45790, 3, 'CA', 'Carriacou'),
(65208, 2, 45790, 3, 'PM', 'Petit Martinique');

--  'Georgia', 'GE', 'GEO'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(65301, 2, 45800, 3, 'AB', 'Abkhazia'),
(65302, 2, 45800, 3, 'AJ', 'Ajaria'),
(65303, 2, 45800, 3, 'GU', 'Guria'),
(65304, 2, 45800, 3, 'IM', 'Imereti'),
(65305, 2, 45800, 3, 'KA', 'Kakheti'),
(65306, 2, 45800, 3, 'KK', 'Kvemo Kartli'),
(65307, 2, 45800, 3, 'MM', 'Mtskheta-Mtianeti'),
(65308, 2, 45800, 3, 'RL', 'Racha Lechkhumi and Kvemo Svanet'),
(65309, 2, 45800, 3, 'SZ', 'Samegrelo-Zemo Svaneti'),
(65310, 2, 45800, 3, 'SJ', 'Samtskhe-Javakheti'),
(65311, 2, 45800, 3, 'SK', 'Shida Kartli'),
(65312, 2, 45800, 3, 'TB', 'Tbilisi');

--  'French Guiana', 'GF', 'GUF'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(65401, 2, 45810, 3, 'CY', 'Cayenne'),
(65402, 2, 45810, 3, 'SL', 'Saint-Laurent-du-Maroni');

--  'GG', 'Guernsey'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(65501, 2, 45820, 3, 'AL', 'Alderney'),
(65502, 2, 45820, 3, 'BQ', 'Brecqhou'),
(65503, 2, 45820, 3, 'CA', 'Castel'),
(65504, 2, 45820, 3, 'FO', 'Forest'),
(65505, 2, 45820, 3, 'HM', 'Herm'),
(65506, 2, 45820, 3, 'JT', 'Jethou'),
(65507, 2, 45820, 3, 'LH', 'Lihou'),
(65508, 2, 45820, 3, 'AN', 'Saint Andrew'),
(65509, 2, 45820, 3, 'MA', 'Saint Martin'),
(65510, 2, 45820, 3, 'PP', 'Saint Peter Port'),
(65511, 2, 45820, 3, 'PB', 'Saint Pierre du Bois'),
(65512, 2, 45820, 3, 'SM', 'Saint Sampson'),
(65513, 2, 45820, 3, 'SV', 'Saint Saviour'),
(65514, 2, 45820, 3, 'SK', 'Sark'),
(65515, 2, 45820, 3, 'TV', 'Torteval'),
(65516, 2, 45820, 3, 'VA', 'Vale');

--  'Ghana', 'GH', 'GHA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(65601, 2, 45830, 3, 'AH', 'Ashanti'),
(65602, 2, 45830, 3, 'BA', 'Brong-Ahafo'),
(65603, 2, 45830, 3, 'CP', 'Central'),
(65604, 2, 45830, 3, 'EP', 'Eastern'),
(65605, 2, 45830, 3, 'AA', 'Greater Accra'),
(65606, 2, 45830, 3, 'NP', 'Northern'),
(65607, 2, 45830, 3, 'UE', 'Upper East'),
(65608, 2, 45830, 3, 'UW', 'Upper West'),
(65609, 2, 45830, 3, 'TV', 'Volta'),
(65610, 2, 45830, 3, 'WP', 'Western');

--  'Gibraltar', 'GI', 'GIB'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (65701, 2, 45840, 3, '', '');

--  'Greenland', 'GL', 'GRL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(65801, 2, 45850, 3, 'KU', 'Kujalleq'),
(65802, 2, 45850, 3, 'QA', 'Qaasuitsup'),
(65803, 2, 45850, 3, 'QT', 'Qeqqata'),
(65804, 2, 45850, 3, 'SE', 'Sermersooq'),
(65805, 2, 45850, 3, 'UO', 'Unorganized');

--  'Gambia', 'GM', 'GMB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(65901, 2, 45860, 3, 'BJ', 'Banjul City'),
(65902, 2, 45860, 3, 'LR', 'Lower River'),
(65903, 2, 45860, 3, 'CR', 'Central River'),
(65904, 2, 45860, 3, 'NB', 'North Bank'),
(65905, 2, 45860, 3, 'UR', 'Upper River'),
(65906, 2, 45860, 3, 'WE', 'West Coast');

--  'Guinea', 'GN', 'GIN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66001, 2, 45870, 3, 'BE', 'Beyla'),
(66002, 2, 45870, 3, 'BF', 'Boffa'),
(66003, 2, 45870, 3, 'BK', 'Boke'),
(66004, 2, 45870, 3, 'CK', 'Conakry'),
(66005, 2, 45870, 3, 'CO', 'Coyah'),
(66006, 2, 45870, 3, 'DB', 'Dabola'),
(66007, 2, 45870, 3, 'DL', 'Dalaba'),
(66008, 2, 45870, 3, 'DI', 'Dinguiraye'),
(66009, 2, 45870, 3, 'DU', 'Dubreka'),
(66010, 2, 45870, 3, 'FA', 'Faranah'),
(66011, 2, 45870, 3, 'FO', 'Forecariah'),
(66012, 2, 45870, 3, 'FR', 'Fria'),
(66013, 2, 45870, 3, 'GA', 'Gaoual'),
(66014, 2, 45870, 3, 'GU', 'Gueckedou'),
(66015, 2, 45870, 3, 'KA', 'Kankan'),
(66016, 2, 45870, 3, 'KE', 'Kerouane'),
(66017, 2, 45870, 3, 'KD', 'Kindia'),
(66018, 2, 45870, 3, 'KS', 'Kissidougou'),
(66019, 2, 45870, 3, 'KB', 'Koubia'),
(66020, 2, 45870, 3, 'KN', 'Koundara'),
(66021, 2, 45870, 3, 'KO', 'Kouroussa'),
(66022, 2, 45870, 3, 'LA', 'Labe'),
(66023, 2, 45870, 3, 'LE', 'Lelouma'),
(66024, 2, 45870, 3, 'LO', 'Lola'),
(66025, 2, 45870, 3, 'MC', 'Macenta'),
(66026, 2, 45870, 3, 'ML', 'Mali'),
(66027, 2, 45870, 3, 'MM', 'Mamou'),
(66028, 2, 45870, 3, 'MD', 'Mandiana'),
(66029, 2, 45870, 3, 'NZ', 'Nzerekore'),
(66030, 2, 45870, 3, 'PI', 'Pita'),
(66031, 2, 45870, 3, 'SI', 'Siguiri'),
(66032, 2, 45870, 3, 'TE', 'Telimele'),
(66033, 2, 45870, 3, 'TO', 'Tougue'),
(66034, 2, 45870, 3, 'YO', 'Yomou');

--  'Guadeloupe', 'GP', 'GLP'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66101, 2, 45880, 3, 'BT', 'Basse-Terre'),
(66102, 2, 45880, 3, 'PP', 'Pointe-a-Pitre');

--  'Equatorial Guinea', 'GQ', 'GNQ'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66201, 2, 45890, 3, 'AN', 'Annobon'),
(66202, 2, 45890, 3, 'BN', 'Bioko Norte'),
(66203, 2, 45890, 3, 'BS', 'Bioko Sur'),
(66204, 2, 45890, 3, 'CS', 'Centro Sur'),
(66205, 2, 45890, 3, 'KN', 'Kie-Ntem'),
(66206, 2, 45890, 3, 'LI', 'Litoral'),
(66207, 2, 45890, 3, 'WN', 'Wele-Nzas');

--  'Greece', 'GR', 'GRC'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66301, 2, 545, 3, 'AT', 'Attica'),
(66302, 2, 545, 3, 'CG', 'Central Greece'),
(66303, 2, 545, 3, 'CM', 'Central Macedonia'),
(66304, 2, 545, 3, 'CR', 'Crete'),
(66305, 2, 545, 3, 'EM', 'East Macedonia and Thrace'),
(66306, 2, 545, 3, 'EP', 'Epirus'),
(66307, 2, 545, 3, 'II', 'Ionian Islands'),
(66308, 2, 545, 3, 'NA', 'North Aegean'),
(66309, 2, 545, 3, 'PP', 'Peloponnesos'),
(66310, 2, 545, 3, 'SA', 'South Aegean'),
(66311, 2, 545, 3, 'TH', 'Thessaly'),
(66312, 2, 545, 3, 'WG', 'West Greece'),
(66313, 2, 545, 3, 'WM', 'West Macedonia');

--  'South Georgia and the South Sandwich Islands', 'GS', 'SGS'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (66401, 2, 45900, 3, '', '');

--  'Guatemala', 'GT', 'GTM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66501, 2, 45910, 3, 'AV', 'Alta Verapaz'),
(66502, 2, 45910, 3, 'BV', 'Baja Verapaz'),
(66503, 2, 45910, 3, 'CM', 'Chimaltenango'),
(66504, 2, 45910, 3, 'CQ', 'Chiquimula'),
(66505, 2, 45910, 3, 'ES', 'Escuintla'),
(66506, 2, 45910, 3, 'GU', 'Guatemala'),
(66507, 2, 45910, 3, 'HU', 'Huehuetenango'),
(66508, 2, 45910, 3, 'IZ', 'Izabal'),
(66509, 2, 45910, 3, 'JA', 'Jalapa'),
(66510, 2, 45910, 3, 'JU', 'Jutiapa'),
(66511, 2, 45910, 3, 'PE', 'Peten'),
(66512, 2, 45910, 3, 'PR', 'Progreso'),
(66513, 2, 45910, 3, 'QC', 'Quiche'),
(66514, 2, 45910, 3, 'QZ', 'Quetzaltenango'),
(66515, 2, 45910, 3, 'RE', 'Retalhuleu'),
(66516, 2, 45910, 3, 'ST', 'Sacatepequez'),
(66517, 2, 45910, 3, 'SM', 'San Marcos'),
(66518, 2, 45910, 3, 'SR', 'Santa Rosa'),
(66519, 2, 45910, 3, 'SO', 'Solola'),
(66520, 2, 45910, 3, 'SU', 'Suchitepequez'),
(66521, 2, 45910, 3, 'TO', 'Totonicapan'),
(66522, 2, 45910, 3, 'ZA', 'Zacapa');
     
--  'Guam', 'GU', 'GUM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66601, 2, 45920, 3, 'AH', 'Agana Heights'),
(66602, 2, 45920, 3, 'AT', 'Agat'),
(66603, 2, 45920, 3, 'AS', 'Asan'),
(66604, 2, 45920, 3, 'BA', 'Barrigada'),
(66605, 2, 45920, 3, 'CP', 'Chalan-Pago-Ordot'),
(66606, 2, 45920, 3, 'DD', 'Dededo'),
(66607, 2, 45920, 3, 'AN', 'Hagatna'),
(66608, 2, 45920, 3, 'IN', 'Inarajan'),
(66609, 2, 45920, 3, 'MA', 'Mangilao'),
(66610, 2, 45920, 3, 'ME', 'Merizo'),
(66611, 2, 45920, 3, 'MT', 'Mongmong-Toto-Maite'),
(66612, 2, 45920, 3, 'PI', 'Piti'),
(66613, 2, 45920, 3, 'SR', 'Santa Rita'),
(66614, 2, 45920, 3, 'SJ', 'Sinajana'),
(66615, 2, 45920, 3, 'TF', 'Talofofo'),
(66616, 2, 45920, 3, 'TM', 'Tamuning'),
(66617, 2, 45920, 3, 'UM', 'Umatac'),
(66618, 2, 45920, 3, 'YG', 'Yigo'),
(66619, 2, 45920, 3, 'YN', 'Yona');

--  'Guinea-Bissau', 'GW', 'GNB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66701, 2, 45930, 3, 'BA', 'Bafata'),
(66702, 2, 45930, 3, 'BM', 'Biombo'),
(66703, 2, 45930, 3, 'BS', 'Bissau'),
(66704, 2, 45930, 3, 'BL', 'Bolama'),
(66705, 2, 45930, 3, 'CA', 'Cacheu'),
(66706, 2, 45930, 3, 'GA', 'Gabu'),
(66707, 2, 45930, 3, 'OI', 'Oio'),
(66708, 2, 45930, 3, 'QU', 'Quinara'),
(66709, 2, 45930, 3, 'TO', 'Tombali');

--  'Guyana', 'GY', 'GUY'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66801, 2, 45940, 3, 'BA', 'Barima-Waini'),
(66802, 2, 45940, 3, 'CU', 'Cuyuni-Mazaruni'),
(66803, 2, 45940, 3, 'DE', 'Demerara-Mahaica'),
(66804, 2, 45940, 3, 'EB', 'East Berbice-Corentyne'),
(66805, 2, 45940, 3, 'ES', 'Essequibo Islands-West Demerara'),
(66806, 2, 45940, 3, 'MA', 'Mahaica-Berbice'),
(66807, 2, 45940, 3, 'PM', 'Pomeroon-Supenaam'),
(66808, 2, 45940, 3, 'PT', 'Potaro-Siparuni'),
(66809, 2, 45940, 3, 'UD', 'Upper Demerara-Berbice'),
(66810, 2, 45940, 3, 'UT', 'Upper Takutu-Upper Essequibo');

--  'Hong Kong', 'HK', 'HKG'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(66901, 2, 45950, 3, 'CW', 'Central and Western Hong Kong Islands'),
(66902, 2, 45950, 3, 'EA', 'Eastern Hong Kong Island'),
(66903, 2, 45950, 3, 'IS', 'Islands New Territories'),
(66904, 2, 45950, 3, 'KC', 'Kowloon City'),
(66905, 2, 45950, 3, 'KI', 'Kwai Tsing New Territories'),
(66906, 2, 45950, 3, 'KU', 'Kwun Tong'),
(66907, 2, 45950, 3, 'NO', 'North New Territories'),
(66908, 2, 45950, 3, 'SK', 'Sai Kung New Territories'),
(66909, 2, 45950, 3, 'SS', 'Sham Shui Po Kowloon'),
(66910, 2, 45950, 3, 'ST', 'Sha Tin New Territories'),
(66911, 2, 45950, 3, 'SO', 'Southern Hong Kong Island'),
(66912, 2, 45950, 3, 'TP', 'Tai Po New Territories'),
(66913, 2, 45950, 3, 'TW', 'Tsuen Wan New Territories'),
(66914, 2, 45950, 3, 'TM', 'Tuen Mun New Territories'),
(66915, 2, 45950, 3, 'WC', 'Wan Chai Hong Kong Island'),
(66916, 2, 45950, 3, 'WT', 'Wong Tai Sin Kowloon'),
(66917, 2, 45950, 3, 'YT', 'Yau Tsim Mong Kowloon'),
(66918, 2, 45950, 3, 'YL', 'Yuen Long New Territories');

--  'Heard and McDonald Islands', 'HM', 'HMD'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67001, 2, 45960, 3, 'F', 'Flat Island'),
(67002, 2, 45960, 3, 'M', 'McDonald Island'),
(67003, 2, 45960, 3, 'S', 'Shag Island'),
(67004, 2, 45960, 3, 'H', 'Heard Island');

--  'Honduras', 'HN', 'HND'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67101, 2, 45970, 3, 'AT', 'Atlantida'),
(67102, 2, 45970, 3, 'CH', 'Choluteca'),
(67103, 2, 45970, 3, 'CL', 'Colon'),
(67104, 2, 45970, 3, 'CM', 'Comayagua'),
(67105, 2, 45970, 3, 'CP', 'Copan'),
(67106, 2, 45970, 3, 'CR', 'Cortes'),
(67107, 2, 45970, 3, 'EP', 'El Paraiso'),
(67108, 2, 45970, 3, 'FM', 'Francisco Morazan'),
(67109, 2, 45970, 3, 'GD', 'Gracias a Dios'),
(67110, 2, 45970, 3, 'IN', 'Intibuca'),
(67111, 2, 45970, 3, 'IB', 'Islas de la Bahia (Bay Islands)'),
(67112, 2, 45970, 3, 'PZ', 'La Paz'),
(67113, 2, 45970, 3, 'LE', 'Lempira'),
(67114, 2, 45970, 3, 'OC', 'Ocotepeque'),
(67115, 2, 45970, 3, 'OL', 'Olancho'),
(67116, 2, 45970, 3, 'SB', 'Santa Barbara'),
(67117, 2, 45970, 3, 'VA', 'Valle'),
(67118, 2, 45970, 3, 'YO', 'Yoro');

--  'Croatia', 'HR', 'HRV'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67201, 2, 45980, 3, 'GZ', 'City of Zagreb'),
(67202, 2, 45980, 3, 'BB', 'Bjelovar-Bilogora county'),
(67203, 2, 45980, 3, 'SP', 'Brod-Posavina county'),
(67204, 2, 45980, 3, 'DN', 'Dubrovnik-Neretva county'),
(67205, 2, 45980, 3, 'IS', 'Istra county'),
(67206, 2, 45980, 3, 'KA', 'Karlovac county'),
(67207, 2, 45980, 3, 'KK', 'Koprivnica-Krizevci county'),
(67208, 2, 45980, 3, 'KZ', 'Krapina-Zagorje county'),
(67209, 2, 45980, 3, 'LS', 'Lika-Senj county'),
(67210, 2, 45980, 3, 'ME', 'Medimurje county'),
(67211, 2, 45980, 3, 'OB', 'Osijek-Baranja county'),
(67212, 2, 45980, 3, 'PS', 'Pozega-Slavonia county'),
(67213, 2, 45980, 3, 'PG', 'Primorje-Gorski county'),
(67214, 2, 45980, 3, 'SI', 'Sibenik county'),
(67215, 2, 45980, 3, 'SM', 'Sisak-Moslavina county'),
(67216, 2, 45980, 3, 'SD', 'Split-Dalmatia county'),
(67217, 2, 45980, 3, 'VA', 'Varazdin county'),
(67218, 2, 45980, 3, 'VP', 'Virovitica-Podravina'),
(67219, 2, 45980, 3, 'VS', 'Vukovar-Srijem county'),
(67220, 2, 45980, 3, 'ZK', 'Zadar-Knin county'),
(67221, 2, 45980, 3, 'ZA', 'Zagreb county');

--  'Haiti', 'HT', 'HTI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67301, 2, 45990, 3, 'AR', 'Artibonite'),
(67302, 2, 45990, 3, 'CE', 'Centre'),
(67303, 2, 45990, 3, 'GA', 'Grand\'Anse'),
(67304, 2, 45990, 3, 'NI', 'Nippes'),
(67305, 2, 45990, 3, 'ND', 'Nord'),
(67306, 2, 45990, 3, 'NE', 'Nord-Est'),
(67307, 2, 45990, 3, 'NO', 'Nord-Ouest'),
(67308, 2, 45990, 3, 'OU', 'Ouest'),
(67309, 2, 45990, 3, 'SD', 'Sud'),
(67310, 2, 45990, 3, 'SE', 'Sud-Est');

--  'Hungary', 'HU', 'HUN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67401, 2, 46000, 3, 'BK', 'Bacs-Kiskun'),
(67402, 2, 46000, 3, 'BA', 'Baranya'),
(67403, 2, 46000, 3, 'BE', 'Bekes'),
(67404, 2, 46000, 3, 'BC', 'Bekescsaba'),
(67405, 2, 46000, 3, 'BZ', 'Borsod-Abauj-Zemplen'),
(67406, 2, 46000, 3, 'BU', 'Budapest'),
(67407, 2, 46000, 3, 'CS', 'Csongrad'),
(67408, 2, 46000, 3, 'DE', 'Debrecen'),
(67409, 2, 46000, 3, 'DU', 'Dunaujvaros'),
(67410, 2, 46000, 3, 'EG', 'Eger'),
(67411, 2, 46000, 3, 'ED', 'Erd'),
(67412, 2, 46000, 3, 'FE', 'Fejer'),
(67413, 2, 46000, 3, 'GY', 'Gyor'),
(67414, 2, 46000, 3, 'GS', 'Gyor-Moson-Sopron'),
(67415, 2, 46000, 3, 'HB', 'Hajdu-Bihar'),
(67416, 2, 46000, 3, 'HE', 'Heves'),
(67417, 2, 46000, 3, 'HV', 'Hodmezovasarhely'),
(67418, 2, 46000, 3, 'JN', 'Jasz-Nagykun-Szolnok'),
(67419, 2, 46000, 3, 'KV', 'Kaposvar'),
(67420, 2, 46000, 3, 'KM', 'Kecskemet'),
(67421, 2, 46000, 3, 'KE', 'Komarom-Esztergom'),
(67422, 2, 46000, 3, 'MI', 'Miskolc'),
(67423, 2, 46000, 3, 'NK', 'Nagykanizsa'),
(67424, 2, 46000, 3, 'NO', 'Nograd'),
(67425, 2, 46000, 3, 'NY', 'Nyiregyhaza'),
(67426, 2, 46000, 3, 'PS', 'Pecs'),
(67427, 2, 46000, 3, 'PT', 'Pest'),
(67428, 2, 46000, 3, 'ST', 'Salgotarjan'),
(67429, 2, 46000, 3, 'SO', 'Somogy'),
(67430, 2, 46000, 3, 'SP', 'Sopron'),
(67431, 2, 46000, 3, 'SZ', 'Szabolcs-Szatmar-Bereg'),
(67432, 2, 46000, 3, 'SD', 'Szeged'),
(67433, 2, 46000, 3, 'SF', 'Szekesfehervar'),
(67434, 2, 46000, 3, 'SS', 'Szekszard'),
(67435, 2, 46000, 3, 'SK', 'Szolnok'),
(67436, 2, 46000, 3, 'SH', 'Szombathely'),
(67437, 2, 46000, 3, 'TB', 'Tatabanya'),
(67438, 2, 46000, 3, 'TO', 'Tolna'),
(67439, 2, 46000, 3, 'VA', 'Vas'),
(67440, 2, 46000, 3, 'VE', 'Veszprem county'),
(67441, 2, 46000, 3, 'VM', 'Veszprem city'),
(67442, 2, 46000, 3, 'ZA', 'Zala'),
(67443, 2, 46000, 3, 'ZE', 'Zalaegerszeg');

--  'Indonesia', 'ID', 'IDN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67501, 2, 46010, 3, 'AC', 'Aceh'),
(67502, 2, 46010, 3, 'BA', 'Bali'),
(67503, 2, 46010, 3, 'BB', 'Bangka-Belitung'),
(67504, 2, 46010, 3, 'BT', 'Banten'),
(67505, 2, 46010, 3, 'BE', 'Bengkulu'),
(67506, 2, 46010, 3, 'GO', 'Gorontalo'),
(67507, 2, 46010, 3, 'JK', 'Jakarta Raya'),
(67508, 2, 46010, 3, 'JA', 'Jambi'),
(67509, 2, 46010, 3, 'JB', 'Jawa Barat'),
(67510, 2, 46010, 3, 'JT', 'Jawa Tengah'),
(67511, 2, 46010, 3, 'JI', 'Jawa Timur'),
(67512, 2, 46010, 3, 'KB', 'Kalimantan Barat'),
(67513, 2, 46010, 3, 'KS', 'Kalimantan Selatan'),
(67514, 2, 46010, 3, 'KT', 'Kalimantan Tengah'),
(67515, 2, 46010, 3, 'KI', 'Kalimantan Timur'),
(67516, 2, 46010, 3, 'KU', 'Kalimantan Utara'),
(67517, 2, 46010, 3, 'KR', 'Kepulauan Riau'),
(67518, 2, 46010, 3, 'LA', 'Lampung'),
(67519, 2, 46010, 3, 'MA', 'Maluku'),
(67520, 2, 46010, 3, 'MU', 'Maluku Utara'),
(67521, 2, 46010, 3, 'NB', 'Nusa Tenggara Barat'),
(67522, 2, 46010, 3, 'NT', 'Nusa Tenggara Timur'),
(67523, 2, 46010, 3, 'PA', 'Papua'),
(67524, 2, 46010, 3, 'PB', 'Papua Barat'),
(67525, 2, 46010, 3, 'RI', 'Riau'),
(67526, 2, 46010, 3, 'SR', 'Sulawesi Barat'),
(67527, 2, 46010, 3, 'SN', 'Sulawesi Selatan'),
(67528, 2, 46010, 3, 'ST', 'Sulawesi Tengah'),
(67529, 2, 46010, 3, 'SG', 'Sulawesi Tenggara'),
(67530, 2, 46010, 3, 'SA', 'Sulawesi Utara'),
(67531, 2, 46010, 3, 'SB', 'Sumatera Barat'),
(67532, 2, 46010, 3, 'SS', 'Sumatera Selatan'),
(67533, 2, 46010, 3, 'SU', 'Sumatera Utara'),
(67534, 2, 46010, 3, 'YO', 'Yogyakarta');

--  'Ireland', 'IE', 'IRL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67601, 2, 550, 3, 'CW', 'Carlow'),
(67602, 2, 550, 3, 'CN', 'Cavan'),
(67603, 2, 550, 3, 'CE', 'Clare'),
(67604, 2, 550, 3, 'CO', 'Cork'),
(67605, 2, 550, 3, 'DL', 'Donegal'),
(67606, 2, 550, 3, 'DN', 'Dublin'),
(67607, 2, 550, 3, 'GY', 'Galway'),
(67608, 2, 550, 3, 'KY', 'Kerry'),
(67609, 2, 550, 3, 'KE', 'Kildare'),
(67610, 2, 550, 3, 'KK', 'Kilkenny'),
(67611, 2, 550, 3, 'LS', 'Laois'),
(67612, 2, 550, 3, 'LM', 'Leitrim'),
(67613, 2, 550, 3, 'LK', 'Limerick'),
(67614, 2, 550, 3, 'LD', 'Longford'),
(67615, 2, 550, 3, 'LH', 'Louth'),
(67616, 2, 550, 3, 'MO', 'Mayo'),
(67617, 2, 550, 3, 'MH', 'Meath'),
(67618, 2, 550, 3, 'MN', 'Monaghan'),
(67619, 2, 550, 3, 'OY', 'Offaly'),
(67620, 2, 550, 3, 'RN', 'Roscommon'),
(67621, 2, 550, 3, 'SO', 'Sligo'),
(67622, 2, 550, 3, 'TY', 'Tipperary'),
(67623, 2, 550, 3, 'WD', 'Waterford'),
(67624, 2, 550, 3, 'WH', 'Westmeath'),
(67625, 2, 550, 3, 'WX', 'Wexford'),
(67626, 2, 550, 3, 'WW', 'Wicklow');

--  'Israel', 'IL', 'ISR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67701, 2, 46020, 3, 'HD', 'HaDarom'),
(67702, 2, 46020, 3, 'HA', 'Haifa district'),
(67703, 2, 46020, 3, 'HM', 'HaMerkaz'),
(67704, 2, 46020, 3, 'HZ', 'HaZafon'),
(67705, 2, 46020, 3, 'JM', 'Jerusalem district'),
(67706, 2, 46020, 3, 'TA', 'Tel Aviv district');

--  'IM', 'Isle of Man'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67801, 2, 46030, 3, 'AY', 'Ayre'),
(67802, 2, 46030, 3, 'GR', 'Garff'),
(67803, 2, 46030, 3, 'GB', 'Glenfaba'),
(67804, 2, 46030, 3, 'MC', 'Michael'),
(67805, 2, 46030, 3, 'MD', 'Middle'),
(67806, 2, 46030, 3, 'RU', 'Rushen');

--  'India', 'IN', 'IND'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(67901, 2, 559, 3, 'AN', 'Andaman and Nicobar Islands'),
(67902, 2, 559, 3, 'AP', 'Andhra Pradesh'),
(67903, 2, 559, 3, 'AR', 'Arunachal Pradesh'),
(67904, 2, 559, 3, 'AS', 'Assam'),
(67905, 2, 559, 3, 'BR', 'Bihar'),
(67906, 2, 559, 3, 'CH', 'Chandigarh'),
(67907, 2, 559, 3, 'CT', 'Chhattisgarh'),
(67908, 2, 559, 3, 'DN', 'Dadar and Nagar Haveli'),
(67909, 2, 559, 3, 'DD', 'Daman and Diu'),
(67910, 2, 559, 3, 'DL', 'Delhi'),
(67911, 2, 559, 3, 'GA', 'Goa'),
(67912, 2, 559, 3, 'GJ', 'Gujarat'),
(67913, 2, 559, 3, 'HR', 'Haryana'),
(67914, 2, 559, 3, 'HP', 'Himachal Pradesh'),
(67915, 2, 559, 3, 'JK', 'Jammu and Kashmir'),
(67916, 2, 559, 3, 'JH', 'Jharkhand'),
(67917, 2, 559, 3, 'KA', 'Karnataka'),
(67918, 2, 559, 3, 'KL', 'Kerala'),
(67919, 2, 559, 3, 'LD', 'Lakshadweep Islands'),
(67920, 2, 559, 3, 'MP', 'Madhya Pradesh'),
(67921, 2, 559, 3, 'MH', 'Maharashtra'),
(67922, 2, 559, 3, 'MN', 'Manipur'),
(67923, 2, 559, 3, 'ML', 'Meghalaya'),
(67924, 2, 559, 3, 'MZ', 'Mizoram'),
(67925, 2, 559, 3, 'NL', 'Nagaland'),
(67926, 2, 559, 3, 'OR', 'Orissa'),
(67927, 2, 559, 3, 'PO', 'Puducherry'),
(67928, 2, 559, 3, 'PB', 'Punjab'),
(67929, 2, 559, 3, 'RJ', 'Rajasthan'),
(67930, 2, 559, 3, 'SK', 'Sikkim'),
(67931, 2, 559, 3, 'TN', 'Tamil Nadu'),
(67932, 2, 559, 3, 'TR', 'Tripura'),
(67933, 2, 559, 3, 'UT', 'Uttarakhand'),
(67934, 2, 559, 3, 'UP', 'Uttar Pradesh'),
(67935, 2, 559, 3, 'WB', 'West Bengal');

--  'British Indian Ocean Territory', 'IO', 'IOT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68001, 2, 46040, 3, 'DI', 'Danger Island'),
(68002, 2, 46040, 3, 'DG', 'Diego Garcia'),
(68003, 2, 46040, 3, 'EA', 'Eagle Islands'),
(68004, 2, 46040, 3, 'EG', 'Egmont Islands'),
(68005, 2, 46040, 3, 'PB', 'Peros Banhos'),
(68006, 2, 46040, 3, 'SI', 'Salomon Islands'),
(68007, 2, 46040, 3, 'NI', 'Nelsons Island'),
(68008, 2, 46040, 3, 'TB', 'Three Brothers');

--  'Iraq', 'IQ', 'IRQ'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68101, 2, 46050, 3, 'AN', 'Al Anbar'),
(68102, 2, 46050, 3, 'BA', 'Al Basrah'),
(68103, 2, 46050, 3, 'MU', 'Al Muthanna'),
(68104, 2, 46050, 3, 'QA', 'Al Qadisyah'),
(68105, 2, 46050, 3, 'NA', 'An Najaf'),
(68106, 2, 46050, 3, 'AR', 'Arbil'),
(68107, 2, 46050, 3, 'SL', 'As Sulaymaniyah'),
(68108, 2, 46050, 3, 'BB', 'Babil'),
(68109, 2, 46050, 3, 'BG', 'Baghdad city'),
(68110, 2, 46050, 3, 'DA', 'Dahuk'),
(68111, 2, 46050, 3, 'DQ', 'Dhi Qar'),
(68112, 2, 46050, 3, 'DI', 'Diyala'),
(68113, 2, 46050, 3, 'HA', 'Halabja'),
(68114, 2, 46050, 3, 'KA', 'Karbala'),
(68115, 2, 46050, 3, 'TS', 'At Ta\'mim (Kirkuk)'),
(68116, 2, 46050, 3, 'MA', 'Maysan'),
(68117, 2, 46050, 3, 'NI', 'Ninawa'),
(68118, 2, 46050, 3, 'SD', 'Salah ad Din'),
(68119, 2, 46050, 3, 'WA', 'Wasit');

--  'Iran', 'IR', 'IRN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68201, 2, 46060, 3, 'Al', 'Alborz'),
(68202, 2, 46060, 3, 'AR', 'Ardabil'),
(68203, 2, 46060, 3, 'BS', 'Bushehr'),
(68204, 2, 46060, 3, 'CM', 'Chahar Mahaal and Bakhtiari'),
(68205, 2, 46060, 3, 'EA', 'East Azarbaijan'),
(68206, 2, 46060, 3, 'ES', 'Esfahan'),
(68207, 2, 46060, 3, 'FA', 'Fars'),
(68208, 2, 46060, 3, 'GI', 'Gilan'),
(68209, 2, 46060, 3, 'GO', 'Golestan'),
(68210, 2, 46060, 3, 'HD', 'Hamadan'),
(68211, 2, 46060, 3, 'HG', 'Hormozgan'),
(68212, 2, 46060, 3, 'IL', 'Ilam'),
(68213, 2, 46060, 3, 'KE', 'Kerman'),
(68214, 2, 46060, 3, 'BK', 'Kermanshah'),
(68215, 2, 46060, 3, 'KZ', 'Khuzestan'),
(68216, 2, 46060, 3, 'KB', 'Kohkiluyeh and Buyer Ahmad'),
(68217, 2, 46060, 3, 'KD', 'Kurdistan'),
(68218, 2, 46060, 3, 'LO', 'Lorestan'),
(68219, 2, 46060, 3, 'MK', 'Markazi'),
(68220, 2, 46060, 3, 'MN', 'Mazandaran'),
(68221, 2, 46060, 3, 'KS', 'North Khorasan'),
(68222, 2, 46060, 3, 'QZ', 'Qazvin'),
(68223, 2, 46060, 3, 'QM', 'Qom'),
(68224, 2, 46060, 3, 'KV', 'Razavi Khorasan'),
(68225, 2, 46060, 3, 'SM', 'Semnan'),
(68226, 2, 46060, 3, 'SB', 'Sistan and Baluchistan'),
(68227, 2, 46060, 3, 'KJ', 'South Khorasan'),
(68228, 2, 46060, 3, 'TE', 'Tehran'),
(68229, 2, 46060, 3, 'WA', 'West Azarbaijan'),
(68230, 2, 46060, 3, 'YA', 'Yazd'),
(68231, 2, 46060, 3, 'ZA', 'Zanjan');

--  'Iceland', 'IS', 'ISL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68301, 2, 46070, 3, 'AL', 'Austurland'),
(68302, 2, 46070, 3, 'HO', 'Hofuoborgarsvaeoi (Capital)'),
(68303, 2, 46070, 3, 'NE', 'Northland'),
(68304, 2, 46070, 3, 'NV', 'Northland East'),
(68305, 2, 46070, 3, 'SU', 'Southern Peninsula'),
(68306, 2, 46070, 3, 'SL', 'Southland'),
(68307, 2, 46070, 3, 'VF', 'Western Fjords'),
(68308, 2, 46070, 3, 'VL', 'Westland');

--  'Italy', 'IT', 'ITA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68401, 2, 552, 3, 'AG', 'Agrigento'),
(68402, 2, 552, 3, 'AL', 'Alessandria'),
(68403, 2, 552, 3, 'AN', 'Ancona'),
(68404, 2, 552, 3, 'AO', 'Aosta'),
(68405, 2, 552, 3, 'AR', 'Arezzo'),
(68406, 2, 552, 3, 'AC', 'Ascoli Piceno'),
(68407, 2, 552, 3, 'AT', 'Asti'),
(68408, 2, 552, 3, 'AV', 'Avellino'),
(68409, 2, 552, 3, 'BB', 'Bari'),
(68410, 2, 552, 3, 'BT', 'Barletta-Andria-Trani'),
(68411, 2, 552, 3, 'BL', 'Belluno'),
(68412, 2, 552, 3, 'BN', 'Benevento'),
(68413, 2, 552, 3, 'BG', 'Bergamo'),
(68414, 2, 552, 3, 'BI', 'Biella'),
(68415, 2, 552, 3, 'BO', 'Bologna'),
(68416, 2, 552, 3, 'BZ', 'Bolzano'),
(68417, 2, 552, 3, 'BS', 'Brescia'),
(68418, 2, 552, 3, 'BR', 'Brindisi'),
(68419, 2, 552, 3, 'CG', 'Cagliari'),
(68420, 2, 552, 3, 'CL', 'Caltanissetta'),
(68421, 2, 552, 3, 'CB', 'Campobasso'),
(68422, 2, 552, 3, 'CI', 'Carbonia-Iglesias'),
(68423, 2, 552, 3, 'CE', 'Caserta'),
(68424, 2, 552, 3, 'CT', 'Catania'),
(68425, 2, 552, 3, 'CZ', 'Catanzaro'),
(68426, 2, 552, 3, 'CH', 'Chieti'),
(68427, 2, 552, 3, 'CO', 'Como'),
(68428, 2, 552, 3, 'CS', 'Cosenza'),
(68429, 2, 552, 3, 'CR', 'Cremona'),
(68430, 2, 552, 3, 'KR', 'Crotone'),
(68431, 2, 552, 3, 'CN', 'Cuneo'),
(68432, 2, 552, 3, 'EN', 'Enna'),
(68433, 2, 552, 3, 'FM', 'Fermo'),
(68434, 2, 552, 3, 'FE', 'Ferrara'),
(68435, 2, 552, 3, 'FI', 'Florence'),
(68436, 2, 552, 3, 'FG', 'Foggia'),
(68437, 2, 552, 3, 'FO', 'Forli-Cesena'),
(68438, 2, 552, 3, 'FR', 'Frosinone'),
(68439, 2, 552, 3, 'GE', 'Genoa'),
(68440, 2, 552, 3, 'GO', 'Gorizia'),
(68441, 2, 552, 3, 'GR', 'Grosseto'),
(68442, 2, 552, 3, 'IM', 'Imperia'),
(68443, 2, 552, 3, 'IS', 'Isernia'),
(68444, 2, 552, 3, 'AQ', 'L''Aquila'),
(68445, 2, 552, 3, 'SP', 'La Spezia'),
(68446, 2, 552, 3, 'LT', 'Latina'),
(68447, 2, 552, 3, 'LE', 'Lecce'),
(68448, 2, 552, 3, 'LC', 'Lecco'),
(68449, 2, 552, 3, 'LI', 'Livorno'),
(68450, 2, 552, 3, 'LO', 'Lodi'),
(68451, 2, 552, 3, 'LU', 'Lucca'),
(68452, 2, 552, 3, 'MC', 'Macerata'),
(68453, 2, 552, 3, 'MN', 'Mantua'),
(68454, 2, 552, 3, 'MS', 'Massa-Carrara'),
(68455, 2, 552, 3, 'MT', 'Matera'),
(68456, 2, 552, 3, 'MD', 'Medio Campidano'),
(68457, 2, 552, 3, 'ME', 'Messina'),
(68458, 2, 552, 3, 'MA', 'Milan'),
(68459, 2, 552, 3, 'MO', 'Modena'),
(68460, 2, 552, 3, 'MZ', 'Monza e Brianza'),
(68461, 2, 552, 3, 'NA', 'Naples'),
(68462, 2, 552, 3, 'NO', 'Novara'),
(68463, 2, 552, 3, 'NR', 'Nuoro'),
(68464, 2, 552, 3, 'OG', 'Ogliastra'),
(68465, 2, 552, 3, 'OT', 'Olbia-Tempio'),
(68466, 2, 552, 3, 'ON', 'Oristano'),
(68467, 2, 552, 3, 'PD', 'Padua'),
(68468, 2, 552, 3, 'PA', 'Palermo'),
(68469, 2, 552, 3, 'PR', 'Parma'),
(68470, 2, 552, 3, 'PV', 'Pavia'),
(68471, 2, 552, 3, 'PG', 'Perugia'),
(68472, 2, 552, 3, 'PS', 'Pesaro e Urbino'),
(68473, 2, 552, 3, 'PE', 'Pescara'),
(68474, 2, 552, 3, 'PC', 'Piacenza'),
(68475, 2, 552, 3, 'PI', 'Pisa'),
(68476, 2, 552, 3, 'PT', 'Pistoia'),
(68477, 2, 552, 3, 'PN', 'Pordenone'),
(68478, 2, 552, 3, 'PZ', 'Potenza'),
(68479, 2, 552, 3, 'PO', 'Prato'),
(68480, 2, 552, 3, 'RG', 'Ragusa'),
(68481, 2, 552, 3, 'RA', 'Ravenna'),
(68482, 2, 552, 3, 'RC', 'Reggio di Calabria'),
(68483, 2, 552, 3, 'RE', 'Reggio nell Emilia'),
(68484, 2, 552, 3, 'RI', 'Rieti'),
(68485, 2, 552, 3, 'RN', 'Rimini'),
(68486, 2, 552, 3, 'RM', 'Rome'),
(68487, 2, 552, 3, 'RO', 'Rovigo'),
(68488, 2, 552, 3, 'SA', 'Salerno'),
(68489, 2, 552, 3, 'SX', 'Sassari'),
(68490, 2, 552, 3, 'SV', 'Savona'),
(68491, 2, 552, 3, 'SI', 'Siena'),
(68492, 2, 552, 3, 'SO', 'Sondrio'),
(68493, 2, 552, 3, 'SR', 'Syracuse'),
(68494, 2, 552, 3, 'TA', 'Taranto'),
(68495, 2, 552, 3, 'TE', 'Teramo'),
(68496, 2, 552, 3, 'TR', 'Terni'),
(68497, 2, 552, 3, 'TP', 'Trapani'),
(68498, 2, 552, 3, 'TN', 'Trento'),
(68499, 2, 552, 3, 'TV', 'Treviso'),
(68500, 2, 552, 3, 'TS', 'Trieste'),
(68501, 2, 552, 3, 'TO', 'Turin'),
(68502, 2, 552, 3, 'UD', 'Udine'),
(68503, 2, 552, 3, 'VA', 'Varese'),
(68504, 2, 552, 3, 'VE', 'Venice'),
(68505, 2, 552, 3, 'VB', 'Verbano-Cusio-Ossola'),
(68506, 2, 552, 3, 'VC', 'Vercelli'),
(68507, 2, 552, 3, 'VR', 'Verona'),
(68508, 2, 552, 3, 'VV', 'Vibo Valentia'),
(68509, 2, 552, 3, 'VI', 'Vicenza'),
(68510, 2, 552, 3, 'VT', 'Viterbo');

--  'JE', 'Jersey'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68601, 2, 46080, 3, 'GR', 'Grouville'),
(68602, 2, 46080, 3, 'BR', 'Saint Brelade'),
(68603, 2, 46080, 3, 'CL', 'Saint Clement'),
(68604, 2, 46080, 3, 'HE', 'Saint Helier'),
(68605, 2, 46080, 3, 'JO', 'Saint John'),
(68606, 2, 46080, 3, 'LA', 'Saint Lawrence'),
(68607, 2, 46080, 3, 'MT', 'Saint Martin'),
(68608, 2, 46080, 3, 'MY', 'Saint Mary'),
(68609, 2, 46080, 3, 'OU', 'Saint Ouen'),
(68610, 2, 46080, 3, 'PE', 'Saint Peter'),
(68611, 2, 46080, 3, 'SA', 'Saint Saviour'),
(68612, 2, 46080, 3, 'TR', 'Trinity');

--  'Jamaica', 'JM', 'JAM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68701, 2, 46090, 3, 'CL', 'Clarendon'),
(68702, 2, 46090, 3, 'HA', 'Hanover'),
(68703, 2, 46090, 3, 'KI', 'Kingston'),
(68704, 2, 46090, 3, 'MA', 'Manchester'),
(68705, 2, 46090, 3, 'PO', 'Portland'),
(68706, 2, 46090, 3, 'SD', 'Saint Andrew'),
(68707, 2, 46090, 3, 'SN', 'Saint Ann'),
(68708, 2, 46090, 3, 'SC', 'Saint Catherine'),
(68709, 2, 46090, 3, 'SE', 'Saint Elizabeth'),
(68710, 2, 46090, 3, 'SJ', 'Saint James'),
(68711, 2, 46090, 3, 'SM', 'Saint Mary'),
(68712, 2, 46090, 3, 'ST', 'Saint Thomas'),
(68713, 2, 46090, 3, 'TR', 'Trelawny'),
(68714, 2, 46090, 3, 'WE', 'Westmoreland');

--  'Jordan', 'JO', 'JOR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68801, 2, 46100, 3, 'AJ', 'Ajlun'),
(68802, 2, 46100, 3, 'AM', 'Amman'),
(68803, 2, 46100, 3, 'AQ', 'Aqaba'),
(68804, 2, 46100, 3, 'BA', 'Balqa'),
(68805, 2, 46100, 3, 'IR', 'Irbid'),
(68806, 2, 46100, 3, 'JA', 'Jarash'),
(68807, 2, 46100, 3, 'KA', 'Karak'),
(68808, 2, 46100, 3, 'MN', 'Maan'),
(68809, 2, 46100, 3, 'MD', 'Madaba'),
(68810, 2, 46100, 3, 'MA', 'Mafraq'),
(68811, 2, 46100, 3, 'AT', 'At Tafilah'),
(68812, 2, 46100, 3, 'AZ', 'Az Zarqa');

--  'Japan', 'JP', 'JPN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(68901, 2, 561, 3, 'AI', 'Aichi'),
(68902, 2, 561, 3, 'AK', 'Akita'),
(68903, 2, 561, 3, 'AO', 'Aomori'),
(68904, 2, 561, 3, 'CH', 'Chiba'),
(68905, 2, 561, 3, 'EH', 'Ehime'),
(68906, 2, 561, 3, 'FI', 'Fukui'),
(68907, 2, 561, 3, 'FO', 'Fukuoka'),
(68908, 2, 561, 3, 'FS', 'Fukushima'),
(68909, 2, 561, 3, 'GF', 'Gifu'),
(68910, 2, 561, 3, 'GM', 'Gumma'),
(68911, 2, 561, 3, 'HS', 'Hiroshima'),
(68912, 2, 561, 3, 'HK', 'Hokkaido'),
(68913, 2, 561, 3, 'HG', 'Hyogo'),
(68914, 2, 561, 3, 'IB', 'Ibaraki'),
(68915, 2, 561, 3, 'IS', 'Ishikawa'),
(68916, 2, 561, 3, 'IW', 'Iwate'),
(68917, 2, 561, 3, 'KG', 'Kagawa'),
(68918, 2, 561, 3, 'KS', 'Kagoshima'),
(68919, 2, 561, 3, 'KN', 'Kanagawa'),
(68920, 2, 561, 3, 'KC', 'Kochi'),
(68921, 2, 561, 3, 'KM', 'Kumamoto'),
(68922, 2, 561, 3, 'KY', 'Kyoto'),
(68923, 2, 561, 3, 'ME', 'Mie'),
(68924, 2, 561, 3, 'MG', 'Miyagi'),
(68925, 2, 561, 3, 'MZ', 'Miyazaki'),
(68926, 2, 561, 3, 'NN', 'Nagano'),
(68927, 2, 561, 3, 'NS', 'Nagasaki'),
(68928, 2, 561, 3, 'NR', 'Nara'),
(68929, 2, 561, 3, 'NI', 'Niigata'),
(68930, 2, 561, 3, 'OT', 'Oita'),
(68931, 2, 561, 3, 'OY', 'Okayama'),
(68932, 2, 561, 3, 'ON', 'Okinawa'),
(68933, 2, 561, 3, 'OS', 'Osaka'),
(68934, 2, 561, 3, 'SG', 'Saga'),
(68935, 2, 561, 3, 'ST', 'Saitama'),
(68936, 2, 561, 3, 'SH', 'Shiga'),
(68937, 2, 561, 3, 'SM', 'Shimane'),
(68938, 2, 561, 3, 'SZ', 'Shizuoka'),
(68939, 2, 561, 3, 'TC', 'Tochigi'),
(68940, 2, 561, 3, 'TS', 'Tokushima'),
(68941, 2, 561, 3, 'TK', 'Tokyo'),
(68942, 2, 561, 3, 'TT', 'Tottori'),
(68943, 2, 561, 3, 'TY', 'Toyama'),
(68944, 2, 561, 3, 'WK', 'Wakayama'),
(68945, 2, 561, 3, 'YT', 'Yamagata'),
(68946, 2, 561, 3, 'YT', 'Yamaguchi'),
(68947, 2, 561, 3, 'YN', 'Yamanashi');

--  'Kenya', 'KE', 'KEN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69001, 2, 46110, 3, 'BA', 'Baringo'),
(69002, 2, 46110, 3, 'BO', 'Bomet'),
(69003, 2, 46110, 3, 'BN', 'Bungoma'),
(69004, 2, 46110, 3, 'BS', 'Busia'),
(69005, 2, 46110, 3, 'EM', 'Elgeyo Marakwet'),
(69006, 2, 46110, 3, 'EB', 'Embu'),
(69007, 2, 46110, 3, 'GA', 'Garissa'),
(69008, 2, 46110, 3, 'HB', 'Homa Bay'),
(69009, 2, 46110, 3, 'IS', 'Isiolo'),
(69010, 2, 46110, 3, 'KJ', 'Kajiado'),
(69011, 2, 46110, 3, 'KK', 'Kakamega'),
(69012, 2, 46110, 3, 'KR', 'Kericho'),
(69013, 2, 46110, 3, 'KB', 'Kiambu'),
(69014, 2, 46110, 3, 'KF', 'Kilifi'),
(69015, 2, 46110, 3, 'KY', 'Kirinyaga'),
(69016, 2, 46110, 3, 'KI', 'Kisii'),
(69017, 2, 46110, 3, 'KU', 'Kisumu'),
(69018, 2, 46110, 3, 'KT', 'Kitui'),
(69019, 2, 46110, 3, 'KW', 'Kwale'),
(69020, 2, 46110, 3, 'LK', 'Laikipia'),
(69021, 2, 46110, 3, 'LM', 'Lamu'),
(69022, 2, 46110, 3, 'MC', 'Machakos'),
(69023, 2, 46110, 3, 'MK', 'Makueni'),
(69024, 2, 46110, 3, 'MD', 'Mandera'),
(69025, 2, 46110, 3, 'MB', 'Marsabit'),
(69026, 2, 46110, 3, 'ME', 'Meru'),
(69027, 2, 46110, 3, 'MG', 'Migori'),
(69028, 2, 46110, 3, 'MM', 'Mombasa'),
(69029, 2, 46110, 3, 'MU', 'Murang''a'),
(69030, 2, 46110, 3, 'NB', 'Nairobi'),
(69031, 2, 46110, 3, 'NK', 'Nakuru'),
(69032, 2, 46110, 3, 'ND', 'Nandi'),
(69033, 2, 46110, 3, 'NR', 'Narok'),
(69034, 2, 46110, 3, 'NM', 'Nyamira'),
(69035, 2, 46110, 3, 'NN', 'Nyandarua'),
(69036, 2, 46110, 3, 'NI', 'Nyeri'),
(69037, 2, 46110, 3, 'SA', 'Samburu'),
(69038, 2, 46110, 3, 'SI', 'Siaya'),
(69039, 2, 46110, 3, 'TT', 'Taita Taveta'),
(69040, 2, 46110, 3, 'TR', 'Tana River'),
(69041, 2, 46110, 3, 'NT', 'Tharaka Nithi'),
(69042, 2, 46110, 3, 'TN', 'Trans Nzoia'),
(69043, 2, 46110, 3, 'TU', 'Turkana'),
(69044, 2, 46110, 3, 'UG', 'Uasin Gishu'),
(69045, 2, 46110, 3, 'VI', 'Vihiga'),
(69046, 2, 46110, 3, 'WJ', 'Wajir'),
(69047, 2, 46110, 3, 'WP', 'West Pokot');

--  'Kyrgyzstan', 'KG', 'KGZ'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69101, 2, 46120, 3, 'BA', 'Batken'),
(69102, 2, 46120, 3, 'GB', 'Bishkek'),
(69103, 2, 46120, 3, 'CH', 'Chu'),
(69104, 2, 46120, 3, 'DA', 'Jalal-Abad'),
(69105, 2, 46120, 3, 'NA', 'Naryn'),
(69106, 2, 46120, 3, 'OH', 'Osh region'),
(69107, 2, 46120, 3, 'OC', 'Osh city'),
(69108, 2, 46120, 3, 'TL', 'Talas'),
(69109, 2, 46120, 3, 'YK', 'Ysyk-Kol');

--  'Cambodia', 'KH', 'KHM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69201, 2, 46130, 3, 'OM', 'Banteay Meanchey'),
(69202, 2, 46130, 3, 'BA', 'Battambang'),
(69203, 2, 46130, 3, 'KC', 'Kampong Cham'),
(69204, 2, 46130, 3, 'KG', 'Kampong Chhnang'),
(69205, 2, 46130, 3, 'KS', 'Kampong Speu'),
(69206, 2, 46130, 3, 'KT', 'Kampong Thum'),
(69207, 2, 46130, 3, 'KP', 'Kampot'),
(69208, 2, 46130, 3, 'KN', 'Kandal'),
(69209, 2, 46130, 3, 'KK', 'Kaoh Kong'),
(69210, 2, 46130, 3, 'KH', 'Krachie'),
(69211, 2, 46130, 3, 'KB', 'Krong Keb'),
(69212, 2, 46130, 3, 'PL', 'Krong Pailin'),
(69213, 2, 46130, 3, 'KA', 'Krong Preah Sihanouk'),
(69214, 2, 46130, 3, 'MK', 'Mondul Kiri'),
(69215, 2, 46130, 3, 'OC', 'Oddar Meancheay'),
(69216, 2, 46130, 3, 'PP', 'Phnom Penh'),
(69217, 2, 46130, 3, 'PO', 'Pouthisat'),
(69218, 2, 46130, 3, 'PH', 'Preah Vihear'),
(69219, 2, 46130, 3, 'PY', 'Prey Vieng'),
(69220, 2, 46130, 3, 'RO', 'Ratanak Kiri'),
(69221, 2, 46130, 3, 'SI', 'Siemreap'),
(69222, 2, 46130, 3, 'ST', 'Stung Treng'),
(69223, 2, 46130, 3, 'SR', 'Svay Rieng'),
(69224, 2, 46130, 3, 'TA', 'Takeo'),
(69225, 2, 46130, 3, 'TB', 'Tbong Khmum');

--  'Kiribati', 'KI', 'KIR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69301, 2, 46140, 3, 'GI', 'Gilbert Islands'),
(69302, 2, 46140, 3, 'LI', 'Line Islands'),
(69303, 2, 46140, 3, 'PI', 'Phoenix Islands');

--  'Comoros', 'KM', 'COM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69401, 2, 46150, 3, 'AN', 'Anjouan'),
(69402, 2, 46150, 3, 'GC', 'Grande Comore'),
(69403, 2, 46150, 3, 'MO', 'Moheli');

--  'Saint Kitts and Nevis', 'KN', 'KNA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69501, 2, 46160, 3, 'CC', 'Christ Church Nichola Town'),
(69502, 2, 46160, 3, 'AS', 'Saint Anne Sandy Point'),
(69503, 2, 46160, 3, 'GB', 'Saint George Basseterre'),
(69504, 2, 46160, 3, 'GG', 'Saint George Gingerland'),
(69505, 2, 46160, 3, 'JW', 'Saint James Windward'),
(69506, 2, 46160, 3, 'JC', 'Saint John Capesterre'),
(69507, 2, 46160, 3, 'JF', 'Saint John Figtree'),
(69508, 2, 46160, 3, 'MC', 'Saint Mary Cayon'),
(69509, 2, 46160, 3, 'PP', 'Saint Paul Capesterre'),
(69510, 2, 46160, 3, 'PL', 'Saint Paul Charlestown'),
(69511, 2, 46160, 3, 'PB', 'Saint Peter Basseterre'),
(69512, 2, 46160, 3, 'TL', 'Saint Thomas Lowland'),
(69513, 2, 46160, 3, 'TM', 'Saint Thomas Middle Island'),
(69514, 2, 46160, 3, 'TP', 'Trinity Palmetto Point');

--  'Korea, Democratic People\'s Republic of', 'KP', 'PRK' (NORTH Korea)
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69601, 2, 46170, 3, 'CH', 'Chagang-do'),
(69602, 2, 46170, 3, 'HG', 'Hamgyong-bukto'),
(69603, 2, 46170, 3, 'HN', 'Hamgyong-namdo'),
(69604, 2, 46170, 3, 'WK', 'Hwanghae-bukto'),
(69605, 2, 46170, 3, 'WN', 'Hwanghae-namdo'),
(69606, 2, 46170, 3, 'KW', 'Kangwon-do'),
(69607, 2, 46170, 3, 'NJ', 'Najin Sonbong-si'),
(69608, 2, 46170, 3, 'PB', 'P''yongan-bukto'),
(69609, 2, 46170, 3, 'PM', 'P''yongan-namdo'),
(69610, 2, 46170, 3, 'PY', 'P''yongyang-si'),
(69611, 2, 46170, 3, 'YG', 'Yanggang-do');

--  'Korea, Republic of', 'KR', 'KOR' (EAST Korea)
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69701, 2, 556, 3, 'PU', 'Busan City'),
(69702, 2, 556, 3, 'HB', 'Chungcheong North province'),
(69703, 2, 556, 3, 'HN', 'Chungcheong South province'),
(69704, 2, 556, 3, 'TG', 'Daegu City'),
(69705, 2, 556, 3, 'TJ', 'Daejeon City'),
(69706, 2, 556, 3, 'KW', 'Gangwon province'),
(69707, 2, 556, 3, 'KJ', 'Gwangju City'),
(69708, 2, 556, 3, 'KG', 'Gyeonggi province'),
(69709, 2, 556, 3, 'KB', 'Gyeongsang North province'),
(69710, 2, 556, 3, 'KN', 'Gyeongsang South province'),
(69711, 2, 556, 3, 'IN', 'Incheon City'),
(69712, 2, 556, 3, 'CJ', 'Jeju province'),
(69713, 2, 556, 3, 'CB', 'Jeolla North province'),
(69714, 2, 556, 3, 'CN', 'Jeolla South province'),
(69715, 2, 556, 3, 'SJ', 'Sejong City'),
(69716, 2, 556, 3, 'SO', 'Seoul City'),
(69717, 2, 556, 3, 'UL', 'Ulsan City');

--  'Kuwait', 'KW', 'KWT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69801, 2, 46180, 3, 'AH', 'Al Ahmadi'),
(69802, 2, 46180, 3, 'FA', 'Al Farwaniyah'),
(69803, 2, 46180, 3, 'JA', 'Al Jahrah'),
(69804, 2, 46180, 3, 'KU', 'Al Kuwayt (Al Asimah)'),
(69805, 2, 46180, 3, 'HW', 'Hawalli'),
(69806, 2, 46180, 3, 'MU', 'Mubarak Al-Kabir');

--  'Cayman Islands', 'KY', 'CYM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(69901, 2, 46190, 3, 'BT', 'Bodden Town'),
(69902, 2, 46190, 3, 'EE', 'East End'),
(69903, 2, 46190, 3, 'GT', 'George Town'),
(69904, 2, 46190, 3, 'NS', 'North Side'),
(69905, 2, 46190, 3, 'SI', 'Sister Islands'),
(69906, 2, 46190, 3, 'WB', 'West Bay');

--  'Kazakhstan', 'KZ', 'KAZ'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70001, 2, 46200, 3, 'AC', 'Almaty City'),
(70002, 2, 46200, 3, 'AA', 'Almaty region'),
(70003, 2, 46200, 3, 'AM', 'Akmola region'),
(70004, 2, 46200, 3, 'AT', 'Aktyube region'),
(70005, 2, 46200, 3, 'AS', 'Astana City'),
(70006, 2, 46200, 3, 'AR', 'Atyrau region'),
(70007, 2, 46200, 3, 'BY', 'Bayqonyr City'),
(70008, 2, 46200, 3, 'EK', 'East Kazakhstan Region'),     
(70009, 2, 46200, 3, 'MA', 'Manghystau region'),
(70010, 2, 46200, 3, 'KA', 'Karaganda region'),      
(70011, 2, 46200, 3, 'NK', 'North Kazakhstan Region'),
(70012, 2, 46200, 3, 'KU', 'Kustanay region'),       
(70013, 2, 46200, 3, 'KY', 'Kyzylorda region'),      
(70014, 2, 46200, 3, 'PA', 'Pavlodar region'),
(70015, 2, 46200, 3, 'SK', 'South Kazakhstan Region'),
(70016, 2, 46200, 3, 'WK', 'West Kazakhstan Region'),
(70017, 2, 46200, 3, 'ZH', 'Zhambyl region');

--  'Lao People\'s Democratic Republic', 'LA', 'LAO'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70101, 2, 46210, 3, 'AT', 'Attapu'),
(70102, 2, 46210, 3, 'BK', 'Bokeo'),
(70103, 2, 46210, 3, 'BL', 'Bolikhamxai'),
(70104, 2, 46210, 3, 'CH', 'Champasak'),
(70105, 2, 46210, 3, 'HO', 'Houaphan'),
(70106, 2, 46210, 3, 'KH', 'Khammouan'),
(70107, 2, 46210, 3, 'LM', 'Louang Namtha'),
(70108, 2, 46210, 3, 'LP', 'Louangphabang'),
(70109, 2, 46210, 3, 'OU', 'Oudomxai'),
(70110, 2, 46210, 3, 'PH', 'Phongsali'),
(70111, 2, 46210, 3, 'SL', 'Salavan'),
(70112, 2, 46210, 3, 'SV', 'Savannakhet'),
(70113, 2, 46210, 3, 'VN', 'Vientiane city'),
(70114, 2, 46210, 3, 'VT', 'Vientiane prefecture'),
(70115, 2, 46210, 3, 'XA', 'Xaignabouli'),
(70116, 2, 46210, 3, 'XE', 'Xekong'),
(70117, 2, 46210, 3, 'XI', 'Xiangkhoang');

--  'Lebanon', 'LB', 'LBN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70201, 2, 46220, 3, 'AA', 'Aakkar'),
(70202, 2, 46220, 3, 'NA', 'An Nabatiyah'),
(70203, 2, 46220, 3, 'BH', 'Baalbek-Hermel'),
(70204, 2, 46220, 3, 'BA', 'Beirut'),
(70205, 2, 46220, 3, 'BQ', 'Beqaa'),
(70206, 2, 46220, 3, 'JL', 'Mount Lebanon'),
(70207, 2, 46220, 3, 'NL', 'North Lebanon'),
(70208, 2, 46220, 3, 'JA', 'South Lebanon');

--  'Saint Lucia', 'LC', 'LCA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70301, 2, 46230, 3, 'AR', 'Anse-la-Raye'),
(70302, 2, 46230, 3, 'CN', 'Canaries'),
(70303, 2, 46230, 3, 'CS', 'Castries'),
(70304, 2, 46230, 3, 'CH', 'Choiseul'),
(70305, 2, 46230, 3, 'DE', 'Dennery'),
(70306, 2, 46230, 3, 'GI', 'Gros-Islet'),
(70307, 2, 46230, 3, 'LB', 'Laborie'),
(70308, 2, 46230, 3, 'MI', 'Micoud'),
(70309, 2, 46230, 3, 'CO', 'Soufriere'),
(70310, 2, 46230, 3, 'VF', 'Vieux-Fort');

--  'Liechtenstein', 'LI', 'LIE'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70401, 2, 46240, 3, 'BA', 'Balzers'),
(70402, 2, 46240, 3, 'ES', 'Eschen'),
(70403, 2, 46240, 3, 'GA', 'Gamprin'),
(70404, 2, 46240, 3, 'MA', 'Mauren'),
(70405, 2, 46240, 3, 'PL', 'Planken'),
(70406, 2, 46240, 3, 'RU', 'Ruggell'),
(70407, 2, 46240, 3, 'SN', 'Schaan'),
(70408, 2, 46240, 3, 'SB', 'Schellenberg'),
(70409, 2, 46240, 3, 'TN', 'Triesen'),
(70410, 2, 46240, 3, 'TB', 'Triesenberg'),
(70411, 2, 46240, 3, 'VA', 'Vaduz');

--  'Sri Lanka', 'LK', 'LKA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70501, 2, 46250, 3, 'AP', 'Ampara'),
(70502, 2, 46250, 3, 'AD', 'Anuradhapura'),
(70503, 2, 46250, 3, 'BD', 'Badulla'),
(70504, 2, 46250, 3, 'BC', 'Batticaloa'),
(70505, 2, 46250, 3, 'CO', 'Colombo'),
(70506, 2, 46250, 3, 'GL', 'Galle'),
(70507, 2, 46250, 3, 'GQ', 'Gampaha'),
(70508, 2, 46250, 3, 'HB', 'Hambantota'),
(70509, 2, 46250, 3, 'JA', 'Jaffna'),
(70510, 2, 46250, 3, 'KT', 'Kalutara'),
(70511, 2, 46250, 3, 'KY', 'Kandy'),
(70512, 2, 46250, 3, 'KE', 'Kegalle'),
(70513, 2, 46250, 3, 'KL', 'Kilinochchi'),
(70514, 2, 46250, 3, 'KG', 'Kurunegala'),
(70515, 2, 46250, 3, 'MB', 'Mannar'),
(70516, 2, 46250, 3, 'MT', 'Matale'),
(70517, 2, 46250, 3, 'MH', 'Matara'),
(70518, 2, 46250, 3, 'MJ', 'Moneragala'),
(70519, 2, 46250, 3, 'MP', 'Mullaitivu'),
(70520, 2, 46250, 3, 'NW', 'Nuwara Eliya'),
(70521, 2, 46250, 3, 'PR', 'Polonnaruwa'),
(70522, 2, 46250, 3, 'PX', 'Puttalam'),
(70523, 2, 46250, 3, 'RN', 'Ratnapura'),
(70524, 2, 46250, 3, 'TC', 'Trincomalee'),
(70525, 2, 46250, 3, 'VA', 'Vavuniya');

--  'Liberia', 'LR', 'LBR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70601, 2, 46260, 3, 'BM', 'Bomi'),
(70602, 2, 46260, 3, 'BG', 'Bong'),
(70603, 2, 46260, 3, 'GP', 'Gbarpolu'),
(70604, 2, 46260, 3, 'GB', 'Grand Bassa'),
(70605, 2, 46260, 3, 'CM', 'Grand Cape Mount'),
(70606, 2, 46260, 3, 'GD', 'Grand Gedeh'),
(70607, 2, 46260, 3, 'GK', 'Grand Kru'),
(70608, 2, 46260, 3, 'LF', 'Lofa'),
(70609, 2, 46260, 3, 'MG', 'Margibi'),
(70610, 2, 46260, 3, 'MY', 'Maryland'),
(70611, 2, 46260, 3, 'MO', 'Montserrado'),
(70612, 2, 46260, 3, 'NI', 'Nimba'),
(70613, 2, 46260, 3, 'RC', 'River Cess'),
(70614, 2, 46260, 3, 'RG', 'River Gee'),
(70615, 2, 46260, 3, 'SI', 'Sinoe');

--  'Lesotho', 'LS', 'LSO'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70701, 2, 46270, 3, 'BE', 'Berea'),
(70702, 2, 46270, 3, 'BB', 'Butha-Buthe'),
(70703, 2, 46270, 3, 'LE', 'Leribe'),
(70704, 2, 46270, 3, 'MF', 'Mafeteng'),
(70705, 2, 46270, 3, 'MS', 'Maseru'),
(70706, 2, 46270, 3, 'MH', 'Mohale\'s Hoek'),
(70707, 2, 46270, 3, 'MK', 'Mokhotlong'),
(70708, 2, 46270, 3, 'QN', 'Qacha\'s Nek'),
(70709, 2, 46270, 3, 'QT', 'Quthing'),
(70710, 2, 46270, 3, 'TT', 'Thaba-Tseka');

--  'Lithuania', 'LT', 'LTU'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70801, 2, 46280, 3, 'AL', 'Alytus'),
(70802, 2, 46280, 3, 'KS', 'Kaunas'),
(70803, 2, 46280, 3, 'KP', 'Klaipeda'),
(70804, 2, 46280, 3, 'MA', 'Marijampole'),
(70805, 2, 46280, 3, 'PA', 'Panevezys'),
(70806, 2, 46280, 3, 'SH', 'Shiauliai'),
(70807, 2, 46280, 3, 'TG', 'Taurage'),
(70808, 2, 46280, 3, 'TL', 'Telsiai'),
(70809, 2, 46280, 3, 'UN', 'Utena'),
(70810, 2, 46280, 3, 'VI', 'Vilnius');

--  'Luxembourg', 'LU', 'LUX'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(70901, 2, 46290, 3, 'DI', 'Diekirch'),
(70902, 2, 46290, 3, 'GR', 'Grevenmacher'),
(70903, 2, 46290, 3, 'LU', 'Luxembourg');

--  'Latvia', 'LV', 'LVA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(71001, 2, 46300, 3, 'AD', 'Adazi'),
(71002, 2, 46300, 3, 'AG', 'Aglona'),
(71003, 2, 46300, 3, 'AK', 'Aizkraukle'),
(71004, 2, 46300, 3, 'AZ', 'Aizpute'),
(71005, 2, 46300, 3, 'AN', 'Akniste'),
(71006, 2, 46300, 3, 'AJ', 'Aloja'),
(71007, 2, 46300, 3, 'AS', 'Alsunga'),
(71008, 2, 46300, 3, 'AE', 'Aluksne'),
(71009, 2, 46300, 3, 'AM', 'Amata'),
(71010, 2, 46300, 3, 'AP', 'Ape'),
(71011, 2, 46300, 3, 'AU', 'Auce'),
(71012, 2, 46300, 3, 'BB', 'Babite'),
(71013, 2, 46300, 3, 'BD', 'Baldone'),
(71014, 2, 46300, 3, 'BA', 'Baltinava'),
(71015, 2, 46300, 3, 'BV', 'Balvi'),
(71016, 2, 46300, 3, 'BK', 'Bauska'),
(71017, 2, 46300, 3, 'BE', 'Beverina'),
(71018, 2, 46300, 3, 'BR', 'Broceni'),
(71019, 2, 46300, 3, 'BT', 'Burtnieki'),
(71020, 2, 46300, 3, 'CR', 'Carnikava'),
(71021, 2, 46300, 3, 'CS', 'Cesis'),
(71022, 2, 46300, 3, 'CV', 'Cesvaine'),
(71023, 2, 46300, 3, 'CI', 'Cibla'),
(71024, 2, 46300, 3, 'DD', 'Dagda'),
(71025, 2, 46300, 3, 'DP', 'Daugavpils'),
(71026, 2, 46300, 3, 'DV', 'Daugavpils City'),
(71027, 2, 46300, 3, 'DB', 'Dobele'),
(71028, 2, 46300, 3, 'DN', 'Dundaga'),
(71029, 2, 46300, 3, 'DR', 'Durbe'),
(71030, 2, 46300, 3, 'EN', 'Engure'),
(71031, 2, 46300, 3, 'ER', 'Ergli'),
(71032, 2, 46300, 3, 'GA', 'Garkalne'),
(71033, 2, 46300, 3, 'GR', 'Grobina'),
(71034, 2, 46300, 3, 'GU', 'Gulbene'),
(71035, 2, 46300, 3, 'IE', 'Iecava'),
(71036, 2, 46300, 3, 'IK', 'Ikskile'),
(71037, 2, 46300, 3, 'IL', 'Ilukste'),
(71038, 2, 46300, 3, 'IN', 'Incukalns'),
(71039, 2, 46300, 3, 'JJ', 'Jaunjelgava'),
(71040, 2, 46300, 3, 'JA', 'Jaunpiebalga'),
(71041, 2, 46300, 3, 'JU', 'Jaunpils'),
(71042, 2, 46300, 3, 'JP', 'Jekabpils'),
(71043, 2, 46300, 3, 'JB', 'Jekabpils city'),
(71044, 2, 46300, 3, 'JL', 'Jelgava'),
(71045, 2, 46300, 3, 'JE', 'Jelgava city'),
(71046, 2, 46300, 3, 'JM', 'Jurmala city'),
(71047, 2, 46300, 3, 'KN', 'Kandava'),
(71048, 2, 46300, 3, 'KA', 'Karsava'),
(71049, 2, 46300, 3, 'KG', 'Kegums'),
(71050, 2, 46300, 3, 'KK', 'Kekava'),
(71051, 2, 46300, 3, 'VR', 'Kocenu'),
(71052, 2, 46300, 3, 'KO', 'Koknese'),
(71053, 2, 46300, 3, 'KS', 'Kraslava'),
(71054, 2, 46300, 3, 'KM', 'Krimulda'),
(71055, 2, 46300, 3, 'KT', 'Krustpils'),
(71056, 2, 46300, 3, 'KD', 'Kuldiga'),
(71057, 2, 46300, 3, 'LL', 'Lielvarde'),
(71058, 2, 46300, 3, 'LJ', 'Liepaja city'),
(71059, 2, 46300, 3, 'LG', 'Ligatne'),
(71060, 2, 46300, 3, 'LI', 'Limbazi'),
(71061, 2, 46300, 3, 'LV', 'Livani'),
(71062, 2, 46300, 3, 'LB', 'Lubana'),
(71063, 2, 46300, 3, 'LZ', 'Ludza'),
(71064, 2, 46300, 3, 'MD', 'Madona'),
(71065, 2, 46300, 3, 'ML', 'Malpils'),
(71066, 2, 46300, 3, 'MR', 'Marupe'),
(71067, 2, 46300, 3, 'MZ', 'Mazsalaca'),
(71068, 2, 46300, 3, 'ME', 'Mersraga'),
(71069, 2, 46300, 3, 'NA', 'Naukseni'),
(71070, 2, 46300, 3, 'NE', 'Nereta'),
(71071, 2, 46300, 3, 'NI', 'Nica'),
(71072, 2, 46300, 3, 'OR', 'Ogre'),
(71073, 2, 46300, 3, 'OL', 'Olaine'),
(71074, 2, 46300, 3, 'OZ', 'Ozolnieki'),
(71075, 2, 46300, 3, 'PG', 'Pargauja'),
(71076, 2, 46300, 3, 'PT', 'Pavilosta'),
(71077, 2, 46300, 3, 'PL', 'Plavinas'),
(71078, 2, 46300, 3, 'PI', 'Preili'),
(71079, 2, 46300, 3, 'PK', 'Priekule'),
(71080, 2, 46300, 3, 'PU', 'Priekuli'),
(71081, 2, 46300, 3, 'RN', 'Rauna'),
(71082, 2, 46300, 3, 'RE', 'Rezekne'),
(71083, 2, 46300, 3, 'RK', 'Rezekne city'),
(71084, 2, 46300, 3, 'RB', 'Riebini'),
(71085, 2, 46300, 3, 'RA', 'Riga city'),
(71086, 2, 46300, 3, 'RR', 'Roja'),
(71087, 2, 46300, 3, 'RP', 'Ropazi'),
(71088, 2, 46300, 3, 'RC', 'Rucava'),
(71089, 2, 46300, 3, 'RJ', 'Rugaji'),
(71090, 2, 46300, 3, 'RU', 'Rujiena'),
(71091, 2, 46300, 3, 'RD', 'Rundale'),
(71092, 2, 46300, 3, 'SL', 'Sala'),
(71093, 2, 46300, 3, 'SC', 'Salacgriva'),
(71094, 2, 46300, 3, 'SS', 'Salaspils'),
(71095, 2, 46300, 3, 'SD', 'Saldus'),
(71096, 2, 46300, 3, 'SU', 'Saulkrasti'),
(71097, 2, 46300, 3, 'SE', 'Seja'),
(71098, 2, 46300, 3, 'SI', 'Sigulda'),
(71099, 2, 46300, 3, 'SR', 'Skriveri'),
(71100, 2, 46300, 3, 'SK', 'Skrunda'),
(71101, 2, 46300, 3, 'SM', 'Smiltene'),
(71102, 2, 46300, 3, 'SP', 'Stopini'),
(71103, 2, 46300, 3, 'ST', 'Strenci'),
(71104, 2, 46300, 3, 'TL', 'Talsi'),
(71105, 2, 46300, 3, 'TE', 'Tervete'),
(71106, 2, 46300, 3, 'TK', 'Tukums'),
(71107, 2, 46300, 3, 'VD', 'Vainode'),
(71108, 2, 46300, 3, 'VA', 'Valka'),
(71109, 2, 46300, 3, 'VE', 'Valmiera city'),
(71110, 2, 46300, 3, 'VX', 'Varaklani'),
(71111, 2, 46300, 3, 'VV', 'Varkava'),
(71112, 2, 46300, 3, 'VB', 'Vecpiebalga'),
(71113, 2, 46300, 3, 'VC', 'Vecumnieki'),
(71114, 2, 46300, 3, 'VN', 'Ventspils'),
(71115, 2, 46300, 3, 'VS', 'Ventspils city'),
(71116, 2, 46300, 3, 'VT', 'Viesite'),
(71117, 2, 46300, 3, 'VL', 'Vilaka'),
(71118, 2, 46300, 3, 'VI', 'Vilani'),
(71119, 2, 46300, 3, 'ZI', 'Zilupe');

--  'Libyan Arab Jamahiriya', 'LY', 'LBY'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(71201, 2, 46310, 3, 'BN', 'Al Butnan'),
(71202, 2, 46310, 3, 'JK', 'Al Jabal al Akhdar'),
(71203, 2, 46310, 3, 'JG', 'Al Jabal al Gharbi'),
(71204, 2, 46310, 3, 'JR', 'Al Jifarah'),
(71205, 2, 46310, 3, 'JF', 'Al Jufrah'),
(71206, 2, 46310, 3, 'KU', 'Al Kufrah'),
(71207, 2, 46310, 3, 'MA', 'Al Marj'),
(71208, 2, 46310, 3, 'MR', 'Al Marqab'),
(71209, 2, 46310, 3, 'AW', 'Al Wahat'),
(71210, 2, 46310, 3, 'NK', 'An Nuqat al Khams'),
(71211, 2, 46310, 3, 'ZA', 'Az Zawiyah'),
(71212, 2, 46310, 3, 'BG', 'Benghazi'),
(71213, 2, 46310, 3, 'DA', 'Darnah'),
(71214, 2, 46310, 3, 'GH', 'Ghat'),
(71215, 2, 46310, 3, 'MS', 'Misratah'),
(71216, 2, 46310, 3, 'MU', 'Murzuq'),
(71217, 2, 46310, 3, 'NT', 'Nalut'),
(71218, 2, 46310, 3, 'SA', 'Sabha'),
(71219, 2, 46310, 3, 'ST', 'Surt'),
(71220, 2, 46310, 3, 'TR', 'Tripoli'),
(71221, 2, 46310, 3, 'WH', 'Wadi al Hayat'),
(71222, 2, 46310, 3, 'WS', 'Wadi ash Shati\'');

--  'Morocco', 'MA', 'MAR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(71301, 2, 46320, 3, 'CO', 'Chaouia - Ouardigha'),
(71302, 2, 46320, 3, 'DA', 'Doukkala - Abda'),
(71303, 2, 46320, 3, 'FB', 'Fes - Boulemane'),
(71304, 2, 46320, 3, 'GB', 'Gharb - Chrarda - Beni Hssen'),
(71305, 2, 46320, 3, 'GC', 'Grand Casablanca'),
(71306, 2, 46320, 3, 'GE', 'Guelmim - Es-Semara'),
(71307, 2, 46320, 3, 'LB', 'Laayoune - Boujdour - Sakia El Hamra'),
(71308, 2, 46320, 3, 'MK', 'Marrakech - Tensift - Al Haouz'),
(71309, 2, 46320, 3, 'MT', 'Meknes - Tafilalet'),
(71310, 2, 46320, 3, 'OR', 'Oriental'),
(71311, 2, 46320, 3, 'OL', 'Oued Ed-Dahab - Lagouira'),
(71312, 2, 46320, 3, 'RZ', 'Rabat - Sale - Zemmour - Zaer'),
(71313, 2, 46320, 3, 'SM', 'Souss - Massa - Draa'),
(71314, 2, 46320, 3, 'TD', 'Tadla - Azilal'),
(71315, 2, 46320, 3, 'TO', 'Tanger - Tetouan'),
(71316, 2, 46320, 3, 'TH', 'Taza - Al Hoceima - Taounate');

--  'Monaco', 'MC', 'MCO'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(71401, 2, 46330, 3, 'FO', 'Fontvieille'),
(71402, 2, 46330, 3, 'JE', 'Jardin Exotique'),
(71403, 2, 46330, 3, 'CL', 'La Colle'),
(71404, 2, 46330, 3, 'CO', 'La Condamine'),
(71405, 2, 46330, 3, 'GA', 'La Gare'),
(71406, 2, 46330, 3, 'SO', 'La Source'),
(71407, 2, 46330, 3, 'LA', 'Larvotto'),
(71408, 2, 46330, 3, 'MA', 'Malbousquet'),
(71409, 2, 46330, 3, 'MO', 'Monaco-Ville'),
(71410, 2, 46330, 3, 'MG', 'Moneghetti'),
(71411, 2, 46330, 3, 'MC', 'Monte-Carlo'),
(71412, 2, 46330, 3, 'MU', 'Moulins'),
(71413, 2, 46330, 3, 'PH', 'Port-Hercule'),
(71414, 2, 46330, 3, 'SR', 'Saint-Roman'),
(71415, 2, 46330, 3, 'SD', 'Sainte-Devote'),
(71416, 2, 46330, 3, 'SP', 'Spelugues'),
(71417, 2, 46330, 3, 'VR', 'Vallon de la Rousse');

--  'Moldova, Republic of', 'MD', 'MDA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(71501, 2, 46340, 3, 'AN', 'Anenii Noi'),
(71502, 2, 46340, 3, 'BT', 'Balti city'),
(71503, 2, 46340, 3, 'BA', 'Basarabeasca'),
(71504, 2, 46340, 3, 'BD', 'Bender city'),
(71505, 2, 46340, 3, 'BR', 'Briceni'),
(71506, 2, 46340, 3, 'CH', 'Cahul'),
(71507, 2, 46340, 3, 'CA', 'Calarasi'),
(71508, 2, 46340, 3, 'CN', 'Cantemir'),
(71509, 2, 46340, 3, 'CU', 'Causeni'),
(71510, 2, 46340, 3, 'CV', 'Chisinau city'),
(71511, 2, 46340, 3, 'CS', 'Cimislia'),
(71512, 2, 46340, 3, 'CR', 'Criuleni'),
(71513, 2, 46340, 3, 'DO', 'Donduseni'),
(71514, 2, 46340, 3, 'DR', 'Drochia'),
(71515, 2, 46340, 3, 'DB', 'Dubasari'),
(71516, 2, 46340, 3, 'ED', 'Edinet'),
(71517, 2, 46340, 3, 'FA', 'Falesti'),
(71518, 2, 46340, 3, 'FL', 'Floresti'),
(71519, 2, 46340, 3, 'GA', 'Gagauzia'),
(71520, 2, 46340, 3, 'GL', 'Glodeni'),
(71521, 2, 46340, 3, 'HI', 'Hincesti'),
(71522, 2, 46340, 3, 'IA', 'Ialoveni'),
(71523, 2, 46340, 3, 'LE', 'Leova'),
(71524, 2, 46340, 3, 'NI', 'Nisporeni'),
(71525, 2, 46340, 3, 'OC', 'Ocnita'),
(71526, 2, 46340, 3, 'OR', 'Orhei'),
(71527, 2, 46340, 3, 'RZ', 'Rezina'),
(71528, 2, 46340, 3, 'RS', 'Riscani'),
(71529, 2, 46340, 3, 'SI', 'Singerei'),
(71530, 2, 46340, 3, 'SD', 'Soldanesti'),
(71531, 2, 46340, 3, 'SO', 'Soroca'),
(71532, 2, 46340, 3, 'SV', 'Stefan Voda'),
(71533, 2, 46340, 3, 'ST', 'Straseni'),
(71534, 2, 46340, 3, 'TA', 'Taraclia'),
(71535, 2, 46340, 3, 'TE', 'Telenesti'),
(71536, 2, 46340, 3, 'DU', 'Transnistria'),
(71537, 2, 46340, 3, 'UG', 'Ungheni');

--  'ME', 'MON', 'Montenegro'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(71601, 2, 46350, 3, 'AN', 'Andrijevica'),
(71602, 2, 46350, 3, 'BA', 'Bar'),
(71603, 2, 46350, 3, 'BR', 'Berane'),
(71604, 2, 46350, 3, 'BP', 'Bijelo Polje'),
(71605, 2, 46350, 3, 'BU', 'Budva'),
(71606, 2, 46350, 3, 'CE', 'Cetinje'),
(71607, 2, 46350, 3, 'DA', 'Danilovgrad'),
(71608, 2, 46350, 3, 'HN', 'Herceg Novi'),
(71609, 2, 46350, 3, 'KL', 'Kolashin'),
(71610, 2, 46350, 3, 'KT', 'Kotor'),
(71611, 2, 46350, 3, 'MK', 'Mojkovac'),
(71612, 2, 46350, 3, 'NK', 'Nikshich'),
(71613, 2, 46350, 3, 'PT', 'Petnjica'),
(71614, 2, 46350, 3, 'PV', 'Plav'),
(71616, 2, 46350, 3, 'PL', 'Pljevlja'),
(71615, 2, 46350, 3, 'PU', 'Pluzhine'),
(71617, 2, 46350, 3, 'PG', 'Podgorica *'),
(71618, 2, 46350, 3, 'RO', 'Rozhaje'),
(71619, 2, 46350, 3, 'SA', 'Shavnik'),
(71620, 2, 46350, 3, 'TI', 'Tivat'),
(71621, 2, 46350, 3, 'UL', 'Ulcinj'),
(71622, 2, 46350, 3, 'ZA', 'Zhabljak');

--  'MF', 'Saint Martin'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (71701, 2, 46360, 3, '', '');

--  'Madagascar', 'MG', 'MDG'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(71801, 2, 46370, 3, 'AV', 'Antananarivo'),
(71802, 2, 46370, 3, 'AS', 'Antsiranana'),
(71803, 2, 46370, 3, 'FI', 'Fianarantsoa'),
(71804, 2, 46370, 3, 'MA', 'Mahajanga'),
(71805, 2, 46370, 3, 'TM', 'Toamasina'),
(71806, 2, 46370, 3, 'TL', 'Toliara');

--  'Marshall Islands', 'MH', 'MHL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(71901, 2, 46380, 3, 'AI', 'Ailinginae'),
(71902, 2, 46380, 3, 'AP', 'Ailinglaplap'),
(71903, 2, 46380, 3, 'AK', 'Ailuk'),
(71904, 2, 46380, 3, 'AR', 'Arno'),
(71905, 2, 46380, 3, 'AU', 'Aur'),
(71906, 2, 46380, 3, 'BR', 'Bikar'),
(71907, 2, 46380, 3, 'BN', 'Bikini'),
(71908, 2, 46380, 3, 'BO', 'Bokak'),
(71909, 2, 46380, 3, 'EB', 'Ebon'),
(71910, 2, 46380, 3, 'EN', 'Enewetak'),
(71911, 2, 46380, 3, 'ER', 'Erikub'),
(71912, 2, 46380, 3, 'JB', 'Jabat'),
(71913, 2, 46380, 3, 'JL', 'Jaluit'),
(71914, 2, 46380, 3, 'JE', 'Jemo'),
(71915, 2, 46380, 3, 'KI', 'Kili'),
(71916, 2, 46380, 3, 'KW', 'Kwajalein'),
(71917, 2, 46380, 3, 'LA', 'Lae'),
(71918, 2, 46380, 3, 'LB', 'Lib'),
(71919, 2, 46380, 3, 'LK', 'Likiep'),
(71920, 2, 46380, 3, 'MJ', 'Majuro'),
(71921, 2, 46380, 3, 'ML', 'Maloelap'),
(71922, 2, 46380, 3, 'ME', 'Mejit'),
(71923, 2, 46380, 3, 'MI', 'Mili'),
(71924, 2, 46380, 3, 'NK', 'Namorik'),
(71925, 2, 46380, 3, 'NU', 'Namu'),
(71926, 2, 46380, 3, 'RL', 'Rongelap'),
(71927, 2, 46380, 3, 'RR', 'Rongrik'),
(71928, 2, 46380, 3, 'TO', 'Toke'),
(71929, 2, 46380, 3, 'UJ', 'Ujae'),
(71930, 2, 46380, 3, 'UL', 'Ujelang'),
(71931, 2, 46380, 3, 'UT', 'Utirik'),
(71932, 2, 46380, 3, 'WH', 'Wotho'),
(71933, 2, 46380, 3, 'WJ', 'Wotje');

--  'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72001, 2, 46390, 3, 'AD', 'Aerodrom *'),
(72002, 2, 46390, 3, 'AR', 'Arachinovo'),
(72003, 2, 46390, 3, 'BR', 'Berovo'),
(72004, 2, 46390, 3, 'TL', 'Bitola'),
(72005, 2, 46390, 3, 'BG', 'Bogdanci'),
(72006, 2, 46390, 3, 'VJ', 'Bogovinje'),
(72007, 2, 46390, 3, 'BS', 'Bosilovo'),
(72008, 2, 46390, 3, 'BN', 'Brvenica'),
(72009, 2, 46390, 3, 'BU', 'Butel *'),
(72010, 2, 46390, 3, 'CE', 'Centar *'),
(72011, 2, 46390, 3, 'CZ', 'Centar Zhupa'),
(72012, 2, 46390, 3, 'CI', 'Chair *'),
(72013, 2, 46390, 3, 'CA', 'Chashka'),
(72014, 2, 46390, 3, 'CH', 'Cheshinovo-Obleshevo'),
(72015, 2, 46390, 3, 'CS', 'Chucher Sandevo'),
(72016, 2, 46390, 3, 'DB', 'Debar'),
(72017, 2, 46390, 3, 'DA', 'Debartsa'),
(72018, 2, 46390, 3, 'DL', 'Delchevo'),
(72019, 2, 46390, 3, 'DM', 'Demir Hisar'),
(72020, 2, 46390, 3, 'DK', 'Demir Kapija'),
(72021, 2, 46390, 3, 'SD', 'Dojran'),
(72022, 2, 46390, 3, 'DE', 'Dolneni'),
(72023, 2, 46390, 3, 'DR', 'Drugovo'),
(72024, 2, 46390, 3, 'GB', 'Gazi Baba *'),
(72025, 2, 46390, 3, 'GV', 'Gevgelija'),
(72026, 2, 46390, 3, 'GP', 'Gjorche Petrov *'),
(72027, 2, 46390, 3, 'GT', 'Gostivar'),
(72028, 2, 46390, 3, 'GR', 'Gradsko'),
(72029, 2, 46390, 3, 'IL', 'Ilinden'),
(72030, 2, 46390, 3, 'JG', 'Jegunovtse'),
(72031, 2, 46390, 3, 'KB', 'Karbinci'),
(72032, 2, 46390, 3, 'KX', 'Karposh *'),
(72033, 2, 46390, 3, 'AV', 'Kavadartsi'),
(72034, 2, 46390, 3, 'KH', 'Kichevo'),
(72035, 2, 46390, 3, 'VD', 'Kisela Voda *'),
(72036, 2, 46390, 3, 'OC', 'Kochani'),
(72037, 2, 46390, 3, 'KN', 'Konche'),
(72038, 2, 46390, 3, 'KY', 'Kratovo'),
(72039, 2, 46390, 3, 'KZ', 'Kriva Palanka'),
(72040, 2, 46390, 3, 'KG', 'Krivogashtani'),
(72041, 2, 46390, 3, 'KS', 'Krushevo'),
(72042, 2, 46390, 3, 'UM', 'Kumanovo'),
(72043, 2, 46390, 3, 'LI', 'Lipkovo'),
(72044, 2, 46390, 3, 'LO', 'Lozovo'),
(72045, 2, 46390, 3, 'MK', 'Makedonska Kamenica'),
(72046, 2, 46390, 3, 'MD', 'Makedonski Brod'),
(72047, 2, 46390, 3, 'MR', 'Mavrovo and Rostusha'),
(72048, 2, 46390, 3, 'MG', 'Mogila'),
(72049, 2, 46390, 3, 'NG', 'Negotino'),
(72050, 2, 46390, 3, 'NV', 'Novatsi'),
(72051, 2, 46390, 3, 'NS', 'Novo Selo'),
(72052, 2, 46390, 3, 'OD', 'Ohrid'),
(72053, 2, 46390, 3, 'OS', 'Oslomej'),
(72054, 2, 46390, 3, 'PH', 'Pehchevo'),
(72055, 2, 46390, 3, 'PE', 'Petrovec'),
(72056, 2, 46390, 3, 'PN', 'Plasnica'),
(72057, 2, 46390, 3, 'PP', 'Prilep'),
(72058, 2, 46390, 3, 'PT', 'Probishtip'),
(72059, 2, 46390, 3, 'RV', 'Radovish'),
(72060, 2, 46390, 3, 'RN', 'Rankovce'),
(72061, 2, 46390, 3, 'RE', 'Resen'),
(72062, 2, 46390, 3, 'RM', 'Rosoman'),
(72063, 2, 46390, 3, 'AJ', 'Saraj *'),
(72064, 2, 46390, 3, 'ST', 'Shtip'),
(72065, 2, 46390, 3, 'SO', 'Shuto Orizari *'),
(72066, 2, 46390, 3, 'SS', 'Sopishte'),
(72067, 2, 46390, 3, 'NA', 'Staro Nagorichane'),
(72068, 2, 46390, 3, 'UG', 'Struga'),
(72069, 2, 46390, 3, 'RU', 'Strumitsa'),
(72070, 2, 46390, 3, 'SU', 'Studenichani'),
(72071, 2, 46390, 3, 'SL', 'Sveti Nikole'),
(72072, 2, 46390, 3, 'TR', 'Tearce'),
(72073, 2, 46390, 3, 'ET', 'Tetovo'),
(72074, 2, 46390, 3, 'VA', 'Valandovo'),
(72075, 2, 46390, 3, 'VL', 'Vasilevo'),
(72076, 2, 46390, 3, 'VE', 'Veles'),
(72077, 2, 46390, 3, 'VV', 'Vevchani'),
(72078, 2, 46390, 3, 'NI', 'Vinitsa'),
(72079, 2, 46390, 3, 'VC', 'Vraneshtica'),
(72080, 2, 46390, 3, 'VH', 'Vrapchishte'),
(72081, 2, 46390, 3, 'ZA', 'Zajas'),
(72082, 2, 46390, 3, 'ZK', 'Zelenikovo'),
(72083, 2, 46390, 3, 'ZE', 'Zhelino'),
(72084, 2, 46390, 3, 'ZR', 'Zrnovci');

--  'Mali', 'ML', 'MLI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72101, 2, 46400, 3, 'BA', 'Bamako Capital District'),
(72102, 2, 46400, 3, 'GA', 'Gao'),
(72103, 2, 46400, 3, 'KY', 'Kayes'),
(72104, 2, 46400, 3, 'KD', 'Kidal'),
(72105, 2, 46400, 3, 'KK', 'Koulikoro'),
(72106, 2, 46400, 3, 'MO', 'Mopti'),
(72107, 2, 46400, 3, 'SG', 'Segou'),
(72108, 2, 46400, 3, 'SK', 'Sikasso'),
(72109, 2, 46400, 3, 'TB', 'Tombouctou');

--  'Myanmar', 'MM', 'MMR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72201, 2, 46410, 3, 'AY', 'Ayeyarwady'),
(72202, 2, 46410, 3, 'BA', 'Bago'),
(72203, 2, 46410, 3, 'CH', 'Chin State'),
(72204, 2, 46410, 3, 'KC', 'Kachin State'),
(72205, 2, 46410, 3, 'KH', 'Kayah State'),
(72206, 2, 46410, 3, 'KN', 'Kayin State'),
(72207, 2, 46410, 3, 'MG', 'Magway'),
(72208, 2, 46410, 3, 'ML', 'Mandalay'),
(72209, 2, 46410, 3, 'MO', 'Mon State'),
(72210, 2, 46410, 3, 'NY', 'Naypyidaw'),
(72211, 2, 46410, 3, 'RA', 'Rakhine State'),
(72212, 2, 46410, 3, 'SA', 'Sagaing'),
(72213, 2, 46410, 3, 'SH', 'Shan State'),
(72214, 2, 46410, 3, 'TN', 'Tanintharyi'),
(72215, 2, 46410, 3, 'YA', 'Yangon');

--  'Mongolia', 'MN', 'MNG'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72301, 2, 46420, 3, 'AR', 'Arhangay'),
(72302, 2, 46420, 3, 'BH', 'Bayanhongor'),
(72303, 2, 46420, 3, 'BO', 'Bayan-Olgiy'),
(72304, 2, 46420, 3, 'BU', 'Bulgan'),
(72305, 2, 46420, 3, 'DA', 'Darhan Uul'),
(72306, 2, 46420, 3, 'DD', 'Dornod'),
(72307, 2, 46420, 3, 'DG', 'Dornogovi'),
(72308, 2, 46420, 3, 'DU', 'Dundgovi'),
(72309, 2, 46420, 3, 'DZ', 'Dzavhan'),
(72310, 2, 46420, 3, 'GA', 'Govi-Altay'),
(72311, 2, 46420, 3, 'GS', 'Govi-Sumber'),
(72312, 2, 46420, 3, 'HN', 'Hentiy'),
(72313, 2, 46420, 3, 'HD', 'Hovd'),
(72314, 2, 46420, 3, 'HG', 'Hovsgol'),
(72315, 2, 46420, 3, 'OG', 'Omnogovi'),
(72316, 2, 46420, 3, 'ER', 'Orhon'),
(72317, 2, 46420, 3, 'OH', 'Ovorhangay'),
(72318, 2, 46420, 3, 'SL', 'Selenge'),
(72319, 2, 46420, 3, 'SB', 'Suhbaatar'),
(72320, 2, 46420, 3, 'TO', 'Tov'),
(72321, 2, 46420, 3, 'UB', 'Ulaanbaatar'),
(72322, 2, 46420, 3, 'UV', 'Uvs');

--  'Macau', 'MO', 'MAC'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72401, 2, 46430, 3, 'IL', 'Ilhas'),
(72402, 2, 46430, 3, 'MA', 'Macau');

--  'Northern Mariana Islands', 'MP', 'MNP'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72501, 2, 46440, 3, 'NI', 'Northern Islands'),
(72502, 2, 46440, 3, 'RO', 'Rota'),
(72503, 2, 46440, 3, 'SA', 'Saipan'),
(72504, 2, 46440, 3, 'TI', 'Tinian');

--  'Martinique', 'MQ', 'MTQ'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72601, 2, 46450, 3, 'FF', 'Fort-de-France'),
(72602, 2, 46450, 3, 'MA', 'Marin'),
(72603, 2, 46450, 3, 'SP', 'Saint-Pierre'),
(72604, 2, 46450, 3, 'TR', 'Trinite');

--  'Mauritania', 'MR', 'MRT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72701, 2, 46460, 3, 'AD', 'Adrar'),
(72702, 2, 46460, 3, 'AS', 'Assaba'),
(72703, 2, 46460, 3, 'BR', 'Brakna'),
(72704, 2, 46460, 3, 'DN', 'Dakhlet Nouadhibou'),
(72705, 2, 46460, 3, 'GO', 'Gorgol'),
(72706, 2, 46460, 3, 'GD', 'Guidimaka'),
(72707, 2, 46460, 3, 'HC', 'Hodh Ech Chargui'),
(72708, 2, 46460, 3, 'HG', 'Hodh El Gharbi'),
(72709, 2, 46460, 3, 'IN', 'Inchiri'),
(72710, 2, 46460, 3, 'NO', 'Nouakchott'),
(72711, 2, 46460, 3, 'TG', 'Tagant'),
(72712, 2, 46460, 3, 'TZ', 'Tiris Zemmour'),
(72713, 2, 46460, 3, 'TR', 'Trarza');

--  'Montserrat', 'MS', 'MSR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72801, 2, 46470, 3, 'SA', 'Saint Anthony'),
(72802, 2, 46470, 3, 'SG', 'Saint Georges'),
(72803, 2, 46470, 3, 'SP', 'Saint Peter');

--  'Malta', 'MT', 'MLT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(72901, 2, 46480, 3, 'AT', 'Attard'),
(72902, 2, 46480, 3, 'BA', 'Balzan'),
(72903, 2, 46480, 3, 'BR', 'Birgu'),
(72904, 2, 46480, 3, 'BI', 'Birkirkara'),
(72905, 2, 46480, 3, 'BZ', 'Birzebbuga'),
(72906, 2, 46480, 3, 'BO', 'Bormla'),
(72907, 2, 46480, 3, 'DI', 'Dingli'),
(72908, 2, 46480, 3, 'FG', 'Fgura'),
(72909, 2, 46480, 3, 'FL', 'Floriana'),
(72910, 2, 46480, 3, 'FO', 'Fontana'),
(72911, 2, 46480, 3, 'GJ', 'Ghajnsielem'),
(72912, 2, 46480, 3, 'GB', 'Gharb'),
(72913, 2, 46480, 3, 'GH', 'Gharghur'),
(72914, 2, 46480, 3, 'GS', 'Ghasri'),
(72915, 2, 46480, 3, 'GX', 'Ghaxaq'),
(72916, 2, 46480, 3, 'GU', 'Gudja'),
(72917, 2, 46480, 3, 'GZ', 'Gzira'),
(72918, 2, 46480, 3, 'HA', 'Hamrun'),
(72919, 2, 46480, 3, 'IK', 'Iklin'),
(72920, 2, 46480, 3, 'IS', 'Isla'),
(72921, 2, 46480, 3, 'KA', 'Kalkara'),
(72922, 2, 46480, 3, 'KE', 'Kercem'),
(72923, 2, 46480, 3, 'KI', 'Kirkop'),
(72924, 2, 46480, 3, 'LI', 'Lija'),
(72925, 2, 46480, 3, 'LU', 'Luqa'),
(72926, 2, 46480, 3, 'MA', 'Marsa'),
(72927, 2, 46480, 3, 'MS', 'Marsaskala'),
(72928, 2, 46480, 3, 'MX', 'Marsaxlokk'),
(72929, 2, 46480, 3, 'MD', 'Mdina'),
(72930, 2, 46480, 3, 'ME', 'Mellieha'),
(72931, 2, 46480, 3, 'MG', 'Mgarr'),
(72932, 2, 46480, 3, 'MO', 'Mosta'),
(72933, 2, 46480, 3, 'MQ', 'Mqabba'),
(72934, 2, 46480, 3, 'MI', 'Msida'),
(72935, 2, 46480, 3, 'MT', 'Mtarfa'),
(72936, 2, 46480, 3, 'MU', 'Munxar'),
(72937, 2, 46480, 3, 'NA', 'Nadur'),
(72938, 2, 46480, 3, 'NX', 'Naxxar'),
(72939, 2, 46480, 3, 'PA', 'Paola'),
(72940, 2, 46480, 3, 'PE', 'Pembroke'),
(72941, 2, 46480, 3, 'PI', 'Pieta'),
(72942, 2, 46480, 3, 'QA', 'Qala'),
(72943, 2, 46480, 3, 'QO', 'Qormi'),
(72944, 2, 46480, 3, 'QR', 'Qrendi'),
(72945, 2, 46480, 3, 'RG', 'Rabat Gozo'),
(72946, 2, 46480, 3, 'RM', 'Rabat Malta'),
(72947, 2, 46480, 3, 'SF', 'Safi'),
(72948, 2, 46480, 3, 'SU', 'San Julian'),
(72949, 2, 46480, 3, 'SJ', 'San John'),
(72950, 2, 46480, 3, 'SL', 'San Lawrence'),
(72951, 2, 46480, 3, 'SU', 'Santa Lucia'),
(72952, 2, 46480, 3, 'SM', 'Sliema'),
(72953, 2, 46480, 3, 'SN', 'Sannat'),
(72954, 2, 46480, 3, 'SP', 'Saint Paul''s Bay'),
(72955, 2, 46480, 3, 'SV', 'Santa Venera'),
(72956, 2, 46480, 3, 'SI', 'Siggiewi'),
(72957, 2, 46480, 3, 'SW', 'Swieqi'),
(72958, 2, 46480, 3, 'TR', 'Tarxien'),
(72959, 2, 46480, 3, 'TX', 'Ta Xbiex'),
(72960, 2, 46480, 3, 'VA', 'Valletta'),
(72961, 2, 46480, 3, 'XA', 'Xagra'),
(72962, 2, 46480, 3, 'XE', 'Xewkija'),
(72963, 2, 46480, 3, 'XG', 'Xgajra'),
(72964, 2, 46480, 3, 'ZA', 'Zabbar'),
(72965, 2, 46480, 3, 'ZE', 'Zebbug Gozo'),
(72966, 2, 46480, 3, 'ZB', 'Zebbug Malta'),
(72967, 2, 46480, 3, 'ZJ', 'Zejtun'),
(72968, 2, 46480, 3, 'ZU', 'Zurrieq');

--  'Mauritius', 'MU', 'MUS'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73001, 2, 46490, 3, 'AG', 'Agalega Islands'),
(73002, 2, 46490, 3, 'BL', 'Black River'),
(73003, 2, 46490, 3, 'BR', 'Beau Bassin-Rose Hill city'),
(73004, 2, 46490, 3, 'CC', 'Cargados Carajos Shoals (Saint B'),
(73005, 2, 46490, 3, 'CU', 'Curepipe city'),
(73006, 2, 46490, 3, 'FL', 'Flacq'),
(73007, 2, 46490, 3, 'GP', 'Grand Port'),
(73008, 2, 46490, 3, 'MO', 'Moka'),
(73009, 2, 46490, 3, 'PA', 'Pamplemousses'),
(73010, 2, 46490, 3, 'PW', 'Plaines Wilhems'),
(73011, 2, 46490, 3, 'PL', 'Port Louis'),
(73012, 2, 46490, 3, 'PU', 'Port Louis city'),
(73013, 2, 46490, 3, 'QB', 'Quatre Bornes city'),
(73014, 2, 46490, 3, 'RR', 'Riviere du Rempart'),
(73015, 2, 46490, 3, 'RO', 'Rodrigues'),
(73016, 2, 46490, 3, 'SA', 'Savanne'),
(73017, 2, 46490, 3, 'VP', 'Vacoas-Phoenix city');

--  'Maldives', 'MV', 'MDV'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73101, 2, 46500, 3, 'SE', 'Addu'),
(73102, 2, 46500, 3, 'AA', 'Aliff Aliff'),
(73103, 2, 46500, 3, 'AD', 'Aliff Daalu'),
(73104, 2, 46500, 3, 'BA', 'Baa'),
(73105, 2, 46500, 3, 'DA', 'Daalu'),
(73106, 2, 46500, 3, 'FA', 'Faafu'),
(73107, 2, 46500, 3, 'GA', 'Gaafu Aliff'),
(73108, 2, 46500, 3, 'GD', 'Gaafu Daalu'),
(73109, 2, 46500, 3, 'HA', 'Haa Aliff'),
(73110, 2, 46500, 3, 'HD', 'Haa Daalu'),
(73111, 2, 46500, 3, 'KA', 'Kaafu'),
(73112, 2, 46500, 3, 'LM', 'Laamu'),
(73113, 2, 46500, 3, 'LV', 'Laviyani'),
(73114, 2, 46500, 3, 'MA', 'Male'),
(73115, 2, 46500, 3, 'ME', 'Meemu'),
(73116, 2, 46500, 3, 'NA', 'Naviyani'),
(73117, 2, 46500, 3, 'NO', 'Noonu'),
(73118, 2, 46500, 3, 'RA', 'Raa'),
(73119, 2, 46500, 3, 'SH', 'Shaviyani'),
(73120, 2, 46500, 3, 'TH', 'Thaa'),
(73121, 2, 46500, 3, 'WA', 'Waavu');

--  'Malawi', 'MW', 'MWI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73201, 2, 46510, 3, 'BA', 'Balaka'),
(73202, 2, 46510, 3, 'BL', 'Blantyre'),
(73203, 2, 46510, 3, 'CK', 'Chikwawa'),
(73204, 2, 46510, 3, 'CR', 'Chiradzulu'),
(73205, 2, 46510, 3, 'CT', 'Chitipa'),
(73206, 2, 46510, 3, 'DE', 'Dedza'),
(73207, 2, 46510, 3, 'DO', 'Dowa'),
(73208, 2, 46510, 3, 'KR', 'Karonga'),
(73209, 2, 46510, 3, 'KS', 'Kasungu'),
(73210, 2, 46510, 3, 'LK', 'Likoma'),
(73211, 2, 46510, 3, 'LI', 'Lilongwe'),
(73212, 2, 46510, 3, 'MA', 'Machinga'),
(73213, 2, 46510, 3, 'MG', 'Mangochi'),
(73214, 2, 46510, 3, 'MC', 'Mchinji'),
(73215, 2, 46510, 3, 'MJ', 'Mulanje'),
(73216, 2, 46510, 3, 'MN', 'Mwanza'),
(73217, 2, 46510, 3, 'MZ', 'Mzimba'),
(73218, 2, 46510, 3, 'NN', 'Neno'),
(73219, 2, 46510, 3, 'NA', 'Nkhata Bay'),
(73220, 2, 46510, 3, 'NK', 'Nkhotakota'),
(73221, 2, 46510, 3, 'NS', 'Nsanje'),
(73222, 2, 46510, 3, 'NU', 'Ntcheu'),
(73223, 2, 46510, 3, 'NI', 'Ntchisi'),
(73224, 2, 46510, 3, 'PH', 'Phalombe'),
(73225, 2, 46510, 3, 'RU', 'Rumphi'),
(73226, 2, 46510, 3, 'SA', 'Salima'),
(73227, 2, 46510, 3, 'TH', 'Thyolo'),
(73228, 2, 46510, 3, 'ZO', 'Zomba');

--  'Mexico', 'MX', 'MEX'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73301, 2, 46520, 3, 'AG', 'Aguascalientes'),
(73302, 2, 46520, 3, 'BN', 'Baja California'),
(73303, 2, 46520, 3, 'BS', 'Baja California Sur'),
(73304, 2, 46520, 3, 'CM', 'Campeche'),
(73305, 2, 46520, 3, 'CP', 'Chiapas'),
(73306, 2, 46520, 3, 'CH', 'Chihuahua'),
(73307, 2, 46520, 3, 'CA', 'Coahuila'),
(73308, 2, 46520, 3, 'CL', 'Colima'),
(73309, 2, 46520, 3, 'DF', 'Distrito Federal'),
(73310, 2, 46520, 3, 'DU', 'Durango'),
(73311, 2, 46520, 3, 'GJ', 'Guanajuato'),
(73312, 2, 46520, 3, 'GR', 'Guerrero'),
(73313, 2, 46520, 3, 'HI', 'Hidalgo'),
(73314, 2, 46520, 3, 'JA', 'Jalisco'),
(73315, 2, 46520, 3, 'MX', 'Estado de Mexico'),
(73316, 2, 46520, 3, 'MC', 'Michoacan'),
(73317, 2, 46520, 3, 'MR', 'Morelos  '),
(73318, 2, 46520, 3, 'NA', 'Nayarit'),
(73319, 2, 46520, 3, 'NL', 'Nuevo Leon'),
(73320, 2, 46520, 3, 'OA', 'Oaxaca'),
(73321, 2, 46520, 3, 'PU', 'Puebla'),
(73322, 2, 46520, 3, 'QE', 'Queretaro '),
(73323, 2, 46520, 3, 'QR', 'Quintana Roo'),
(73324, 2, 46520, 3, 'SL', 'San Luis Potosi'),
(73325, 2, 46520, 3, 'SI', 'Sinaloa'),
(73326, 2, 46520, 3, 'SO', 'Sonora'),
(73327, 2, 46520, 3, 'TB', 'Tabasco'),
(73328, 2, 46520, 3, 'TM', 'Tamaulipas'),
(73329, 2, 46520, 3, 'TL', 'Tlaxcala'),
(73330, 2, 46520, 3, 'VE', 'Veracruz'),
(73331, 2, 46520, 3, 'YU', 'Yucatan'),
(73332, 2, 46520, 3, 'ZA', 'Zacatecas');

--  'Malaysia', 'MY', 'MYS'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73401, 2, 558, 3, 'JO', 'Johor'),
(73402, 2, 558, 3, 'KH', 'Kedah'),
(73403, 2, 558, 3, 'KN', 'Kelantan'),
(73404, 2, 558, 3, 'KN', 'Kuala Lumpur'),
(73405, 2, 558, 3, 'LA', 'Labuan'),
(73406, 2, 558, 3, 'ME', 'Melaka'),
(73407, 2, 558, 3, 'NS', 'Negeri Sembilan'),
(73408, 2, 558, 3, 'PH', 'Pahang'),
(73409, 2, 558, 3, 'PK', 'Perak'),
(73410, 2, 558, 3, 'PL', 'Perlis'),
(73411, 2, 558, 3, 'PG', 'Pulau Pinang'),
(73412, 2, 558, 3, 'PJ', 'Putrajaya'),
(73413, 2, 558, 3, 'SA', 'Sabah'),
(73414, 2, 558, 3, 'SK', 'Sarawak'),
(73415, 2, 558, 3, 'SL', 'Selangor'),
(73416, 2, 558, 3, 'TE', 'Terengganu');

--  'Mozambique', 'MZ', 'MOZ'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73501, 2, 46530, 3, 'CD', 'Cabo Delgado'),
(73502, 2, 46530, 3, 'GA', 'Gaza'),
(73503, 2, 46530, 3, 'IN', 'Inhambane'),
(73504, 2, 46530, 3, 'MN', 'Manica'),
(73505, 2, 46530, 3, 'MP', 'Maputo'),
(73506, 2, 46530, 3, 'MC', 'Maputo city'),
(73507, 2, 46530, 3, 'NM', 'Nampula'),
(73508, 2, 46530, 3, 'NS', 'Niassa'),
(73509, 2, 46530, 3, 'SO', 'Sofala'),
(73510, 2, 46530, 3, 'TE', 'Tete'),
(73511, 2, 46530, 3, 'ZA', 'Zambezia');

--  'Namibia', 'NA', 'NAM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73601, 2, 46540, 3, 'CA', 'Zambezi (Caprivi)'),
(73602, 2, 46540, 3, 'ER', 'Erongo'),
(73603, 2, 46540, 3, 'HA', 'Hardap'),
(73604, 2, 46540, 3, 'KA', 'Karas'),
(73605, 2, 46540, 3, 'KE', 'Kavango East'),
(73606, 2, 46540, 3, 'KW', 'Kavango West'),
(73607, 2, 46540, 3, 'KH', 'Khomas'),
(73608, 2, 46540, 3, 'KU', 'Kunene'),
(73609, 2, 46540, 3, 'OW', 'Ohangwena'),
(73610, 2, 46540, 3, 'OH', 'Omaheke'),
(73611, 2, 46540, 3, 'OS', 'Omusati'),
(73612, 2, 46540, 3, 'ON', 'Oshana'),
(73613, 2, 46540, 3, 'OT', 'Oshikoto'),
(73614, 2, 46540, 3, 'OD', 'Otjozondjupa');

--  'New Caledonia', 'NC', 'NCL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73701, 2, 46550, 3, 'IL', 'Iles Loyaute'),
(73702, 2, 46550, 3, 'NO', 'Nord'),
(73703, 2, 46550, 3, 'SU', 'Sud');

--  'Niger', 'NE', 'NER'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(73801, 2, 46560, 3, 'AG', 'Agadez'),
(73802, 2, 46560, 3, 'DF', 'Diffa'),
(73803, 2, 46560, 3, 'DS', 'Dosso'),
(73804, 2, 46560, 3, 'MA', 'Maradi'),
(73805, 2, 46560, 3, 'NI', 'Niamey'),
(73806, 2, 46560, 3, 'TH', 'Tahoua'),
(73807, 2, 46560, 3, 'TL', 'Tillaberi'),
(73808, 2, 46560, 3, 'ZI', 'Zinder');

--  'Norfolk Island', 'NF', 'NFK'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (7391, 2, 46570, 3, '', ''),

--  'Nigeria', 'NG', 'NGA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74001, 2, 46580, 3, 'AB', 'Abia'),
(74002, 2, 46580, 3, 'AD', 'Adamawa'),
(74003, 2, 46580, 3, 'AK', 'Akwa Ibom'),
(74004, 2, 46580, 3, 'AN', 'Anambra'),
(74005, 2, 46580, 3, 'BA', 'Bauchi'),
(74006, 2, 46580, 3, 'BY', 'Bayelsa'),
(74007, 2, 46580, 3, 'BE', 'Benue'),
(74008, 2, 46580, 3, 'BO', 'Borno'),
(74009, 2, 46580, 3, 'CR', 'Cross River'),
(74010, 2, 46580, 3, 'DE', 'Delta'),
(74011, 2, 46580, 3, 'EB', 'Ebonyi'),
(74012, 2, 46580, 3, 'ED', 'Edo'),
(74013, 2, 46580, 3, 'EK', 'Ekiti'),
(74014, 2, 46580, 3, 'EN', 'Enugu'),
(74015, 2, 46580, 3, 'FC', 'Abuja Federal Capital Territory'),
(74016, 2, 46580, 3, 'GO', 'Gombe'),
(74017, 2, 46580, 3, 'IM', 'Imo'),
(74018, 2, 46580, 3, 'JI', 'Jigawa'),
(74019, 2, 46580, 3, 'KD', 'Kaduna'),
(74020, 2, 46580, 3, 'KN', 'Kano'),
(74021, 2, 46580, 3, 'KT', 'Katsina'),
(74022, 2, 46580, 3, 'KE', 'Kebbi'),
(74023, 2, 46580, 3, 'KO', 'Kogi'),
(74024, 2, 46580, 3, 'KW', 'Kwara'),
(74025, 2, 46580, 3, 'LA', 'Lagos'),
(74026, 2, 46580, 3, 'NA', 'Nassarawa'),
(74027, 2, 46580, 3, 'NI', 'Niger'),
(74028, 2, 46580, 3, 'OG', 'Ogun'),
(74029, 2, 46580, 3, 'ON', 'Ondo'),
(74030, 2, 46580, 3, 'OS', 'Osun'),
(74031, 2, 46580, 3, 'OY', 'Oyo'),
(74032, 2, 46580, 3, 'PL', 'Plateau'),
(74033, 2, 46580, 3, 'RI', 'Rivers'),
(74034, 2, 46580, 3, 'SO', 'Sokoto'),
(74035, 2, 46580, 3, 'TA', 'Taraba'),
(74036, 2, 46580, 3, 'YO', 'Yobe'),
(74037, 2, 46580, 3, 'ZA', 'Zamfara');

--  'Nicaragua', 'NI', 'NIC'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74101, 2, 46590, 3, 'AN', 'Atlantico Norte'),
(74102, 2, 46590, 3, 'AS', 'Atlantico Sur'),
(74103, 2, 46590, 3, 'BO', 'Boaco'),
(74104, 2, 46590, 3, 'CA', 'Carazo'),
(74105, 2, 46590, 3, 'CI', 'Chinandega'),
(74106, 2, 46590, 3, 'CO', 'Chontales'),
(74107, 2, 46590, 3, 'ES', 'Esteli'),
(74108, 2, 46590, 3, 'GR', 'Granada'),
(74109, 2, 46590, 3, 'JI', 'Jinotega'),
(74110, 2, 46590, 3, 'LE', 'Leon'),
(74111, 2, 46590, 3, 'MD', 'Madriz'),
(74112, 2, 46590, 3, 'MN', 'Managua'),
(74113, 2, 46590, 3, 'MS', 'Masaya'),
(74114, 2, 46590, 3, 'MT', 'Matagalpa'),
(74115, 2, 46590, 3, 'NS', 'Nuevo Segovia'),
(74116, 2, 46590, 3, 'SJ', 'Rio San Juan'),
(74117, 2, 46590, 3, 'RI', 'Rivas');

-- 'Netherlands', 'NL', 'NLD'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74201, 2, 543, 3, 'DR', 'Drenthe'),
(74202, 2, 543, 3, 'FL', 'Flevoland'),
(74203, 2, 543, 3, 'FR', 'Friesland'),
(74204, 2, 543, 3, 'GE', 'Gelderland'),
(74205, 2, 543, 3, 'GR', 'Groningen'),
(74206, 2, 543, 3, 'LI', 'Limburg'),
(74207, 2, 543, 3, 'NB', 'Noord Brabant'),
(74208, 2, 543, 3, 'NH', 'Noord Holland'),
(74209, 2, 543, 3, 'OV', 'Overijssel'),
(74210, 2, 543, 3, 'UT', 'Utrecht'),
(74211, 2, 543, 3, 'ZE', 'Zeeland'),
(74212, 2, 543, 3, 'ZH', 'Zuid Holland');

--  'Norway', 'NO', 'NOR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74301, 2, 546, 3, 'AK', 'Akershus'),
(74302, 2, 546, 3, 'AA', 'Aust-Agder'),
(74303, 2, 546, 3, 'BU', 'Buskerud'),
(74304, 2, 546, 3, 'FI', 'Finnmark'),
(74305, 2, 546, 3, 'HE', 'Hedmark'),
(74306, 2, 546, 3, 'HO', 'Hordaland'),
(74307, 2, 546, 3, 'MR', 'Moere og Romsdal'),
(74308, 2, 546, 3, 'NO', 'Nordland'),
(74309, 2, 546, 3, 'NT', 'Nord-Troendelag'),
(74310, 2, 546, 3, 'OP', 'Oppland'),
(74311, 2, 546, 3, 'OS', 'Oslo'),
(74312, 2, 546, 3, 'OF', 'Oestfold'),
(74313, 2, 546, 3, 'RO', 'Rogaland'),
(74314, 2, 546, 3, 'SF', 'Sogn og Fjordane'),
(74315, 2, 546, 3, 'ST', 'Soer-Troendelag'),
(74316, 2, 546, 3, 'TE', 'Telemark'),
(74317, 2, 546, 3, 'TR', 'Troms'),
(74318, 2, 546, 3, 'VA', 'Vest-Agder'),
(74319, 2, 546, 3, 'VF', 'Vestfold'),
(74320, 2, 546, 3, 'BV', 'Bouvet'),
(74321, 2, 546, 3, 'JM', 'Jan Mayen'),
(74322, 2, 546, 3, 'SV', 'Svalbard');

--  'Nepal', 'NP', 'NPL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74401, 2, 46600, 3, 'BA', 'Bagmati'),
(74402, 2, 46600, 3, 'BH', 'Bheri'),
(74403, 2, 46600, 3, 'DH', 'Dhawalagiri'),
(74404, 2, 46600, 3, 'GA', 'Gandaki'),
(74405, 2, 46600, 3, 'JA', 'Janakpur'),
(74406, 2, 46600, 3, 'KA', 'Karnali'),
(74407, 2, 46600, 3, 'KO', 'Koshi'),
(74408, 2, 46600, 3, 'LU', 'Lumbini'),
(74409, 2, 46600, 3, 'MA', 'Mahakali'),
(74410, 2, 46600, 3, 'ME', 'Mechi'),
(74411, 2, 46600, 3, 'NA', 'Narayani'),
(74412, 2, 46600, 3, 'RA', 'Rapti'),
(74413, 2, 46600, 3, 'SA', 'Sagarmatha'),
(74414, 2, 46600, 3, 'SE', 'Seti');

--  'Nauru', 'NR', 'NRU'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74501, 2, 46610, 3, 'AI', 'Aiwo'),
(74502, 2, 46610, 3, 'AB', 'Anabar'),
(74503, 2, 46610, 3, 'AT', 'Anetan'),
(74504, 2, 46610, 3, 'AR', 'Anibare'),
(74505, 2, 46610, 3, 'BA', 'Baiti'),
(74506, 2, 46610, 3, 'BO', 'Boe'),
(74507, 2, 46610, 3, 'BU', 'Buada'),
(74508, 2, 46610, 3, 'DE', 'Denigomodu'),
(74509, 2, 46610, 3, 'EW', 'Ewa'),
(74510, 2, 46610, 3, 'IJ', 'Ijuw'),
(74511, 2, 46610, 3, 'ME', 'Meneng'),
(74512, 2, 46610, 3, 'NI', 'Nibok'),
(74513, 2, 46610, 3, 'UA', 'Uaboe'),
(74514, 2, 46610, 3, 'YA', 'Yaren');

--  'Niue', 'NU', 'NIU'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (74601, 2, 46620, 3, '', ''),

--  'New Zealand', 'NZ', 'NZL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74701, 2, 538, 3, 'AU', 'Auckland'),
(74702, 2, 538, 3, 'BP', 'Bay of Plenty'),
(74703, 2, 538, 3, 'CA', 'Canterbury'),
(74704, 2, 538, 3, 'CI', 'Chatham Islands'),
(74705, 2, 538, 3, 'GI', 'Gisborne'),
(74706, 2, 538, 3, 'HB', 'Hawke\'s Bay'),
(74707, 2, 538, 3, 'MW', 'Manawatu-Wanganui'),
(74708, 2, 538, 3, 'MA', 'Marlborough'),
(74709, 2, 538, 3, 'NE', 'Nelson'),
(74710, 2, 538, 3, 'NO', 'Northland'),
(74711, 2, 538, 3, 'OT', 'Otago'),
(74712, 2, 538, 3, 'SO', 'Southland'),
(74713, 2, 538, 3, 'TK', 'Taranaki'),
(74714, 2, 538, 3, 'TS', 'Tasman'),
(74715, 2, 538, 3, 'WK', 'Waikato'),
(74716, 2, 538, 3, 'WG', 'Wellington'),
(74717, 2, 538, 3, 'WC', 'West Coast');

--  'Oman', 'OM', 'OMN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74801, 2, 46630, 3, 'DA', 'Ad Dakhiliyah'),
(74802, 2, 46630, 3, 'DH', 'Adh Dhahirah'),
(74803, 2, 46630, 3, 'BN', 'Al Batinah North'),
(74804, 2, 46630, 3, 'BS', 'Al Batinah South'),
(74805, 2, 46630, 3, 'BU', 'Al Buraymi'),
(74806, 2, 46630, 3, 'WU', 'Al Wusta'),
(74807, 2, 46630, 3, 'SN', 'Ash Sharqiyah North'),
(74808, 2, 46630, 3, 'SS', 'Ash Sharqiyah South'),
(74809, 2, 46630, 3, 'JA', 'Dhofar'),
(74810, 2, 46630, 3, 'MU', 'Musandam'),
(74811, 2, 46630, 3, 'MA', 'Musqat');

--  'OS', 'South Ossetia',
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(74901, 2, 46640, 3, 'LG', 'Leningor district'),
(74902, 2, 46640, 3, 'DZ', 'Dzau district'),
(74903, 2, 46640, 3, 'TC', 'Tskhinval city'),
(74904, 2, 46640, 3, 'TD', 'Tskhinval district'),
(74905, 2, 46640, 3, 'ZN', 'Znaur district');

--  'Panama', 'PA', 'PAN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75001, 2, 46650, 3, 'BC', 'Bocas del Toro'),
(75002, 2, 46650, 3, 'CH', 'Chiriqui'),
(75003, 2, 46650, 3, 'CC', 'Cocle'),
(75004, 2, 46650, 3, 'CL', 'Colon'),
(75005, 2, 46650, 3, 'DA', 'Darien'),
(75006, 2, 46650, 3, 'EM', 'Embera'),
(75007, 2, 46650, 3, 'HE', 'Herrera'),
(75008, 2, 46650, 3, 'SB', 'Kuna Yala'),
(75009, 2, 46650, 3, 'LS', 'Los Santos'),
(75010, 2, 46650, 3, 'NB', 'Ngabe Bugle'),
(75011, 2, 46650, 3, 'PM', 'Panama'),
(75012, 2, 46650, 3, 'PO', 'Panama Oeste'),
(75013, 2, 46650, 3, 'VR', 'Veraguas');

--  'Peru', 'PE', 'PER'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75101, 2, 46660, 3, 'AM', 'Amazonas'),
(75102, 2, 46660, 3, 'AN', 'Ancash'),
(75103, 2, 46660, 3, 'AP', 'Apurimac'),
(75104, 2, 46660, 3, 'AR', 'Arequipa'),
(75105, 2, 46660, 3, 'AY', 'Ayacucho'),
(75106, 2, 46660, 3, 'CJ', 'Cajamarca'),
(75107, 2, 46660, 3, 'CL', 'Callao'),
(75108, 2, 46660, 3, 'CS', 'Cusco'),
(75109, 2, 46660, 3, 'HV', 'Huancavelica'),
(75110, 2, 46660, 3, 'HC', 'Huanuco'),
(75111, 2, 46660, 3, 'IC', 'Ica'),
(75112, 2, 46660, 3, 'JU', 'Junin'),
(75113, 2, 46660, 3, 'LL', 'La Libertad'),
(75114, 2, 46660, 3, 'LB', 'Lambayeque'),
(75115, 2, 46660, 3, 'LP', 'Lima province'),
(75116, 2, 46660, 3, 'LR', 'Lima city'),
(75117, 2, 46660, 3, 'LO', 'Loreto'),
(75118, 2, 46660, 3, 'MD', 'Madre de Dios'),
(75119, 2, 46660, 3, 'MQ', 'Moquegua'),
(75120, 2, 46660, 3, 'PA', 'Pasco'),
(75121, 2, 46660, 3, 'PI', 'Piura'),
(75122, 2, 46660, 3, 'PU', 'Puno'),
(75123, 2, 46660, 3, 'SM', 'San Martin'),
(75124, 2, 46660, 3, 'TA', 'Tacna'),
(75125, 2, 46660, 3, 'TU', 'Tumbes'),
(75126, 2, 46660, 3, 'UC', 'Ucayali');

--  'French Polynesia', 'PF', 'PYF'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75201, 2, 46670, 3, 'CI', 'Clipperton Island'),
(75202, 2, 46670, 3, 'LI', 'Leeward Islands'),
(75203, 2, 46670, 3, 'MI', 'Marquesas Islands'),
(75204, 2, 46670, 3, 'TG', 'Tuamotu and Gambier Islands'),
(75205, 2, 46670, 3, 'TI', 'Tubuai Islands'),
(75206, 2, 46670, 3, 'WI', 'Windward Islands');

--  'Papua New Guinea', 'PG', 'PNG'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75301, 2, 46680, 3, 'NS', 'Bougainville'),
(75302, 2, 46680, 3, 'CE', 'Central'),
(75303, 2, 46680, 3, 'CH', 'Chimbu'),
(75304, 2, 46680, 3, 'EH', 'Eastern Highlands'),
(75305, 2, 46680, 3, 'EN', 'East New Britain'),
(75306, 2, 46680, 3, 'ES', 'East Sepik'),
(75307, 2, 46680, 3, 'EG', 'Enga'),
(75308, 2, 46680, 3, 'GU', 'Gulf'),
(75309, 2, 46680, 3, 'HE', 'Hela'),
(75310, 2, 46680, 3, 'JI', 'Jiwaka'),
(75311, 2, 46680, 3, 'MD', 'Madang'),
(75312, 2, 46680, 3, 'MN', 'Manus'),
(75313, 2, 46680, 3, 'MB', 'Milne Bay'),
(75314, 2, 46680, 3, 'MR', 'Morobe'),
(75315, 2, 46680, 3, 'NC', 'National Capital'),
(75316, 2, 46680, 3, 'NI', 'New Ireland'),
(75317, 2, 46680, 3, 'NO', 'Northern'),
(75318, 2, 46680, 3, 'SA', 'Sandaun'),
(75319, 2, 46680, 3, 'SL', 'Southern Highlands'),
(75320, 2, 46680, 3, 'WE', 'Western'),
(75321, 2, 46680, 3, 'WL', 'Western Highlands'),
(75322, 2, 46680, 3, 'WN', 'West New Britain');

--  'Philippines', 'PH', 'PHL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75401, 2, 46690, 3, 'AB', 'Abra'),
(75402, 2, 46690, 3, 'AN', 'Agusan del Norte'),
(75403, 2, 46690, 3, 'AS', 'Agusan del Sur'),
(75404, 2, 46690, 3, 'AK', 'Aklan'),
(75405, 2, 46690, 3, 'AL', 'Albay'),
(75406, 2, 46690, 3, 'AQ', 'Antique'),
(75407, 2, 46690, 3, 'AP', 'Apayao'),
(75408, 2, 46690, 3, 'AU', 'Aurora'),
(75409, 2, 46690, 3, 'BS', 'Basilan'),
(75410, 2, 46690, 3, 'BA', 'Bataan'),
(75411, 2, 46690, 3, 'BN', 'Batanes'),
(75412, 2, 46690, 3, 'BT', 'Batangas'),
(75413, 2, 46690, 3, 'BG', 'Benguet'),
(75414, 2, 46690, 3, 'BI', 'Biliran'),
(75415, 2, 46690, 3, 'BO', 'Bohol'),
(75416, 2, 46690, 3, 'BK', 'Bukidnon'),
(75417, 2, 46690, 3, 'BU', 'Bulacan'),
(75418, 2, 46690, 3, 'CG', 'Cagayan'),
(75419, 2, 46690, 3, 'CN', 'Camarines Norte'),
(75420, 2, 46690, 3, 'CS', 'Camarines Sur'),
(75421, 2, 46690, 3, 'CM', 'Camiguin'),
(75422, 2, 46690, 3, 'CP', 'Capiz'),
(75423, 2, 46690, 3, 'CT', 'Catanduanes'),
(75424, 2, 46690, 3, 'CV', 'Cavite'),
(75425, 2, 46690, 3, 'CB', 'Cebu'),
(75426, 2, 46690, 3, 'CL', 'Compostela Valley'),
(75427, 2, 46690, 3, 'NC', 'Cotabato (North)'),
(75428, 2, 46690, 3, 'DV', 'Davao del Norte'),
(75429, 2, 46690, 3, 'DR', 'Davao del Sur'),
(75430, 2, 46690, 3, 'DC', 'Davao Occidental'),
(75431, 2, 46690, 3, 'DO', 'Davao Oriental'),
(75432, 2, 46690, 3, 'DI', 'Dinagat Islands'),
(75433, 2, 46690, 3, 'ES', 'Eastern Samar'),
(75434, 2, 46690, 3, 'GU', 'Guimaras'),
(75435, 2, 46690, 3, 'IF', 'Ifugao'),
(75436, 2, 46690, 3, 'IN', 'Ilocos Norte'),
(75437, 2, 46690, 3, 'IS', 'Ilocos Sur'),
(75438, 2, 46690, 3, 'II', 'Iloilo'),
(75439, 2, 46690, 3, 'IB', 'Isabela'),
(75440, 2, 46690, 3, 'KA', 'Kalinga'),
(75441, 2, 46690, 3, 'LG', 'Laguna'),
(75442, 2, 46690, 3, 'LN', 'Lanao del Norte'),
(75443, 2, 46690, 3, 'LS', 'Lanao del Sur'),
(75444, 2, 46690, 3, 'LU', 'La Union'),
(75445, 2, 46690, 3, 'LE', 'Leyte'),
(75446, 2, 46690, 3, 'MG', 'Maguindanao'),
(75447, 2, 46690, 3, 'MQ', 'Marinduque'),
(75448, 2, 46690, 3, 'MB', 'Masbate'),
(75449, 2, 46690, 3, 'MM', 'Metropolitan Manila'),
(75450, 2, 46690, 3, 'MD', 'Misamis Occidental'),
(75451, 2, 46690, 3, 'MN', 'Misamis Oriental'),
(75452, 2, 46690, 3, 'MT', 'Mountain'),
(75453, 2, 46690, 3, 'ND', 'Negros Occidental'),
(75454, 2, 46690, 3, 'NR', 'Negros Oriental'),
(75455, 2, 46690, 3, 'NS', 'Northern Samar'),
(75456, 2, 46690, 3, 'NE', 'Nueva Ecija'),
(75457, 2, 46690, 3, 'NV', 'Nueva Vizcaya'),
(75458, 2, 46690, 3, 'MC', 'Mindoro Occidental'),
(75459, 2, 46690, 3, 'MR', 'Mindoro Oriental'),
(75460, 2, 46690, 3, 'PL', 'Palawan'),
(75461, 2, 46690, 3, 'PM', 'Pampanga'),
(75462, 2, 46690, 3, 'PN', 'Pangasinan'),
(75463, 2, 46690, 3, 'QZ', 'Quezon'),
(75464, 2, 46690, 3, 'QR', 'Quirino'),
(75465, 2, 46690, 3, 'RI', 'Rizal'),
(75466, 2, 46690, 3, 'RO', 'Romblon'),
(75467, 2, 46690, 3, 'SM', 'Samar'),
(75468, 2, 46690, 3, 'SG', 'Sarangani'),
(75469, 2, 46690, 3, 'SQ', 'Siquijor'),
(75470, 2, 46690, 3, 'SR', 'Sorsogon'),
(75471, 2, 46690, 3, 'SC', 'South Cotabato'),
(75472, 2, 46690, 3, 'SL', 'Southern Leyte'),
(75473, 2, 46690, 3, 'SK', 'Sultan Kudarat'),
(75474, 2, 46690, 3, 'SU', 'Sulu'),
(75475, 2, 46690, 3, 'ST', 'Surigao del Norte'),
(75476, 2, 46690, 3, 'SS', 'Surigao del Sur'),
(75477, 2, 46690, 3, 'TR', 'Tarlac'),
(75478, 2, 46690, 3, 'TT', 'Tawi-Tawi'),
(75479, 2, 46690, 3, 'ZM', 'Zambales'),
(75480, 2, 46690, 3, 'ZN', 'Zamboanga del Norte'),
(75481, 2, 46690, 3, 'ZS', 'Zamboanga del Sur'),
(75482, 2, 46690, 3, 'ZY', 'Zamboanga Sibugay');

--  'Pakistan', 'PK', 'PAK'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75501, 2, 46700, 3, 'JK', 'Azad Kashmir'),
(75502, 2, 46700, 3, 'BA', 'Balochistan'),
(75503, 2, 46700, 3, 'TA', 'Federally Administered Tribal Areas'),
(75504, 2, 46700, 3, 'NA', 'Gilgit-Baltistan'),
(75505, 2, 46700, 3, 'IS', 'Islamabad Capital Territory'),
(75506, 2, 46700, 3, 'NW', 'Khyber-Pakhtunkhwa'),
(75507, 2, 46700, 3, 'PB', 'Punjab'),
(75508, 2, 46700, 3, 'SD', 'Sindh');

--  'Poland', 'PL', 'POL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75601, 2, 46710, 3, 'DS', 'Dolnoslaskie'),
(75602, 2, 46710, 3, 'KP', 'Kujawsko-Pomorskie'),
(75603, 2, 46710, 3, 'LD', 'Lodzkie'),
(75604, 2, 46710, 3, 'LU', 'Lubelskie'),
(75605, 2, 46710, 3, 'LB', 'Lubuskie'),
(75606, 2, 46710, 3, 'MA', 'Malopolskie'),
(75607, 2, 46710, 3, 'MZ', 'Mazowieckie'),
(75608, 2, 46710, 3, 'OP', 'Opolskie'),
(75609, 2, 46710, 3, 'PK', 'Podkarpackie'),
(75610, 2, 46710, 3, 'PL', 'Podlaskie'),
(75611, 2, 46710, 3, 'PM', 'Pomorskie'),
(75612, 2, 46710, 3, 'SL', 'Slaskie'),
(75613, 2, 46710, 3, 'SK', 'Swietokrzyskie'),
(75614, 2, 46710, 3, 'WM', 'Warminsko-Mazurskie'),
(75615, 2, 46710, 3, 'WP', 'Wielkopolskie'),
(75616, 2, 46710, 3, 'ZP', 'Zachodniopomorskie');

--  'Saint Pierre and Miquelon', 'PM', 'SPM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75701, 2, 46720, 3, 'ML', 'Miquelon-Langlade'),
(75702, 2, 46720, 3, 'SP', 'Saint Pierre');

--  'Pitcairn', 'PN', 'PCN'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (75801, 2, 46730, 3, '', ''),

--  'Puerto Rico', 'PR', 'PRI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(75901, 2, 46740, 3, 'AJ', 'Adjuntas'),
(75902, 2, 46740, 3, 'AD', 'Aguada'),
(75903, 2, 46740, 3, 'AL', 'Aguadilla'),
(75904, 2, 46740, 3, 'AB', 'Aguas Buenas'),
(75905, 2, 46740, 3, 'AI', 'Aibonito'),
(75906, 2, 46740, 3, 'AN', 'Anasco'),
(75907, 2, 46740, 3, 'AC', 'Arecibo'),
(75908, 2, 46740, 3, 'AR', 'Arroyo'),
(75909, 2, 46740, 3, 'BC', 'Barceloneta'),
(75910, 2, 46740, 3, 'BQ', 'Barranquitas'),
(75911, 2, 46740, 3, 'BY', 'Bayamon'),
(75912, 2, 46740, 3, 'CR', 'Cabo Rojo'),
(75913, 2, 46740, 3, 'CG', 'Caguas'),
(75914, 2, 46740, 3, 'CA', 'Camuy'),
(75915, 2, 46740, 3, 'CV', 'Canovanas'),
(75916, 2, 46740, 3, 'CN', 'Carolina'),
(75917, 2, 46740, 3, 'CT', 'Catano'),
(75918, 2, 46740, 3, 'CY', 'Cayey'),
(75919, 2, 46740, 3, 'CB', 'Ceiba'),
(75920, 2, 46740, 3, 'CL', 'Ciales'),
(75921, 2, 46740, 3, 'CD', 'Cidra'),
(75922, 2, 46740, 3, 'CO', 'Coamo'),
(75923, 2, 46740, 3, 'CM', 'Comerio'),
(75924, 2, 46740, 3, 'CZ', 'Corozal'),
(75925, 2, 46740, 3, 'CU', 'Culebra'),
(75926, 2, 46740, 3, 'DO', 'Dorado'),
(75927, 2, 46740, 3, 'FJ', 'Fajardo'),
(75928, 2, 46740, 3, 'FL', 'Florida'),
(75929, 2, 46740, 3, 'GC', 'Guanica'),
(75930, 2, 46740, 3, 'GM', 'Guayama'),
(75931, 2, 46740, 3, 'GL', 'Guayanilla'),
(75932, 2, 46740, 3, 'GB', 'Guaynabo'),
(75933, 2, 46740, 3, 'GR', 'Gurabo'),
(75934, 2, 46740, 3, 'HA', 'Hatillo'),
(75935, 2, 46740, 3, 'HO', 'Hormigueros'),
(75936, 2, 46740, 3, 'HU', 'Humacao'),
(75937, 2, 46740, 3, 'IS', 'Isabela'),
(75938, 2, 46740, 3, 'JY', 'Jayuya'),
(75939, 2, 46740, 3, 'JD', 'Juana Diaz'),
(75940, 2, 46740, 3, 'JC', 'Juncos'),
(75941, 2, 46740, 3, 'LJ', 'Lajas'),
(75942, 2, 46740, 3, 'LR', 'Lares'),
(75943, 2, 46740, 3, 'LM', 'Las Marias'),
(75944, 2, 46740, 3, 'LP', 'Las Piedras'),
(75945, 2, 46740, 3, 'LZ', 'Loiza'),
(75946, 2, 46740, 3, 'LQ', 'Luquillo'),
(75947, 2, 46740, 3, 'MT', 'Manati'),
(75948, 2, 46740, 3, 'MR', 'Maricao'),
(75949, 2, 46740, 3, 'MB', 'Maunabo'),
(75950, 2, 46740, 3, 'MG', 'Mayaguez'),
(75951, 2, 46740, 3, 'MC', 'Moca'),
(75952, 2, 46740, 3, 'MV', 'Morovis'),
(75953, 2, 46740, 3, 'NG', 'Naguabo'),
(75954, 2, 46740, 3, 'NR', 'Naranjito'),
(75955, 2, 46740, 3, 'OR', 'Orocovis'),
(75956, 2, 46740, 3, 'PT', 'Patillas'),
(75957, 2, 46740, 3, 'PN', 'Penuelas'),
(75958, 2, 46740, 3, 'PO', 'Ponce'),
(75959, 2, 46740, 3, 'QB', 'Quebradillas'),
(75960, 2, 46740, 3, 'RC', 'Rincon'),
(75961, 2, 46740, 3, 'RG', 'Rio Grande'),
(75962, 2, 46740, 3, 'SB', 'Sabana Grande'),
(75963, 2, 46740, 3, 'SA', 'Salinas'),
(75964, 2, 46740, 3, 'SG', 'San German'),
(75965, 2, 46740, 3, 'SJ', 'San Juan'),
(75966, 2, 46740, 3, 'SL', 'San Lorenzo'),
(75967, 2, 46740, 3, 'SS', 'San Sebastian'),
(75968, 2, 46740, 3, 'SI', 'Santa Isabel'),
(75969, 2, 46740, 3, 'TA', 'Toa Alta'),
(75970, 2, 46740, 3, 'TB', 'Toa Baja'),
(75971, 2, 46740, 3, 'TJ', 'Trujillo Alto'),
(75972, 2, 46740, 3, 'UT', 'Utuado'),
(75973, 2, 46740, 3, 'VA', 'Vega Alta'),
(75974, 2, 46740, 3, 'VB', 'Vega Baja'),
(75975, 2, 46740, 3, 'VQ', 'Vieques'),
(75976, 2, 46740, 3, 'VL', 'Villalba'),
(75977, 2, 46740, 3, 'YB', 'Yabucoa'),
(75978, 2, 46740, 3, 'YU', 'Yauco');

--  'PS', 'Palestine'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76001, 2, 46750, 3, 'BL', 'Bethlehem'),
(76002, 2, 46750, 3, 'DB', 'Deir Al-Balah'),
(76003, 2, 46750, 3, 'GZ', 'Gaza'),
(76004, 2, 46750, 3, 'GS', 'Gaza ash Shamaliyah'),
(76005, 2, 46750, 3, 'HE', 'Hebron'),
(76006, 2, 46750, 3, 'JN', 'Jenin'),
(76007, 2, 46750, 3, 'JC', 'Jericho'),
(76008, 2, 46750, 3, 'JS', 'Jerusalem'),
(76009, 2, 46750, 3, 'KY', 'Khan Yunis'),
(76010, 2, 46750, 3, 'NA', 'Nablus'),
(76011, 2, 46750, 3, 'QA', 'Qalqilya'),
(76012, 2, 46750, 3, 'RA', 'Rafah'),
(76013, 2, 46750, 3, 'RB', 'Ramallah and Al-Bireh'),
(76014, 2, 46750, 3, 'SA', 'Salfit'),
(76015, 2, 46750, 3, 'TB', 'Tubas'),
(76016, 2, 46750, 3, 'TL', 'Tulkarm');

--  'Portugal', 'PT', 'PRT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76101, 2, 46760, 3, 'AV', 'Aveiro'),
(76102, 2, 46760, 3, 'AC', 'Azores'),
(76103, 2, 46760, 3, 'BE', 'Beja'),
(76104, 2, 46760, 3, 'BR', 'Braga'),
(76105, 2, 46760, 3, 'BA', 'Braganza'),
(76106, 2, 46760, 3, 'CB', 'Castelo Branco'),
(76107, 2, 46760, 3, 'CO', 'Coimbra'),
(76108, 2, 46760, 3, 'EV', 'Evora'),
(76109, 2, 46760, 3, 'FA', 'Faro'),
(76110, 2, 46760, 3, 'GU', 'Guarda'),
(76111, 2, 46760, 3, 'LE', 'Leiria'),
(76112, 2, 46760, 3, 'LI', 'Lisboa'),
(76113, 2, 46760, 3, 'MA', 'Madeira'),
(76114, 2, 46760, 3, 'PA', 'Portalegre'),
(76115, 2, 46760, 3, 'PO', 'Porto'),
(76116, 2, 46760, 3, 'SA', 'Santarem'),
(76117, 2, 46760, 3, 'SE', 'Setubal'),
(76118, 2, 46760, 3, 'VC', 'Viana do Castelo'),
(76119, 2, 46760, 3, 'VR', 'Vila Real'),
(76120, 2, 46760, 3, 'VI', 'Viseu');

--  'Palau', 'PW', 'PLW'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76201, 2, 46770, 3, 'AM', 'Aimeliik'),
(76202, 2, 46770, 3, 'AR', 'Airai'),
(76203, 2, 46770, 3, 'AN', 'Angaur'),
(76204, 2, 46770, 3, 'HA', 'Hatohobei'),
(76205, 2, 46770, 3, 'KA', 'Kayangel'),
(76206, 2, 46770, 3, 'KO', 'Koror'),
(76207, 2, 46770, 3, 'ME', 'Melekeok'),
(76208, 2, 46770, 3, 'ND', 'Ngaraard'),
(76209, 2, 46770, 3, 'NC', 'Ngarchelong'),
(76210, 2, 46770, 3, 'NM', 'Ngardmau'),
(76211, 2, 46770, 3, 'NP', 'Ngatpang'),
(76212, 2, 46770, 3, 'NS', 'Ngchesar'),
(76213, 2, 46770, 3, 'NL', 'Ngeremlengui'),
(76214, 2, 46770, 3, 'NW', 'Ngiwal'),
(76215, 2, 46770, 3, 'PE', 'Peleliu'),
(76216, 2, 46770, 3, 'SO', 'Sonsorol');

--  'Paraguay', 'PY', 'PRY'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76301, 2, 46780, 3, 'AG', 'Alto Paraguay'),
(76302, 2, 46780, 3, 'AA', 'Alto Parana'),
(76303, 2, 46780, 3, 'AM', 'Amambay'),
(76304, 2, 46780, 3, 'AS', 'Asuncion'),
(76305, 2, 46780, 3, 'BQ', 'Boqueron'),
(76306, 2, 46780, 3, 'CG', 'Caaguazu'),
(76307, 2, 46780, 3, 'CZ', 'Caazapa'),
(76308, 2, 46780, 3, 'CY', 'Canindeyu'),
(76309, 2, 46780, 3, 'CE', 'Central'),
(76310, 2, 46780, 3, 'CN', 'Concepcion'),
(76311, 2, 46780, 3, 'CR', 'Cordillera'),
(76312, 2, 46780, 3, 'GU', 'Guaira'),
(76313, 2, 46780, 3, 'IT', 'Itapua'),
(76314, 2, 46780, 3, 'MI', 'Misiones'),
(76315, 2, 46780, 3, 'NE', 'Neembucu'),
(76316, 2, 46780, 3, 'PG', 'Paraguari'),
(76317, 2, 46780, 3, 'PH', 'Presidente Hayes'),
(76318, 2, 46780, 3, 'SP', 'San Pedro');

--  'Qatar', 'QA', 'QAT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76401, 2, 46790, 3, 'DA', 'Ad Dawhah'),
(76402, 2, 46790, 3, 'DY', 'Al Daayen'),
(76403, 2, 46790, 3, 'KR', 'Al Khawr'),
(76404, 2, 46790, 3, 'WA', 'Al Wakrah'),
(76405, 2, 46790, 3, 'RY', 'Ar Rayyan'),
(76406, 2, 46790, 3, 'MS', 'Madinat ash Shamal'),
(76407, 2, 46790, 3, 'SL', 'Umm Salal');

--  'Reunion', 'RE', 'REU'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76501, 2, 46800, 3, 'BN', 'Saint-Benoit'),
(76502, 2, 46800, 3, 'DE', 'Saint-Denis'),
(76503, 2, 46800, 3, 'PA', 'Saint-Paul'),
(76504, 2, 46800, 3, 'PI', 'Saint-Pierre');

--  'Romania', 'RO', 'ROM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76601, 2, 46810, 3, 'AB', 'Alba'),
(76602, 2, 46810, 3, 'AR', 'Arad'),
(76603, 2, 46810, 3, 'AG', 'Arges'),
(76604, 2, 46810, 3, 'BC', 'Bacau'),
(76605, 2, 46810, 3, 'BH', 'Bihor'),
(76606, 2, 46810, 3, 'BN', 'Bistrita-Nasaud'),
(76607, 2, 46810, 3, 'BT', 'Botosani'),
(76608, 2, 46810, 3, 'BR', 'Braila'),
(76609, 2, 46810, 3, 'BV', 'Brasov'),
(76610, 2, 46810, 3, 'BI', 'Bucuresti'),
(76611, 2, 46810, 3, 'BZ', 'Buzau'),
(76612, 2, 46810, 3, 'CL', 'Calarasi'),
(76613, 2, 46810, 3, 'CS', 'Caras-Severin'),
(76614, 2, 46810, 3, 'CJ', 'Cluj'),
(76615, 2, 46810, 3, 'CT', 'Constanta'),
(76616, 2, 46810, 3, 'CV', 'Covasna'),
(76617, 2, 46810, 3, 'DB', 'Dimbovita'),
(76618, 2, 46810, 3, 'DJ', 'Dolj'),
(76619, 2, 46810, 3, 'GL', 'Galati'),
(76620, 2, 46810, 3, 'GR', 'Giurgiu'),
(76621, 2, 46810, 3, 'GJ', 'Gorj'),
(76622, 2, 46810, 3, 'HR', 'Harghita'),
(76623, 2, 46810, 3, 'HD', 'Hunedoara'),
(76624, 2, 46810, 3, 'IL', 'Ialomita'),
(76625, 2, 46810, 3, 'IS', 'Iasi'),
(76626, 2, 46810, 3, 'IF', 'Ilfov'),
(76627, 2, 46810, 3, 'MM', 'Maramures'),
(76628, 2, 46810, 3, 'MH', 'Mehedinti'),
(76629, 2, 46810, 3, 'MS', 'Mures'),
(76630, 2, 46810, 3, 'NT', 'Neamt'),
(76631, 2, 46810, 3, 'OT', 'Olt'),
(76632, 2, 46810, 3, 'PH', 'Prahova'),
(76633, 2, 46810, 3, 'SJ', 'Salaj'),
(76634, 2, 46810, 3, 'SM', 'Satu-Mare'),
(76635, 2, 46810, 3, 'SB', 'Sibiu'),
(76636, 2, 46810, 3, 'SV', 'Suceava'),
(76637, 2, 46810, 3, 'TR', 'Teleorman'),
(76638, 2, 46810, 3, 'TM', 'Timis'),
(76639, 2, 46810, 3, 'TL', 'Tulcea'),
(76640, 2, 46810, 3, 'VL', 'Valcea'),
(76641, 2, 46810, 3, 'VS', 'Vaslui'),
(76642, 2, 46810, 3, 'VN', 'Vrancea');

--  'RS', 'SER', 'Serbia'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76701, 2, 46820, 3, 'BG', 'Belgrade'),
(76702, 2, 46820, 3, 'BO', 'Bor'),
(76703, 2, 46820, 3, 'BR', 'Branichevo'),
(76704, 2, 46820, 3, 'SD', 'Central Banat'),
(76705, 2, 46820, 3, 'PD', 'Danube'),
(76706, 2, 46820, 3, 'JA', 'Jablanica'),
(76707, 2, 46820, 3, 'KB', 'Kolubara'),
(76708, 2, 46820, 3, 'MA', 'Machva'),
(76709, 2, 46820, 3, 'MR', 'Morava'),
(76710, 2, 46820, 3, 'NS', 'Nishava'),
(76711, 2, 46820, 3, 'SC', 'North Bachka'),
(76712, 2, 46820, 3, 'SN', 'North Banat'),
(76713, 2, 46820, 3, 'PC', 'Pchinja'),
(76714, 2, 46820, 3, 'PI', 'Pirot'),
(76715, 2, 46820, 3, 'PM', 'Pomoravlje'),
(76716, 2, 46820, 3, 'RN', 'Rasina'),
(76717, 2, 46820, 3, 'RS', 'Rashka'),
(76718, 2, 46820, 3, 'JC', 'South Bachka'),
(76719, 2, 46820, 3, 'JN', 'South Banat'),
(76720, 2, 46820, 3, 'SM', 'Srem'),
(76721, 2, 46820, 3, 'SU', 'Shumadija'),
(76722, 2, 46820, 3, 'TO', 'Toplica'),
(76723, 2, 46820, 3, 'ZC', 'West Bachka'),
(76724, 2, 46820, 3, 'ZJ', 'Zajechar'),
(76725, 2, 46820, 3, 'ZL', 'Zlatibor'),
(76726, 2, 46820, 3, 'KO', 'Kosovo'),
(76727, 2, 46820, 3, 'KM', 'Kosovsko-Mitrovica'),
(76728, 2, 46820, 3, 'KP', 'Kosovsko-Pomoravlje'),
(76729, 2, 46820, 3, 'PE', 'Pech'),
(76730, 2, 46820, 3, 'PZ', 'Prizren');

--  'Russia', 'RU', 'RUS'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76801, 2, 554, 3, 'AD', 'Adygeya Republic'),
(76802, 2, 554, 3, 'AG', 'Aginskiy Buryatskiy avtonomnyy okrug (obsolete)'),
(76803, 2, 554, 3, 'AL', 'Altay Republic'),
(76804, 2, 554, 3, 'AK', 'Altayskiy Kray'),
(76805, 2, 554, 3, 'AM', 'Amurskaya oblast'),
(76806, 2, 554, 3, 'AR', 'Arkhangel\'skaya oblast'),
(76807, 2, 554, 3, 'AS', 'Astrakhanskaya oblast'),
(76808, 2, 554, 3, 'BK', 'Bashkortostan, Republic'),
(76809, 2, 554, 3, 'BL', 'Belgorodskaya oblast'),
(76810, 2, 554, 3, 'BR', 'Bryanskaya oblast'),
(76811, 2, 554, 3, 'BU', 'Buryatiya, Republic'),
(76812, 2, 554, 3, 'CN', 'Chechnya, Republic'),
(76813, 2, 554, 3, 'CL', 'Chelyabinskaya oblast'),
(76814, 2, 554, 3, 'CI', 'Chitinskaya oblast (osolete)'),
(76815, 2, 554, 3, 'CK', 'Chukotskiy avtonomnyy okrug'),
(76816, 2, 554, 3, 'CV', 'Chuvashiya, Republic'),
(76817, 2, 554, 3, 'DA', 'Dagestan, Republic'),
(76818, 2, 554, 3, 'EV', 'Evenkiyskiy avtonomniy okrug (obsolete)'),
(76819, 2, 554, 3, 'IN', 'Ingushetiya, Republic'),
(76820, 2, 554, 3, 'IK', 'Irkutskaya oblast'),
(76821, 2, 554, 3, 'IV', 'Ivanovskaya oblast'),
(76822, 2, 554, 3, 'KB', 'Kabardino-Balkariya, Republic'),
(76823, 2, 554, 3, 'KN', 'Kaliningradskaya oblast'),
(76824, 2, 554, 3, 'KL', 'Kalmykiya, Republic'),
(76825, 2, 554, 3, 'KG', 'Kaluzhskaya oblast'),
(76826, 2, 554, 3, 'KQ', 'Kamchatskaya oblast'),
(76827, 2, 554, 3, 'KC', 'Karachayevo-Cherkessiya, Republic'),
(76828, 2, 554, 3, 'KI', 'Kareliya, Republic'),
(76829, 2, 554, 3, 'KE', 'Kemerovskaya oblast'),
(76830, 2, 554, 3, 'KH', 'Khabarovskiy kray'),
(76831, 2, 554, 3, 'KK', 'Khakasiya, Republic'),
(76832, 2, 554, 3, 'KM', 'Khanty-Mansiyskiy avtonomnyy okrug'),
(76833, 2, 554, 3, 'KV', 'Kirovskaya oblast'),
(76834, 2, 554, 3, 'KO', 'Komi, Republic'),
(76835, 2, 554, 3, 'KY', 'Koryakskiy avtonomniy okrug (obsolete)'),
(76836, 2, 554, 3, 'KT', 'Kostromskaya oblast'),
(76837, 2, 554, 3, 'KD', 'Krasnodarskiy kray'),
(76838, 2, 554, 3, 'KX', 'Krasnoyarskiy kray'),
(76839, 2, 554, 3, 'CR', 'Crimea Republic'),
(76840, 2, 554, 3, 'KU', 'Kurganskaya oblast'),
(76841, 2, 554, 3, 'KS', 'Kurskaya oblast'),
(76842, 2, 554, 3, 'LN', 'Leningradskaya oblast'),
(76843, 2, 554, 3, 'LP', 'Lipetskaya oblast'),
(76844, 2, 554, 3, 'MG', 'Magadanskaya oblast'),
(76845, 2, 554, 3, 'ME', 'Mariy El, Republic'),
(76846, 2, 554, 3, 'MO', 'Mordoviya, Republic'),
(76847, 2, 554, 3, 'MC', 'Moscow city'),
(76848, 2, 554, 3, 'MS', 'Moskovskaya oblast'),
(76849, 2, 554, 3, 'MM', 'Murmanskaya oblast'),
(76850, 2, 554, 3, 'NN', 'Nenetskiy avtonomniy okrug'),
(76851, 2, 554, 3, 'NZ', 'Nizhegorodskaya oblast'),
(76852, 2, 554, 3, 'NO', 'North Ossetia, Republic'),
(76853, 2, 554, 3, 'NG', 'Novgorodskaya oblast'),
(76854, 2, 554, 3, 'NS', 'Novosibirskaya oblast'),
(76855, 2, 554, 3, 'OM', 'Omskaya oblast'),
(76856, 2, 554, 3, 'OB', 'Orenburgskaya oblast'),
(76857, 2, 554, 3, 'OL', 'Orlovskaya oblast'),
(76858, 2, 554, 3, 'PZ', 'Penzenskaya oblast'),
(76859, 2, 554, 3, 'PE', 'Permskiy kray'),
(76860, 2, 554, 3, 'PR', 'Primorskiy kray'),
(76861, 2, 554, 3, 'PS', 'Pskovskaya oblast'),
(76862, 2, 554, 3, 'RO', 'Rostovskaya oblast'),
(76863, 2, 554, 3, 'RZ', 'Ryazanskaya oblast'),
(76864, 2, 554, 3, 'SK', 'Sakha, Republic'),
(76865, 2, 554, 3, 'SL', 'Sakhalinskaya oblast'),
(76866, 2, 554, 3, 'SA', 'Samarskaya oblast'),
(76867, 2, 554, 3, 'SP', 'Sankt-Petersburg'),
(76868, 2, 554, 3, 'SR', 'Saratovskaya oblast'),
(76869, 2, 554, 3, 'SB', 'Sebastopol City'),
(76870, 2, 554, 3, 'SM', 'Smolenskaya oblast'),
(76871, 2, 554, 3, 'ST', 'Stavropol\'skiy kray'),
(76872, 2, 554, 3, 'SV', 'Sverdlovskaya oblast'),
(76873, 2, 554, 3, 'TB', 'Tambovskaya oblast'),
(76874, 2, 554, 3, 'TT', 'Tatarstan, Republic'),
(76875, 2, 554, 3, 'TD', 'Taymyrskiy (Dolgano-Nenetskiy) avtonomnyy okrug (obsolete)'),
(76876, 2, 554, 3, 'TO', 'Tomskaya oblast'),
(76877, 2, 554, 3, 'TL', 'Tul\'skaya oblast'),
(76878, 2, 554, 3, 'TV', 'Tverskaya oblast'),
(76879, 2, 554, 3, 'TU', 'Tyva, Republic'),
(76880, 2, 554, 3, 'TY', 'Tyumenskaya oblast'),
(76881, 2, 554, 3, 'UD', 'Udmurtiya, Republic'),
(76882, 2, 554, 3, 'UL', 'Ulyanovskaya oblast'),
(76883, 2, 554, 3, 'UO', 'Ust\'-Ordyniskiy Buryatskiy avtonomnyy okrug (obsolete)'),
(76884, 2, 554, 3, 'VL', 'Vladimirskaya oblast'),
(76885, 2, 554, 3, 'VG', 'Volgogradskaya oblast'),
(76886, 2, 554, 3, 'VO', 'Vologodskaya oblast'),
(76887, 2, 554, 3, 'VR', 'Voronezhskaya oblast'),
(76888, 2, 554, 3, 'YN', 'Yamalo-Nenetskiy avtonomnyy okrug'),
(76889, 2, 554, 3, 'YS', 'Yaroslavskaya oblast'),
(76890, 2, 554, 3, 'YV', 'Yevreyskaya avtonomnaya oblast'),
(76891, 2, 554, 3, 'ZB', 'Zabaykal''skiy kray');

--  'Rwanda', 'RW', 'RWA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(76901, 2, 46830, 3, 'BT', 'Butare'),
(76902, 2, 46830, 3, 'BM', 'Byumba'),
(76903, 2, 46830, 3, 'CY', 'Cyangugu'),
(76904, 2, 46830, 3, 'GK', 'Gikongoro'),
(76905, 2, 46830, 3, 'GS', 'Gisenyi'),
(76906, 2, 46830, 3, 'GT', 'Gitarama'),
(76907, 2, 46830, 3, 'KN', 'Kibungo'),
(76908, 2, 46830, 3, 'KY', 'Kibuye'),
(76909, 2, 46830, 3, 'KR', 'Kigali Rurale'),
(76910, 2, 46830, 3, 'KV', 'Kigali City'),
(76911, 2, 46830, 3, 'RU', 'Ruhengeri'),
(76912, 2, 46830, 3, 'UM', 'Umutara');

--  'Saudi Arabia', 'SA', 'SAU'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77001, 2, 46840, 3, 'BA', 'Al Bahah'),
(77002, 2, 46840, 3, 'HS', 'Al Hudud ash Shamaliyah'),
(77003, 2, 46840, 3, 'JF', 'Al Jawf'),
(77004, 2, 46840, 3, 'MD', 'Al Madinah'),
(77005, 2, 46840, 3, 'QS', 'Al Qasim'),
(77006, 2, 46840, 3, 'RI', 'Ar Riyad'),
(77007, 2, 46840, 3, 'SH', 'Ash Sharqiyah (Eastern)'),
(77008, 2, 46840, 3, 'AS', '\'Asir'),
(77009, 2, 46840, 3, 'HA', 'Ha\'il'),
(77010, 2, 46840, 3, 'JZ', 'Jizan'),
(77011, 2, 46840, 3, 'MK', 'Makkah'),
(77012, 2, 46840, 3, 'NJ', 'Najran'),
(77013, 2, 46840, 3, 'TB', 'Tabuk');

--  'Solomon Islands', 'SB', 'SLB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77101, 2, 46850, 3, 'CT', 'Honiara Capital Territory'),
(77102, 2, 46850, 3, 'CE', 'Central'),
(77103, 2, 46850, 3, 'CH', 'Choiseul'),
(77104, 2, 46850, 3, 'GU', 'Guadalcanal'),
(77105, 2, 46850, 3, 'IS', 'Isabel'),
(77106, 2, 46850, 3, 'MK', 'Makira'),
(77107, 2, 46850, 3, 'ML', 'Malaita'),
(77108, 2, 46850, 3, 'RB', 'Rennell and Bellona'),
(77109, 2, 46850, 3, 'TE', 'Temotu'),
(77110, 2, 46850, 3, 'WE', 'Western');

--  'Seychelles', 'SC', 'SYC'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77201, 2, 46860, 3, 'PI', 'Anse aux Pins'),
(77202, 2, 46860, 3, 'AB', 'Anse Boileau'),
(77203, 2, 46860, 3, 'ET', 'Anse Etoile'),
(77204, 2, 46860, 3, 'RO', 'Anse Royale'),
(77205, 2, 46860, 3, 'LO', 'Au Cap (Anse Louis)'),
(77206, 2, 46860, 3, 'BL', 'Baie Lazare'),
(77207, 2, 46860, 3, 'BS', 'Baie Sainte Anne'),
(77208, 2, 46860, 3, 'BV', 'Beau Vallon'),
(77209, 2, 46860, 3, 'BA', 'Bel Air'),
(77210, 2, 46860, 3, 'BO', 'Bel Ombre'),
(77211, 2, 46860, 3, 'CA', 'Cascade'),
(77212, 2, 46860, 3, 'RA', 'La Riviere Anglaise (English River)'),
(77213, 2, 46860, 3, 'GL', 'Glacis'),
(77214, 2, 46860, 3, 'GM', 'Grand\' Anse (on Mahe)'),
(77215, 2, 46860, 3, 'GP', 'Grand\' Anse (on Praslin)'),
(77216, 2, 46860, 3, 'DI', 'La Digue and Inner Islands'),
(77217, 2, 46860, 3, 'LM', 'Les Mamelles'),
(77218, 2, 46860, 3, 'MB', 'Mont Buxton'),
(77219, 2, 46860, 3, 'MF', 'Mont Fleuri'),
(77220, 2, 46860, 3, 'OI', 'Outer Islands'),
(77221, 2, 46860, 3, 'PL', 'Plaisance'),
(77222, 2, 46860, 3, 'PR', 'Pointe La Rue'),
(77223, 2, 46860, 3, 'PG', 'Port Glaud'),
(77224, 2, 46860, 3, 'RC', 'Roche Caiman'),
(77225, 2, 46860, 3, 'SL', 'Saint Louis'),
(77226, 2, 46860, 3, 'TA', 'Takamaka');

--  'Sudan', 'SD', 'SDN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77301, 2, 46870, 3, 'BN', 'An Nil al Azraq (Blue Nile)'),
(77302, 2, 46870, 3, 'CD', 'Zalingei (Central Darfur)'),
(77303, 2, 46870, 3, 'ED', 'Shark Darfur (East Darfur)'),
(77304, 2, 46870, 3, 'GD', 'Al Qadarif (Gedaref)'),
(77305, 2, 46870, 3, 'GZ', 'Al Jazirah (Gezira)'),
(77306, 2, 46870, 3, 'KA', 'Kassala'),
(77307, 2, 46870, 3, 'KH', 'Al Khartum (Khartoum)'),
(77308, 2, 46870, 3, 'ND', 'Shamal Darfur (North Darfur)'),
(77309, 2, 46870, 3, 'NO', 'Ash Shamaliyah (Northern)'),
(77310, 2, 46870, 3, 'NK', 'Shamal Kurdufan (North Kordofan)'),
(77311, 2, 46870, 3, 'RS', 'Al Bahr al Ahmar (Red Sea)'),
(77312, 2, 46870, 3, 'RN', 'An Nil (River Nile)'),
(77313, 2, 46870, 3, 'SI', 'Sinnar (Sennar)'),
(77314, 2, 46870, 3, 'SF', 'Janub Darfur (South Darfur)'),
(77315, 2, 46870, 3, 'SK', 'Janub Kurdufan (South Kordofan)'),
(77316, 2, 46870, 3, 'WF', 'Gharb Darfur (West Darfur)'),
(77317, 2, 46870, 3, 'WK', 'Gharb Kurdufan (West Kordofan)'),
(77318, 2, 46870, 3, 'WN', 'An Nil al Abyad (White Nile)');

--  'Sweden', 'SE', 'SWE'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77401, 2, 547, 3, 'BL', 'Blekinge lan'),
(77402, 2, 547, 3, 'KO', 'Dalarnas lan'),
(77403, 2, 547, 3, 'GV', 'Gavleborgs lan'),
(77404, 2, 547, 3, 'GT', 'Gotlands lan'),
(77405, 2, 547, 3, 'HA', 'Hallands lan'),
(77406, 2, 547, 3, 'JA', 'Jamtlands lan'),
(77407, 2, 547, 3, 'JO', 'Jonkopings lan'),
(77408, 2, 547, 3, 'KA', 'Kalmar lan'),
(77409, 2, 547, 3, 'KR', 'Kronobergs lan'),
(77410, 2, 547, 3, 'NB', 'Norrbottens lan'),
(77411, 2, 547, 3, 'OR', 'Orebro lan'),
(77412, 2, 547, 3, 'OG', 'Ostergotlands lan'),
(77413, 2, 547, 3, 'SN', 'Skane lan'),
(77414, 2, 547, 3, 'SD', 'Sodermanlands lan'),
(77415, 2, 547, 3, 'ST', 'Stockholms lan'),
(77416, 2, 547, 3, 'UP', 'Uppsala lan'),
(77417, 2, 547, 3, 'VR', 'Varmlands lan'),
(77418, 2, 547, 3, 'VB', 'Vasterbottens lan'),
(77419, 2, 547, 3, 'VN', 'Vasternorrlands lan'),
(77420, 2, 547, 3, 'VM', 'Vastmanlands lan'),
(77421, 2, 547, 3, 'VG', 'Vastra Gotalands lan');

--  'Singapore', 'SG', 'SGP'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77501, 2, 557, 3, 'CS', 'Central Singapore'),
(77502, 2, 557, 3, 'NE', 'North East'),
(77503, 2, 557, 3, 'NW', 'North West'),
(77504, 2, 557, 3, 'SE', 'South East'),
(77505, 2, 557, 3, 'SW', 'South West');

--  'Saint Helena', 'SH', 'SHN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77601, 2, 46880, 3, 'AC', 'Ascension'),
(77602, 2, 46880, 3, 'SH', 'Saint Helena'),
(77603, 2, 46880, 3, 'TA', 'Tristan da Cunha');

--  'Slovenia', 'SI', 'SVN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77701, 2, 46890, 3, 'DO', 'Dolenjska'),
(77702, 2, 46890, 3, 'GO', 'Gorenjska'),
(77703, 2, 46890, 3, 'SP', 'Goriska'),
(77704, 2, 46890, 3, 'KO', 'Koroska'),
(77705, 2, 46890, 3, 'NO', 'Notranjsko-kraska'),
(77706, 2, 46890, 3, 'JP', 'Obalno-kraska'),
(77707, 2, 46890, 3, 'LJ', 'Osrednjeslovenska'),
(77708, 2, 46890, 3, 'PD', 'Podravska'),
(77709, 2, 46890, 3, 'PM', 'Pomurska'),
(77710, 2, 46890, 3, 'SA', 'Savinjska'),
(77711, 2, 46890, 3, 'PS', 'Spodnjeposavska'),
(77712, 2, 46890, 3, 'ZS', 'Zasavska');

--  'Svalbard and Jan Mayen Islands', 'SJ', 'SJM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77801, 2, 46900, 3, 'JN', 'Jan Mayen'),
(77802, 2, 46900, 3, 'SV', 'Svalbard');

--  'Slovakia (Slovak Republic)', 'SK', 'SVK'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(77901, 2, 46910, 3, 'BC', 'Banska Bystrica'),
(77902, 2, 46910, 3, 'BL', 'Bratislava'),
(77903, 2, 46910, 3, 'KI', 'Kosice'),
(77904, 2, 46910, 3, 'NI', 'Nitra'),
(77905, 2, 46910, 3, 'PV', 'Presov'),
(77906, 2, 46910, 3, 'TC', 'Trencin'),
(77907, 2, 46910, 3, 'TA', 'Trnava'),
(77908, 2, 46910, 3, 'ZI', 'Zilina');

--  'Sierra Leone', 'SL', 'SLE'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78001, 2, 46920, 3, 'EA', 'Eastern'),
(78002, 2, 46920, 3, 'NO', 'Northern'),
(78003, 2, 46920, 3, 'SO', 'Southern'),
(78004, 2, 46920, 3, 'WE', 'Western Area (Freetown)');

--  'San Marino', 'SM', 'SMR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78101, 2, 46930, 3, 'AC', 'Acquaviva'),
(78102, 2, 46930, 3, 'BM', 'Borgo Maggiore'),
(78103, 2, 46930, 3, 'CH', 'Chiesanuova'),
(78104, 2, 46930, 3, 'DO', 'Domagnano'),
(78105, 2, 46930, 3, 'FA', 'Faetano'),
(78106, 2, 46930, 3, 'FI', 'Fiorentino'),
(78107, 2, 46930, 3, 'MC', 'Montegiardino'),
(78108, 2, 46930, 3, 'SM', 'Citta di San Marino'),
(78109, 2, 46930, 3, 'SE', 'Serravalle');

--  'Senegal', 'SN', 'SEN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78201, 2, 46940, 3, 'DK', 'Dakar'),
(78202, 2, 46940, 3, 'DB', 'Diourbel'),
(78203, 2, 46940, 3, 'FK', 'Fatick'),
(78204, 2, 46940, 3, 'KF', 'Kaffrine'),
(78205, 2, 46940, 3, 'KC', 'Kaolack'),
(78206, 2, 46940, 3, 'KG', 'Kedougou'),
(78207, 2, 46940, 3, 'KO', 'Kolda'),
(78208, 2, 46940, 3, 'LG', 'Louga'),
(78209, 2, 46940, 3, 'MT', 'Matam'),
(78210, 2, 46940, 3, 'SL', 'Saint-Louis'),
(78211, 2, 46940, 3, 'SD', 'Sedhiou'),
(78212, 2, 46940, 3, 'TB', 'Tambacounda'),
(78213, 2, 46940, 3, 'TH', 'Thies'),
(78214, 2, 46940, 3, 'ZG', 'Ziguinchor');

--  'Somalia', 'SO', 'SOM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78301, 2, 46950, 3, 'AW', 'Awdal'),
(78302, 2, 46950, 3, 'BK', 'Bakool'),
(78303, 2, 46950, 3, 'BN', 'Banaadir'),
(78304, 2, 46950, 3, 'BR', 'Bari'),
(78305, 2, 46950, 3, 'BY', 'Bay'),
(78306, 2, 46950, 3, 'GA', 'Galguduud'),
(78307, 2, 46950, 3, 'GE', 'Gedo'),
(78308, 2, 46950, 3, 'HI', 'Hiiraan'),
(78309, 2, 46950, 3, 'JD', 'Jubbada Dhexe'),
(78310, 2, 46950, 3, 'JH', 'Jubbada Hoose'),
(78311, 2, 46950, 3, 'MU', 'Mudug'),
(78312, 2, 46950, 3, 'NU', 'Nugaal'),
(78313, 2, 46950, 3, 'SA', 'Sanaag'),
(78314, 2, 46950, 3, 'SD', 'Shabeellaha Dhexe'),
(78315, 2, 46950, 3, 'SH', 'Shabeellaha Hoose'),
(78316, 2, 46950, 3, 'SO', 'Sool'),
(78317, 2, 46950, 3, 'TO', 'Togdheer'),
(78318, 2, 46950, 3, 'WO', 'Woqooyi Galbeed');

--  'Suriname', 'SR', 'SUR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78401, 2, 46960, 3, 'BR', 'Brokopondo'),
(78402, 2, 46960, 3, 'CM', 'Commewijne'),
(78403, 2, 46960, 3, 'CR', 'Coronie'),
(78404, 2, 46960, 3, 'MA', 'Marowijne'),
(78405, 2, 46960, 3, 'NI', 'Nickerie'),
(78406, 2, 46960, 3, 'PR', 'Para'),
(78407, 2, 46960, 3, 'PM', 'Paramaribo'),
(78408, 2, 46960, 3, 'SA', 'Saramacca'),
(78409, 2, 46960, 3, 'SI', 'Sipaliwini'),
(78410, 2, 46960, 3, 'WA', 'Wanica');

--  'SS', 'South Sudan'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78501, 2, 46970, 3, 'BG', 'Central Equatoria (Bahr al Jabal)'),
(78502, 2, 46970, 3, 'EE', 'East Equatoria'),
(78503, 2, 46970, 3, 'JG', 'Jungoli'),
(78504, 2, 46970, 3, 'EB', 'Lakes'),
(78505, 2, 46970, 3, 'BN', 'North Bahr-al-Ghazal'),
(78506, 2, 46970, 3, 'WH', 'Unity (Western Upper Nile)'),
(78507, 2, 46970, 3, 'NU', 'Upper Nile'),
(78508, 2, 46970, 3, 'WR', 'Warap'),
(78509, 2, 46970, 3, 'BW', 'West Bahr-al-Ghazal'),
(78510, 2, 46970, 3, 'EE', 'West Equatoria');

--  'Sao Tome and Principe', 'ST', 'STP'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78601, 2, 46980, 3, 'PR', 'Principe'),
(78602, 2, 46980, 3, 'ST', 'Sao Tome');

--  'SU', 'Soviet Union' (Obsolete)
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (78701, 2, 46990, 3, '', ''),

--  'El Salvador', 'SV', 'SLV'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78801, 2, 47000, 3, 'AH', 'Ahuachapan'),
(78802, 2, 47000, 3, 'CA', 'Cabanas'),
(78803, 2, 47000, 3, 'CH', 'Chalatenango'),
(78804, 2, 47000, 3, 'CU', 'Cuscatlan'),
(78805, 2, 47000, 3, 'LI', 'La Libertad'),
(78806, 2, 47000, 3, 'PA', 'La Paz'),
(78807, 2, 47000, 3, 'UN', 'La Union'),
(78808, 2, 47000, 3, 'MO', 'Morazan'),
(78809, 2, 47000, 3, 'SM', 'San Miguel'),
(78810, 2, 47000, 3, 'SS', 'San Salvador'),
(78811, 2, 47000, 3, 'SA', 'Santa Ana'),
(78812, 2, 47000, 3, 'SV', 'San Vicente'),
(78813, 2, 47000, 3, 'SO', 'Sonsonate'),
(78814, 2, 47000, 3, 'US', 'Usulutan');

--  'Syrian Arab Republic', 'SY', 'SYR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(78901, 2, 47010, 3, 'HL', 'Aleppo'),
(78902, 2, 47010, 3, 'HA', 'Al Hasakah'),
(78903, 2, 47010, 3, 'RA', 'Ar Raqqah'),
(78904, 2, 47010, 3, 'SU', 'As Suwayda'),
(78905, 2, 47010, 3, 'DI', 'Damascus'),
(78906, 2, 47010, 3, 'DR', 'Dara'),
(78907, 2, 47010, 3, 'DY', 'Dayr az Zawr'),
(78908, 2, 47010, 3, 'HM', 'Hamah'),
(78909, 2, 47010, 3, 'HI', 'Hims'),
(78910, 2, 47010, 3, 'ID', 'Idlib'),
(78911, 2, 47010, 3, 'LA', 'Latakia'),
(78912, 2, 47010, 3, 'QU', 'Quneitra (Al Qunaytirah)'),
(78913, 2, 47010, 3, 'RD', 'Rif Dimashq'),
(78914, 2, 47010, 3, 'TA', 'Tartus');

--  'Swaziland', 'SZ', 'SWZ'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79001, 2, 47020, 3, 'HH', 'Hhohho'),
(79002, 2, 47020, 3, 'LU', 'Lubombo'),
(79003, 2, 47020, 3, 'MA', 'Manzini'),
(79004, 2, 47020, 3, 'SH', 'Shishelweni');

--  'Turks and Caicos Islands', 'TC', 'TCA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79101, 2, 47030, 3, 'AC', 'Ambergris Cays'),
(79102, 2, 47030, 3, 'DC', 'Dellis Cay'),
(79103, 2, 47030, 3, 'FC', 'French Cay'),
(79104, 2, 47030, 3, 'LW', 'Little Water Cay'),
(79105, 2, 47030, 3, 'RC', 'Parrot Cay'),
(79106, 2, 47030, 3, 'PN', 'Pine Cay'),
(79107, 2, 47030, 3, 'SL', 'Salt Cay'),
(79108, 2, 47030, 3, 'GT', 'Grand Turk'),
(79109, 2, 47030, 3, 'SC', 'South Caicos'),
(79110, 2, 47030, 3, 'EC', 'East Caicos'),
(79111, 2, 47030, 3, 'MC', 'Middle Caicos'),
(79112, 2, 47030, 3, 'NC', 'North Caicos'),
(79113, 2, 47030, 3, 'PR', 'Providenciales'),
(79114, 2, 47030, 3, 'WC', 'West Caicos');

--  'Chad', 'TD', 'TCD'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79201, 2, 47040, 3, 'BG', 'Barh el Ghazel'),
(79202, 2, 47040, 3, 'BA', 'Batha'),
(79203, 2, 47040, 3, 'BE', 'Borkou'),
(79204, 2, 47040, 3, 'CG', 'Chari-Baguirmi'),
(79205, 2, 47040, 3, 'EE', 'Ennedi Est'),
(79206, 2, 47040, 3, 'EO', 'Ennedi Ouest'),
(79207, 2, 47040, 3, 'GR', 'Guera'),
(79208, 2, 47040, 3, 'HD', 'Hadjer-Lamis'),
(79209, 2, 47040, 3, 'KM', 'Kanem'),
(79210, 2, 47040, 3, 'LC', 'Lac'),
(79211, 2, 47040, 3, 'LO', 'Logone Occidental'),
(79212, 2, 47040, 3, 'LR', 'Logone Oriental'),
(79213, 2, 47040, 3, 'MA', 'Mandoul'),
(79214, 2, 47040, 3, 'ME', 'Mayo-Kebbi Est'),
(79215, 2, 47040, 3, 'MW', 'Mayo-Kebbi Ouest'),
(79216, 2, 47040, 3, 'MO', 'Moyen-Chari'),
(79217, 2, 47040, 3, 'OA', 'Ouaddai'),
(79218, 2, 47040, 3, 'SA', 'Salamat'),
(79219, 2, 47040, 3, 'SI', 'Sila'),
(79220, 2, 47040, 3, 'TA', 'Tandjile'),
(79221, 2, 47040, 3, 'TI', 'Tibesti'),
(79222, 2, 47040, 3, 'NJ', 'Ville de N''Djamena'),
(79223, 2, 47040, 3, 'BI', 'Wadi Fira');

--  'French Southern Territories', 'TF', 'ATF'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79301, 2, 47050, 3, 'AD', 'Adelie Land'),
(79302, 2, 47050, 3, 'AM', 'Ile Amsterdam'),
(79303, 2, 47050, 3, 'CR', 'Iles Crozet'),
(79304, 2, 47050, 3, 'IE', 'Iles Eparses'),
(79305, 2, 47050, 3, 'KG', 'Iles Kerguelen'),
(79306, 2, 47050, 3, 'SP', 'Ile Saint-Paul');

--  'Togo', 'TG', 'TGO'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79401, 2, 47060, 3, 'CE', 'Centrale'),
(79402, 2, 47060, 3, 'KA', 'Kara'),
(79403, 2, 47060, 3, 'MA', 'Maritime'),
(79404, 2, 47060, 3, 'PL', 'Plateaux'),
(79405, 2, 47060, 3, 'SA', 'Savanes');

--  'Thailand', 'TH', 'THA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79501, 2, 560, 3, 'AC', 'Amnat Charoen'),
(79502, 2, 560, 3, 'AT', 'Ang Thong'),
(79503, 2, 560, 3, 'BM', 'Bangkok Metropolis'),
(79504, 2, 560, 3, 'BK', 'Bueng Kan'),
(79505, 2, 560, 3, 'BR', 'Buri Ram'),
(79506, 2, 560, 3, 'CC', 'Chachoengsao'),
(79507, 2, 560, 3, 'CN', 'Chai Nat'),
(79508, 2, 560, 3, 'CY', 'Chaiyaphum'),
(79509, 2, 560, 3, 'CT', 'Chanthaburi'),
(79510, 2, 560, 3, 'CM', 'Chiang Mai'),
(79511, 2, 560, 3, 'CR', 'Chiang Rai'),
(79512, 2, 560, 3, 'CB', 'Chon Buri'),
(79513, 2, 560, 3, 'CP', 'Chumphon'),
(79514, 2, 560, 3, 'KL', 'Kalasin'),
(79515, 2, 560, 3, 'KP', 'Kamphaeng Phet'),
(79516, 2, 560, 3, 'KN', 'Kanchanaburi'),
(79517, 2, 560, 3, 'KK', 'Khon Kaen'),
(79518, 2, 560, 3, 'KR', 'Krabi'),
(79519, 2, 560, 3, 'LG', 'Lampang'),
(79520, 2, 560, 3, 'LN', 'Lamphun'),
(79521, 2, 560, 3, 'LE', 'Loei'),
(79522, 2, 560, 3, 'LB', 'Lop Buri'),
(79523, 2, 560, 3, 'MH', 'Mae Hong Son'),
(79524, 2, 560, 3, 'MS', 'Maha Sarakham'),
(79525, 2, 560, 3, 'MD', 'Mukdahan'),
(79526, 2, 560, 3, 'NN', 'Nakhon Nayok'),
(79527, 2, 560, 3, 'NP', 'Nakhon Pathom'),
(79528, 2, 560, 3, 'NF', 'Nakhon Phanom'),
(79529, 2, 560, 3, 'NR', 'Nakhon Ratchasima'),
(79530, 2, 560, 3, 'NS', 'Nakhon Sawan'),
(79531, 2, 560, 3, 'NT', 'Nakhon Si Thammarat'),
(79532, 2, 560, 3, 'NA', 'Nan'),
(79533, 2, 560, 3, 'NW', 'Narathiwat'),
(79534, 2, 560, 3, 'NB', 'Nong Bua Lamphu'),
(79535, 2, 560, 3, 'NH', 'Nong Khai'),
(79536, 2, 560, 3, 'NO', 'Nonthaburi'),
(79537, 2, 560, 3, 'PT', 'Pathum Thani'),
(79538, 2, 560, 3, 'PI', 'Pattani'),
(79539, 2, 560, 3, 'PG', 'Phangnga'),
(79540, 2, 560, 3, 'PL', 'Phatthalung'),
(79541, 2, 560, 3, 'PY', 'Phayao'),
(79542, 2, 560, 3, 'PH', 'Phetchabun'),
(79543, 2, 560, 3, 'PE', 'Phetchaburi'),
(79544, 2, 560, 3, 'PC', 'Phichit'),
(79545, 2, 560, 3, 'PS', 'Phitsanulok'),
(79546, 2, 560, 3, 'PR', 'Phrae'),
(79547, 2, 560, 3, 'PA', 'Phra Nakhon Si Ayutthaya'),
(79548, 2, 560, 3, 'PU', 'Phuket'),
(79549, 2, 560, 3, 'PB', 'Prachin Buri'),
(79550, 2, 560, 3, 'PK', 'Prachuap Khiri Khan'),
(79551, 2, 560, 3, 'RN', 'Ranong'),
(79552, 2, 560, 3, 'RT', 'Ratchaburi'),
(79553, 2, 560, 3, 'RY', 'Rayong'),
(79554, 2, 560, 3, 'RE', 'Roi Et'),
(79555, 2, 560, 3, 'SK', 'Sa Kaeo'),
(79556, 2, 560, 3, 'SN', 'Sakon Nakhon'),
(79557, 2, 560, 3, 'SP', 'Samut Prakan'),
(79558, 2, 560, 3, 'SS', 'Samut Sakhon'),
(79559, 2, 560, 3, 'SM', 'Samut Songkhram'),
(79560, 2, 560, 3, 'SR', 'Sara Buri'),
(79561, 2, 560, 3, 'SA', 'Satun'),
(79562, 2, 560, 3, 'SB', 'Sing Buri'),
(79563, 2, 560, 3, 'SI', 'Si Sa Ket'),
(79564, 2, 560, 3, 'SG', 'Songkhla'),
(79565, 2, 560, 3, 'SO', 'Sukhothai'),
(79566, 2, 560, 3, 'SH', 'Suphan Buri'),
(79567, 2, 560, 3, 'ST', 'Surat Thani'),
(79568, 2, 560, 3, 'SU', 'Surin'),
(79569, 2, 560, 3, 'TK', 'Tak'),
(79570, 2, 560, 3, 'TG', 'Trang'),
(79571, 2, 560, 3, 'TT', 'Trat'),
(79572, 2, 560, 3, 'UR', 'Ubon Ratchathani'),
(79573, 2, 560, 3, 'UN', 'Udon Thani'),
(79574, 2, 560, 3, 'UT', 'Uthai Thani'),
(79575, 2, 560, 3, 'UD', 'Uttaradit'),
(79576, 2, 560, 3, 'YL', 'Yala'),
(79577, 2, 560, 3, 'YS', 'Yasothon');

--  'Tajikistan', 'TJ', 'TJK'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79601, 2, 47070, 3, 'BK', 'Kuhistoni Badakhshon (Gorno-Badakhshan)'),
(79602, 2, 47070, 3, 'DU', 'Dushanbe'),
(79603, 2, 47070, 3, 'KL', 'Khatlon'),
(79604, 2, 47070, 3, 'LE', 'Sughd (Leninabad)'),
(79605, 2, 47070, 3, 'RR', 'Regions of Republican Subordination');

--  'Tokelau', 'TK', 'TKL'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79701, 2, 47080, 3, 'AT', 'Atafu'),
(79702, 2, 47080, 3, 'FA', 'Fakaofo'),
(79703, 2, 47080, 3, 'NU', 'Nukunonu');

--  'TL', 'Timor-Leste'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79801, 2, 47090, 3, 'AL', 'Aileu'),
(79802, 2, 47090, 3, 'AN', 'Ainaro'),
(79803, 2, 47090, 3, 'AM', 'Ambeno'),
(79804, 2, 47090, 3, 'BC', 'Baucau'),
(79805, 2, 47090, 3, 'BB', 'Bobonaro'),
(79806, 2, 47090, 3, 'CL', 'Cova Lima'),
(79807, 2, 47090, 3, 'DL', 'Dili'),
(79808, 2, 47090, 3, 'ER', 'Ermera'),
(79809, 2, 47090, 3, 'BT', 'Lautem'),
(79810, 2, 47090, 3, 'LQ', 'Liquica'),
(79811, 2, 47090, 3, 'MT', 'Manatuto'),
(79812, 2, 47090, 3, 'MF', 'Manufahi'),
(79813, 2, 47090, 3, 'VQ', 'Viqueque');

--  'Turkmenistan', 'TM', 'TKM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(79901, 2, 47100, 3, 'AL', 'Ahal Welayaty'),
(79902, 2, 47100, 3, 'AB', 'Ashgabat'),
(79903, 2, 47100, 3, 'BA', 'Balkan Welayaty'),
(79904, 2, 47100, 3, 'DA', 'Dashhowuz Welayaty'),
(79905, 2, 47100, 3, 'LE', 'Lebap Welayaty'),
(79906, 2, 47100, 3, 'MA', 'Mary Welayaty');

--  'Tunisia', 'TN', 'TUN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80001, 2, 47110, 3, 'AN', 'Ariana'),
(80002, 2, 47110, 3, 'BJ', 'Beja'),
(80003, 2, 47110, 3, 'BA', 'Ben Arous'),
(80004, 2, 47110, 3, 'BZ', 'Bizerte'),
(80005, 2, 47110, 3, 'GB', 'Gabes'),
(80006, 2, 47110, 3, 'GF', 'Gafsa'),
(80007, 2, 47110, 3, 'JE', 'Jendouba'),
(80008, 2, 47110, 3, 'KR', 'Kairouan'),
(80009, 2, 47110, 3, 'KS', 'Kasserine'),
(80010, 2, 47110, 3, 'KB', 'Kebili'),
(80011, 2, 47110, 3, 'KF', 'Kef'),
(80012, 2, 47110, 3, 'MH', 'Mahdia'),
(80013, 2, 47110, 3, 'MN', 'Manouba'),
(80014, 2, 47110, 3, 'ME', 'Medenine'),
(80015, 2, 47110, 3, 'MS', 'Monastir'),
(80016, 2, 47110, 3, 'NB', 'Nabeul'),
(80017, 2, 47110, 3, 'SF', 'Sfax'),
(80018, 2, 47110, 3, 'SZ', 'Sidi Bou Zid'),
(80019, 2, 47110, 3, 'SL', 'Siliana'),
(80020, 2, 47110, 3, 'SS', 'Sousse'),
(80021, 2, 47110, 3, 'TA', 'Tataouine'),
(80022, 2, 47110, 3, 'TO', 'Tozeur'),
(80023, 2, 47110, 3, 'TU', 'Tunis'),
(80024, 2, 47110, 3, 'ZA', 'Zaghouan');

--  'Tonga', 'TO', 'TON'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80101, 2, 47120, 3, 'EU', '\'Eua'),
(80102, 2, 47120, 3, 'HA', 'Ha\'apai'),
(80103, 2, 47120, 3, 'NI', 'Niuas'),
(80104, 2, 47120, 3, 'TT', 'Tongatapu'),
(80105, 2, 47120, 3, 'VA', 'Vava\'u');

--  'East (Portuguese) Timor', 'TP', 'TMP'
-- (OBSOLETE, Renamed to TL, Timor-Leste
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (79801, 2, 47090, 3, 'AL', 'Aileu'),
-- (79802, 2, 47090, 3, 'AN', 'Ainaro'),
-- (79803, 2, 47090, 3, 'AM', 'Ambeno'),
-- (79804, 2, 47090, 3, 'BC', 'Baucau'),
-- (79805, 2, 47090, 3, 'BB', 'Bobonaro'),
-- (79806, 2, 47090, 3, 'CL', 'Cova Lima'),
-- (79807, 2, 47090, 3, 'DL', 'Dili'),
-- (79808, 2, 47090, 3, 'ER', 'Ermera'),
-- (79809, 2, 47090, 3, 'BT', 'Lautem'),
-- (79810, 2, 47090, 3, 'LQ', 'Liquica'),
-- (79811, 2, 47090, 3, 'MT', 'Manatuto'),
-- (79812, 2, 47090, 3, 'MF', 'Manufahi'),
-- (79813, 2, 47090, 3, 'VQ', 'Viqueque');

--  'Turkey', 'TR', 'TUR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80301, 2, 47140, 3, 'AA', 'Adana'),
(80302, 2, 47140, 3, 'AD', 'Adiyaman'),
(80303, 2, 47140, 3, 'AF', 'Afyonkarahisar'),
(80304, 2, 47140, 3, 'AG', 'Agri'),
(80305, 2, 47140, 3, 'AK', 'Aksaray'),
(80306, 2, 47140, 3, 'AM', 'Amasya'),
(80307, 2, 47140, 3, 'AN', 'Ankara'),
(80308, 2, 47140, 3, 'AL', 'Antalya'),
(80309, 2, 47140, 3, 'AR', 'Ardahan'),
(80310, 2, 47140, 3, 'AV', 'Artvin'),
(80311, 2, 47140, 3, 'AY', 'Aydin'),
(80312, 2, 47140, 3, 'BK', 'Balikesir'),
(80313, 2, 47140, 3, 'BR', 'Bartin'),
(80314, 2, 47140, 3, 'BM', 'Batman'),
(80315, 2, 47140, 3, 'BB', 'Bayburt'),
(80316, 2, 47140, 3, 'BC', 'Bilecik'),
(80317, 2, 47140, 3, 'BG', 'Bingol'),
(80318, 2, 47140, 3, 'BT', 'Bitlis'),
(80319, 2, 47140, 3, 'BL', 'Bolu'),
(80320, 2, 47140, 3, 'BD', 'Burdur'),
(80321, 2, 47140, 3, 'BU', 'Bursa'),
(80322, 2, 47140, 3, 'CK', 'Chanakkale'),
(80323, 2, 47140, 3, 'CI', 'Chankiri'),
(80324, 2, 47140, 3, 'CM', 'Chorum'),
(80325, 2, 47140, 3, 'DN', 'Denizli'),
(80326, 2, 47140, 3, 'DY', 'Diyarbakir'),
(80327, 2, 47140, 3, 'DU', 'Duzce'),
(80328, 2, 47140, 3, 'ED', 'Edirne'),
(80329, 2, 47140, 3, 'EG', 'Elazig'),
(80330, 2, 47140, 3, 'EN', 'Erzincan'),
(80331, 2, 47140, 3, 'EM', 'Erzurum'),
(80332, 2, 47140, 3, 'ES', 'Eskishehir'),
(80333, 2, 47140, 3, 'GA', 'Gaziantep'),
(80334, 2, 47140, 3, 'GI', 'Giresun'),
(80335, 2, 47140, 3, 'GU', 'Gumushane'),
(80336, 2, 47140, 3, 'HK', 'Hakkari'),
(80337, 2, 47140, 3, 'HT', 'Hatay'),
(80338, 2, 47140, 3, 'IG', 'Igdir'),
(80339, 2, 47140, 3, 'IP', 'Isparta'),
(80340, 2, 47140, 3, 'IB', 'Istanbul'),
(80341, 2, 47140, 3, 'IZ', 'Izmir'),
(80342, 2, 47140, 3, 'KM', 'Kahramanmaras'),
(80343, 2, 47140, 3, 'KB', 'Karabuk'),
(80344, 2, 47140, 3, 'KR', 'Karaman'),
(80345, 2, 47140, 3, 'KA', 'Kars'),
(80346, 2, 47140, 3, 'KS', 'Kastamonu'),
(80347, 2, 47140, 3, 'KY', 'Kayseri'),
(80348, 2, 47140, 3, 'KI', 'Kilis'),
(80349, 2, 47140, 3, 'KK', 'Kirikkale'),
(80350, 2, 47140, 3, 'KL', 'Kirklareli'),
(80351, 2, 47140, 3, 'KH', 'Kirshehir'),
(80352, 2, 47140, 3, 'KC', 'Kocaeli'),
(80353, 2, 47140, 3, 'KO', 'Konya'),
(80354, 2, 47140, 3, 'KU', 'Kutahya'),
(80355, 2, 47140, 3, 'ML', 'Malatya'),
(80356, 2, 47140, 3, 'MN', 'Manisa'),
(80357, 2, 47140, 3, 'MR', 'Mardin'),
(80358, 2, 47140, 3, 'IC', 'Mersin (Ichel)'),
(80359, 2, 47140, 3, 'MG', 'Mugla'),
(80360, 2, 47140, 3, 'MS', 'Mus'),
(80361, 2, 47140, 3, 'NV', 'Nevsehir'),
(80362, 2, 47140, 3, 'NG', 'Nigde'),
(80363, 2, 47140, 3, 'OR', 'Ordu'),
(80364, 2, 47140, 3, 'OS', 'Osmaniye'),
(80365, 2, 47140, 3, 'RI', 'Rize'),
(80366, 2, 47140, 3, 'SK', 'Sakarya'),
(80367, 2, 47140, 3, 'SS', 'Samsun'),
(80368, 2, 47140, 3, 'SU', 'Sanliurfa'),
(80369, 2, 47140, 3, 'SI', 'Siirt'),
(80370, 2, 47140, 3, 'SP', 'Sinop'),
(80371, 2, 47140, 3, 'SR', 'Sirnak'),
(80372, 2, 47140, 3, 'SV', 'Sivas'),
(80373, 2, 47140, 3, 'TG', 'Tekirdag'),
(80374, 2, 47140, 3, 'TT', 'Tokat'),
(80375, 2, 47140, 3, 'TB', 'Trabzon'),
(80376, 2, 47140, 3, 'TC', 'Tunceli'),
(80377, 2, 47140, 3, 'US', 'Usak'),
(80378, 2, 47140, 3, 'VA', 'Van'),
(80379, 2, 47140, 3, 'YL', 'Yalova'),
(80380, 2, 47140, 3, 'YZ', 'Yozgat'),
(80381, 2, 47140, 3, 'ZO', 'Zonguldak');

--  'Trinidad and Tobago', 'TT', 'TTO'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80401, 2, 47150, 3, 'AR', 'Arima'),
(80402, 2, 47150, 3, 'CH', 'Chaguanas'),
(80403, 2, 47150, 3, 'CT', 'Couva/Tabaquite/Talparo'),
(80404, 2, 47150, 3, 'DM', 'Diego Martin'),
(80405, 2, 47150, 3, 'ET', 'Eastern Tobago'),
(80406, 2, 47150, 3, 'MR', 'Mayaro/Rio Claro'),
(80407, 2, 47150, 3, 'PD', 'Penal/Debe'),
(80408, 2, 47150, 3, 'PF', 'Point Fortin'),
(80409, 2, 47150, 3, 'PS', 'Port of Spain'),
(80410, 2, 47150, 3, 'PT', 'Princes Town'),
(80411, 2, 47150, 3, 'SF', 'San Fernando'),
(80412, 2, 47150, 3, 'SN', 'Sangre Grande'),
(80413, 2, 47150, 3, 'SL', 'San Juan/Laventille'),
(80414, 2, 47150, 3, 'SI', 'Siparia'),
(80415, 2, 47150, 3, 'TP', 'Tunapuna/Piarco'),
(80416, 2, 47150, 3, 'WT', 'Western Tobago');

--  'Tuvalu', 'TV', 'TUV'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80501, 2, 47160, 3, 'FN', 'Funafuti'),
(80502, 2, 47160, 3, 'NG', 'Nanumanga'),
(80503, 2, 47160, 3, 'NA', 'Nanumea'),
(80504, 2, 47160, 3, 'NT', 'Niutao'),
(80505, 2, 47160, 3, 'NU', 'Nui'),
(80506, 2, 47160, 3, 'NF', 'Nukufetau'),
(80507, 2, 47160, 3, 'NL', 'Nukulaelae'),
(80508, 2, 47160, 3, 'VI', 'Vaitupu');

--  'Taiwan', 'TW', 'TWN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80601, 2, 47170, 3, 'CG', 'Chang-hua'),
(80602, 2, 47170, 3, 'CH', 'Chia-yi'),
(80603, 2, 47170, 3, 'CS', 'Chia-yi City'),
(80604, 2, 47170, 3, 'HH', 'Hsin-chu'),
(80605, 2, 47170, 3, 'HC', 'Hsin-chu City'),
(80606, 2, 47170, 3, 'HL', 'Hua-lien'),
(80607, 2, 47170, 3, 'IL', 'I-lan'),
(80608, 2, 47170, 3, 'KS', 'Kao-hsiung City'),
(80609, 2, 47170, 3, 'CL', 'Keelung City'),
(80610, 2, 47170, 3, 'KM', 'Kin-men'),
(80611, 2, 47170, 3, 'LK', 'Lien-chiang'),
(80612, 2, 47170, 3, 'ML', 'Miao-li'),
(80613, 2, 47170, 3, 'NT', 'Nan-tou'),
(80614, 2, 47170, 3, 'TP', 'New Tai-pei City'),
(80615, 2, 47170, 3, 'PH', 'Peng-hu'),
(80616, 2, 47170, 3, 'PT', 'Ping-tung'),
(80617, 2, 47170, 3, 'TU', 'Tai-chung City'),
(80618, 2, 47170, 3, 'TI', 'Tai-nan City'),
(80619, 2, 47170, 3, 'TC', 'Tai-pei City'),
(80620, 2, 47170, 3, 'TT', 'Tai-tung'),
(80621, 2, 47170, 3, 'TY', 'Tao-yuan'),
(80622, 2, 47170, 3, 'YL', 'Yun-lin');

--  'Tanzania, United Republic of', 'TZ', 'TZA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80701, 2, 47180, 3, 'AS', 'Arusha'),
(80702, 2, 47180, 3, 'DS', 'Dar es Salaam'),
(80703, 2, 47180, 3, 'DO', 'Dodoma'),
(80704, 2, 47180, 3, 'GE', 'Geita'),
(80705, 2, 47180, 3, 'IG', 'Iringa'),
(80706, 2, 47180, 3, 'KG', 'Kagera'),
(80707, 2, 47180, 3, 'KA', 'Katavi'),
(80708, 2, 47180, 3, 'KM', 'Kigoma'),
(80709, 2, 47180, 3, 'KL', 'Kilimanjaro'),
(80710, 2, 47180, 3, 'LI', 'Lindi'),
(80711, 2, 47180, 3, 'MY', 'Manyara'),
(80712, 2, 47180, 3, 'MA', 'Mara'),
(80713, 2, 47180, 3, 'MB', 'Mbeya'),
(80714, 2, 47180, 3, 'MO', 'Morogoro'),
(80715, 2, 47180, 3, 'MT', 'Mtwara'),
(80716, 2, 47180, 3, 'MZ', 'Mwanza'),
(80717, 2, 47180, 3, 'NJ', 'Njombe'),
(80718, 2, 47180, 3, 'PN', 'Pemba North'),
(80719, 2, 47180, 3, 'PS', 'Pemba South'),
(80720, 2, 47180, 3, 'PW', 'Pwani'),
(80721, 2, 47180, 3, 'RU', 'Rukwa'),
(80722, 2, 47180, 3, 'RV', 'Ruvuma'),
(80723, 2, 47180, 3, 'SY', 'Shinyanga'),
(80724, 2, 47180, 3, 'SI', 'Simiyu'),
(80725, 2, 47180, 3, 'SD', 'Singida'),
(80726, 2, 47180, 3, 'TB', 'Tabora'),
(80727, 2, 47180, 3, 'TN', 'Tanga'),
(80728, 2, 47180, 3, 'ZN', 'Zanzibar North'),
(80729, 2, 47180, 3, 'ZS', 'Zanzibar South and Central'),
(80730, 2, 47180, 3, 'ZW', 'Zanzibar West');

--  'Ukraine', 'UA', 'UKR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80801, 2, 553, 3, 'CK', 'Cherkassy'),
(80802, 2, 553, 3, 'CH', 'Chernighov'),
(80803, 2, 553, 3, 'CV', 'Chernovtsy'),
(80804, 2, 553, 3, 'KR', 'Crimea'),
(80805, 2, 553, 3, 'DP', 'Dnepropetrovsk'),
(80806, 2, 553, 3, 'DT', 'Donetsk'),
(80807, 2, 553, 3, 'IF', 'Ivano-Frankovsk'),
(80808, 2, 553, 3, 'KK', 'Kharkov'),
(80809, 2, 553, 3, 'KS', 'Kherson'),
(80810, 2, 553, 3, 'KM', 'Khmelnitskiy'),
(80811, 2, 553, 3, 'KV', 'Kiev region'),
(80812, 2, 553, 3, 'KV', 'Kiev City'),
(80813, 2, 553, 3, 'KH', 'Kirovograd'),
(80814, 2, 553, 3, 'LH', 'Lugansk'),
(80815, 2, 553, 3, 'LV', 'Lvov'),
(80816, 2, 553, 3, 'MY', 'Nikolayev'),
(80817, 2, 553, 3, 'OD', 'Odessa'),
(80818, 2, 553, 3, 'PL', 'Poltava'),
(80819, 2, 553, 3, 'RV', 'Rovno'),
(80820, 2, 553, 3, 'SC', 'Sebastopol'),
(80821, 2, 553, 3, 'SM', 'Sumy'),
(80822, 2, 553, 3, 'TP', 'Ternopol'),
(80823, 2, 553, 3, 'ZK', 'Transcarpatia'),
(80824, 2, 553, 3, 'VI', 'Vinnytsa'),
(80825, 2, 553, 3, 'VO', 'Volyn'),
(80826, 2, 553, 3, 'ZP', 'Zaporozhye'),
(80827, 2, 553, 3, 'ZT', 'Zhytomir');

--  'Uganda', 'UG', 'UGA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(80901, 2, 47190, 3, 'AI', 'Abim'),
(80902, 2, 47190, 3, 'AD', 'Adjumani'),
(80903, 2, 47190, 3, 'AG', 'Agago'),
(80904, 2, 47190, 3, 'AL', 'Alebtong'),
(80905, 2, 47190, 3, 'AT', 'Amolatar'),
(80906, 2, 47190, 3, 'AZ', 'Amudat'),
(80907, 2, 47190, 3, 'AM', 'Amuria'),
(80908, 2, 47190, 3, 'AY', 'Amuru'),
(80909, 2, 47190, 3, 'AQ', 'Apac'),
(80910, 2, 47190, 3, 'AX', 'Arua'),
(80911, 2, 47190, 3, 'BD', 'Budaka'),
(80912, 2, 47190, 3, 'BA', 'Bududa'),
(80913, 2, 47190, 3, 'BI', 'Bugiri'),
(80914, 2, 47190, 3, 'BH', 'Buhweju'),
(80915, 2, 47190, 3, 'BZ', 'Buikwe'),
(80916, 2, 47190, 3, 'BE', 'Bukedea'),
(80917, 2, 47190, 3, 'BM', 'Bukomansimbi'),
(80918, 2, 47190, 3, 'BW', 'Bukwo'),
(80919, 2, 47190, 3, 'BB', 'Bulambuli'),
(80920, 2, 47190, 3, 'BL', 'Buliisa'),
(80921, 2, 47190, 3, 'BX', 'Bundibugyo'),
(80922, 2, 47190, 3, 'BC', 'Bushenyi'),
(80923, 2, 47190, 3, 'BU', 'Busia'),
(80924, 2, 47190, 3, 'BJ', 'Butaleja'),
(80925, 2, 47190, 3, 'BT', 'Butambala'),
(80926, 2, 47190, 3, 'BV', 'Buvuma'),
(80927, 2, 47190, 3, 'BY', 'Buyende'),
(80928, 2, 47190, 3, 'DO', 'Dokolo'),
(80929, 2, 47190, 3, 'GM', 'Gomba'),
(80930, 2, 47190, 3, 'GL', 'Gulu'),
(80931, 2, 47190, 3, 'HO', 'Hoima'),
(80932, 2, 47190, 3, 'IB', 'Ibanda'),
(80933, 2, 47190, 3, 'IC', 'Iganga'),
(80934, 2, 47190, 3, 'NG', 'Isingiro'),
(80935, 2, 47190, 3, 'JI', 'Jinja'),
(80936, 2, 47190, 3, 'AB', 'Kaabong'),
(80937, 2, 47190, 3, 'KA', 'Kabale'),
(80938, 2, 47190, 3, 'BR', 'Kabarole'),
(80939, 2, 47190, 3, 'KD', 'Kaberamaido'),
(80940, 2, 47190, 3, 'KN', 'Kalangala'),
(80941, 2, 47190, 3, 'RO', 'Kaliro'),
(80942, 2, 47190, 3, 'QA', 'Kalungu'),
(80943, 2, 47190, 3, 'KM', 'Kampala'),
(80944, 2, 47190, 3, 'KU', 'Kamuli'),
(80945, 2, 47190, 3, 'KE', 'Kamwenge'),
(80946, 2, 47190, 3, 'UU', 'Kanungu'),
(80947, 2, 47190, 3, 'QP', 'Kapchorwa'),
(80948, 2, 47190, 3, 'KS', 'Kasese'),
(80949, 2, 47190, 3, 'KK', 'Katakwi'),
(80950, 2, 47190, 3, 'KY', 'Kayunga'),
(80951, 2, 47190, 3, 'KI', 'Kibaale'),
(80952, 2, 47190, 3, 'QO', 'Kiboga'),
(80953, 2, 47190, 3, 'QB', 'Kibuku'),
(80954, 2, 47190, 3, 'KH', 'Kiruhuura'),
(80955, 2, 47190, 3, 'QD', 'Kiryandongo'),
(80956, 2, 47190, 3, 'KR', 'Kisoro'),
(80957, 2, 47190, 3, 'QT', 'Kitgum'),
(80958, 2, 47190, 3, 'OK', 'Koboko'),
(80959, 2, 47190, 3, 'QL', 'Kole'),
(80960, 2, 47190, 3, 'KF', 'Kotido'),
(80961, 2, 47190, 3, 'QM', 'Kumi'),
(80962, 2, 47190, 3, 'QW', 'Kween'),
(80963, 2, 47190, 3, 'QZ', 'Kyankwanzi'),
(80964, 2, 47190, 3, 'QG', 'Kyegegwa'),
(80965, 2, 47190, 3, 'QJ', 'Kyenjojo'),
(80966, 2, 47190, 3, 'LM', 'Lamwo'),
(80967, 2, 47190, 3, 'LL', 'Lira'),
(80968, 2, 47190, 3, 'LK', 'Luuka'),
(80969, 2, 47190, 3, 'LW', 'Luwero'),
(80970, 2, 47190, 3, 'LE', 'Lwengo'),
(80971, 2, 47190, 3, 'LY', 'Lyantonde'),
(80972, 2, 47190, 3, 'MW', 'Manafwa'),
(80973, 2, 47190, 3, 'MQ', 'Masaka'),
(80974, 2, 47190, 3, 'MZ', 'Masindi'),
(80975, 2, 47190, 3, 'MG', 'Mayuge'),
(80976, 2, 47190, 3, 'ME', 'Mbale'),
(80977, 2, 47190, 3, 'RR', 'Mbarara'),
(80978, 2, 47190, 3, 'MM', 'Mitoma'),
(80979, 2, 47190, 3, 'TY', 'Mityana'),
(80980, 2, 47190, 3, 'MX', 'Moroto'),
(80981, 2, 47190, 3, 'MY', 'Moyo'),
(80982, 2, 47190, 3, 'MJ', 'Mpigi'),
(80983, 2, 47190, 3, 'MD', 'Mubende'),
(80984, 2, 47190, 3, 'MV', 'Mukono'),
(80985, 2, 47190, 3, 'NI', 'Nakapiripirit'),
(80986, 2, 47190, 3, 'NK', 'Nakaseke'),
(80987, 2, 47190, 3, 'NA', 'Nakasongola'),
(80988, 2, 47190, 3, 'NY', 'Namayingo'),
(80989, 2, 47190, 3, 'BK', 'Namutumba'),
(80990, 2, 47190, 3, 'NQ', 'Napak'),
(80991, 2, 47190, 3, 'NB', 'Nebbi'),
(80992, 2, 47190, 3, 'NR', 'Ngora'),
(80993, 2, 47190, 3, 'NO', 'Ntoroko'),
(80994, 2, 47190, 3, 'NT', 'Ntungamo'),
(80995, 2, 47190, 3, 'NW', 'Nwoya'),
(80996, 2, 47190, 3, 'MH', 'Nyadri'),
(80997, 2, 47190, 3, 'OT', 'Otuke'),
(80998, 2, 47190, 3, 'OY', 'Oyam'),
(80999, 2, 47190, 3, 'PR', 'Pader'),
(81000, 2, 47190, 3, 'PS', 'Pallisa'),
(81001, 2, 47190, 3, 'RI', 'Rakai'),
(81002, 2, 47190, 3, 'RZ', 'Rubirizi'),
(81003, 2, 47190, 3, 'RK', 'Rukungiri'),
(81004, 2, 47190, 3, 'SE', 'Sembabule'),
(81005, 2, 47190, 3, 'SX', 'Serere'),
(81006, 2, 47190, 3, 'SH', 'Sheema'),
(81007, 2, 47190, 3, 'SK', 'Sironko'),
(81008, 2, 47190, 3, 'ST', 'Soroti'),
(81009, 2, 47190, 3, 'TR', 'Tororo'),
(81010, 2, 47190, 3, 'WA', 'Wakiso'),
(81011, 2, 47190, 3, 'YU', 'Yumbe'),
(81012, 2, 47190, 3, 'ZO', 'Zombo');

-- 'UK', 'United Kingdom'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(81101, 2, 47200, 3, 'CI', 'Channel Islands'),
(81102, 2, 47200, 3, 'EN', 'England'),
(81103, 2, 47200, 3, 'IM', 'Isle Of Man'),
(81104, 2, 47200, 3, 'NI', 'Northern Ireland'),
(81105, 2, 47200, 3, 'SC', 'Scotland'),
(81106, 2, 47200, 3, 'WL', 'Wales');

--  'United States Minor Outlying Islands', 'UM', 'UMI'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(81201, 2, 47210, 3, 'FQ', 'Baker Island'),
(81202, 2, 47210, 3, 'HQ', 'Howland Island'),
(81203, 2, 47210, 3, 'DQ', 'Jarvis Island'),
(81204, 2, 47210, 3, 'JQ', 'Johnston Atoll'),
(81205, 2, 47210, 3, 'KQ', 'Kingman Reef'),
(81206, 2, 47210, 3, 'MQ', 'Midway Atoll'),
(81207, 2, 47210, 3, 'BQ', 'Navassa Island'),
(81208, 2, 47210, 3, 'LQ', 'Palmyra Atoll'),
(81209, 2, 47210, 3, 'WQ', 'Wake Island');

--  'United States', 'US', 'USA'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(81301, 2, 535, 3, 'AL', 'Alabama'),
(81302, 2, 535, 3, 'AK', 'Alaska'),
(81303, 2, 535, 3, 'AZ', 'Arizona'),
(81304, 2, 535, 3, 'AR', 'Arkansas'),
(81305, 2, 535, 3, 'CA', 'California'),
(81306, 2, 535, 3, 'CO', 'Colorado'),
(81307, 2, 535, 3, 'CT', 'Connecticut'),
(81308, 2, 535, 3, 'DE', 'Delaware'),
(81309, 2, 535, 3, 'DC', 'District of Columbia'),
(81310, 2, 535, 3, 'FL', 'Florida'),
(81311, 2, 535, 3, 'GA', 'Georgia'),
(81312, 2, 535, 3, 'HI', 'Hawaii'),
(81313, 2, 535, 3, 'ID', 'Idaho'),
(81314, 2, 535, 3, 'IL', 'Illinois'),
(81315, 2, 535, 3, 'IN', 'Indiana'),
(81316, 2, 535, 3, 'IA', 'Iowa'),
(81317, 2, 535, 3, 'KS', 'Kansas'),
(81318, 2, 535, 3, 'KY', 'Kentucky'),
(81319, 2, 535, 3, 'LA', 'Louisiana'),
(81320, 2, 535, 3, 'ME', 'Maine'),
(81321, 2, 535, 3, 'MD', 'Maryland'),
(81322, 2, 535, 3, 'MA', 'Massachusetts'),
(81323, 2, 535, 3, 'MI', 'Michigan'),
(81324, 2, 535, 3, 'MN', 'Minnesota'),
(81325, 2, 535, 3, 'MS', 'Mississippi'),
(81326, 2, 535, 3, 'MO', 'Missouri'),
(81327, 2, 535, 3, 'MT', 'Montana'),
(81328, 2, 535, 3, 'NE', 'Nebraska'),
(81329, 2, 535, 3, 'NV', 'Nevada'),
(81330, 2, 535, 3, 'NH', 'New Hampshire'),
(81331, 2, 535, 3, 'NJ', 'New Jersey'),
(81332, 2, 535, 3, 'NM', 'New Mexico'),
(81333, 2, 535, 3, 'NY', 'New York'),
(81334, 2, 535, 3, 'NC', 'North Carolina'),
(81335, 2, 535, 3, 'ND', 'North Dakota'),
(81336, 2, 535, 3, 'OH', 'Ohio'),
(81337, 2, 535, 3, 'OK', 'Oklahoma'),
(81338, 2, 535, 3, 'OR', 'Oregon'),
(81339, 2, 535, 3, 'PA', 'Pennsylvania'),
(81340, 2, 535, 3, 'RI', 'Rhode Island'),
(81341, 2, 535, 3, 'SC', 'South Carolina'),
(81342, 2, 535, 3, 'SD', 'South Dakota'),
(81343, 2, 535, 3, 'TN', 'Tennessee'),
(81344, 2, 535, 3, 'TX', 'Texas'),
(81345, 2, 535, 3, 'UT', 'Utah'),
(81346, 2, 535, 3, 'VT', 'Vermont'),
(81347, 2, 535, 3, 'VA', 'Virginia'),
(81348, 2, 535, 3, 'WA', 'Washington'),
(81349, 2, 535, 3, 'WV', 'West Virginia'),
(81350, 2, 535, 3, 'WI', 'Wisconsin'),
(81351, 2, 535, 3, 'WY', 'Wyoming'),
(81352, 2, 535, 3, 'AS', 'American Samoa'),
(81353, 2, 535, 3, 'AF', 'Armed Forces Africa'),
(81354, 2, 535, 3, 'AA', 'Armed Forces Americas'),
(81355, 2, 535, 3, 'AC', 'Armed Forces Canada'),
(81356, 2, 535, 3, 'AE', 'Armed Forces Europe'),
(81357, 2, 535, 3, 'AM', 'Armed Forces Middle East'),
(81358, 2, 535, 3, 'AP', 'Armed Forces Pacific'),
(81359, 2, 535, 3, 'FM', 'Federated States Of Micronesia'),
(81360, 2, 535, 3, 'GU', 'Guam'),
(81361, 2, 535, 3, 'MH', 'Marshall Islands'),
(81362, 2, 535, 3, 'MP', 'Northern Mariana Islands'),
(81363, 2, 535, 3, 'PW', 'Palau'),
(81364, 2, 535, 3, 'PR', 'Puerto Rico'),
(81365, 2, 535, 3, 'VI', 'Virgin Islands');

--  'Uruguay', 'UY', 'URY'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(81401, 2, 47220, 3, 'AR', 'Artigas'),
(81402, 2, 47220, 3, 'CA', 'Canelones'),
(81403, 2, 47220, 3, 'CL', 'Cerro Largo'),
(81404, 2, 47220, 3, 'CO', 'Colonia'),
(81405, 2, 47220, 3, 'DU', 'Durazno'),
(81406, 2, 47220, 3, 'FS', 'Flores'),
(81407, 2, 47220, 3, 'FA', 'Florida'),
(81408, 2, 47220, 3, 'LA', 'Lavalleja'),
(81409, 2, 47220, 3, 'MA', 'Maldonado'),
(81410, 2, 47220, 3, 'MO', 'Montevideo'),
(81411, 2, 47220, 3, 'PA', 'Paysandu'),
(81412, 2, 47220, 3, 'RN', 'Rio Negro'),
(81413, 2, 47220, 3, 'RV', 'Rivera'),
(81414, 2, 47220, 3, 'RO', 'Rocha'),
(81415, 2, 47220, 3, 'SA', 'Salto'),
(81416, 2, 47220, 3, 'SJ', 'San Jose'),
(81417, 2, 47220, 3, 'SO', 'Soriano'),
(81418, 2, 47220, 3, 'TA', 'Tacuarembo'),
(81419, 2, 47220, 3, 'TT', 'Treinta y Tres');

--  'Uzbekistan', 'UZ', 'UZB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(81501, 2, 47230, 3, 'AN', 'Andijon'),
(81502, 2, 47230, 3, 'BU', 'Buxoro'),
(81503, 2, 47230, 3, 'FA', 'Farghona'),
(81504, 2, 47230, 3, 'JI', 'Jizzax'),
(81505, 2, 47230, 3, 'QR', 'Karakalpakstan'),
(81506, 2, 47230, 3, 'QA', 'Kashkadarya'),
(81507, 2, 47230, 3, 'NG', 'Namangan'),
(81508, 2, 47230, 3, 'NW', 'Navoiy'),
(81509, 2, 47230, 3, 'SA', 'Samarqand'),
(81510, 2, 47230, 3, 'SI', 'Sirdaryo'),
(81511, 2, 47230, 3, 'SU', 'Surxondaryo'),
(81512, 2, 47230, 3, 'TA', 'Tashkent Region'),
(81513, 2, 47230, 3, 'TK', 'Tashkent City'),
(81514, 2, 47230, 3, 'XO', 'Xorazm');

--  'Vatican City State (Holy See)', 'VA', 'VAT'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (81601, 2, 47240, 3, '', ''),

--  'Saint Vincent and the Grenadines', 'VC', 'VCT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(81701, 2, 47250, 3, 'CH', 'Charlotte'),
(81702, 2, 47250, 3, 'GT', 'Grenadines'),
(81703, 2, 47250, 3, 'AN', 'Saint Andrew'),
(81704, 2, 47250, 3, 'DA', 'Saint David'),
(81705, 2, 47250, 3, 'GE', 'Saint George'),
(81706, 2, 47250, 3, 'PA', 'Saint Patrick');

--  'Venezuela', 'VE', 'VEN'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(81801, 2, 47260, 3, 'AM', 'Amazonas'),
(81802, 2, 47260, 3, 'AN', 'Anzoategui'),
(81803, 2, 47260, 3, 'AP', 'Apure'),
(81804, 2, 47260, 3, 'AR', 'Aragua'),
(81805, 2, 47260, 3, 'BA', 'Barinas'),
(81806, 2, 47260, 3, 'BO', 'Bolivar'),
(81807, 2, 47260, 3, 'CA', 'Carabobo'),
(81808, 2, 47260, 3, 'CO', 'Cojedes'),
(81809, 2, 47260, 3, 'DA', 'Delta Amacuro'),
(81810, 2, 47260, 3, 'DP', 'Dependencias Federales'),
(81811, 2, 47260, 3, 'DF', 'Caracas, Distrito Capital'),
(81812, 2, 47260, 3, 'FA', 'Falcon'),
(81813, 2, 47260, 3, 'GU', 'Guarico'),
(81814, 2, 47260, 3, 'LA', 'Lara'),
(81815, 2, 47260, 3, 'ME', 'Merida'),
(81816, 2, 47260, 3, 'MI', 'Miranda'),
(81817, 2, 47260, 3, 'MO', 'Monagas'),
(81818, 2, 47260, 3, 'NE', 'Nueva Esparta'),
(81819, 2, 47260, 3, 'PO', 'Portuguesa'),
(81820, 2, 47260, 3, 'SU', 'Sucre'),
(81821, 2, 47260, 3, 'TA', 'Tachira'),
(81822, 2, 47260, 3, 'TR', 'Trujillo'),
(81823, 2, 47260, 3, 'VA', 'Vargas'),
(81824, 2, 47260, 3, 'YA', 'Yaracuy'),
(81825, 2, 47260, 3, 'ZU', 'Zulia');

--  'Virgin Islands (British)', 'VG', 'VGB'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (81901, 2, 47270, 3, '', ''),

--  'Virgin Islands (U.S.)', 'VI', 'VIR'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(82001, 2, 47280, 3, 'SC', 'Saint Croix'),
(82002, 2, 47280, 3, 'SJ', 'Saint John'),
(82003, 2, 47280, 3, 'ST', 'Saint Thomas');

--  'Viet Nam', 'VN', 'VNM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(82101, 2, 47290, 3, 'AG', 'An Giang'),
(82102, 2, 47290, 3, 'BK', 'Bac Can'),
(82103, 2, 47290, 3, 'BG', 'Bac Giang'),
(82104, 2, 47290, 3, 'BL', 'Bac Lieu'),
(82105, 2, 47290, 3, 'BN', 'Bac Ninh'),
(82106, 2, 47290, 3, 'BV', 'Ba Ria-Vung Tau'),
(82107, 2, 47290, 3, 'BR', 'Ben Tre'),
(82108, 2, 47290, 3, 'BD', 'Binh Dinh'),
(82109, 2, 47290, 3, 'BI', 'Binh Duong'),
(82110, 2, 47290, 3, 'BP', 'Binh Phuoc'),
(82111, 2, 47290, 3, 'BU', 'Binh Thuan'),
(82112, 2, 47290, 3, 'CM', 'Ca Mau'),
(82113, 2, 47290, 3, 'CN', 'Can Tho'),
(82114, 2, 47290, 3, 'CB', 'Cao Bang'),
(82115, 2, 47290, 3, 'DC', 'Dak Lak'),
(82116, 2, 47290, 3, 'DO', 'Dak Nong'),
(82117, 2, 47290, 3, 'DA', 'Da Nang'),
(82118, 2, 47290, 3, 'DB', 'Dien Bien'),
(82119, 2, 47290, 3, 'DN', 'Dong Nai'),
(82120, 2, 47290, 3, 'DT', 'Dong Thap'),
(82121, 2, 47290, 3, 'GL', 'Gia Lai'),
(82122, 2, 47290, 3, 'HG', 'Ha Giang'),
(82123, 2, 47290, 3, 'HD', 'Hai Duong'),
(82124, 2, 47290, 3, 'HP', 'Hai Phong'),
(82125, 2, 47290, 3, 'HM', 'Ha Nam'),
(82126, 2, 47290, 3, 'HI', 'Ha Noi'),
(82127, 2, 47290, 3, 'HT', 'Ha Tinh'),
(82128, 2, 47290, 3, 'HU', 'Hau Giang'),
(82129, 2, 47290, 3, 'HO', 'Hoa Binh'),
(82130, 2, 47290, 3, 'HC', 'Ho Chin Minh'),
(82131, 2, 47290, 3, 'HY', 'Hung Yen'),
(82132, 2, 47290, 3, 'KH', 'Khanh Hoa'),
(82133, 2, 47290, 3, 'KG', 'Kien Giang'),
(82134, 2, 47290, 3, 'KT', 'Kon Tum'),
(82135, 2, 47290, 3, 'LI', 'Lai Chau'),
(82136, 2, 47290, 3, 'LD', 'Lam Dong'),
(82137, 2, 47290, 3, 'LS', 'Lang Son'),
(82138, 2, 47290, 3, 'LO', 'Lao Cai'),
(82139, 2, 47290, 3, 'LA', 'Long An'),
(82140, 2, 47290, 3, 'ND', 'Nam Dinh'),
(82141, 2, 47290, 3, 'NA', 'Nghe An'),
(82142, 2, 47290, 3, 'NB', 'Ninh Binh'),
(82143, 2, 47290, 3, 'NT', 'Ninh Thuan'),
(82144, 2, 47290, 3, 'PT', 'Phu Tho'),
(82145, 2, 47290, 3, 'PY', 'Phu Yen'),
(82146, 2, 47290, 3, 'QB', 'Quang Binh'),
(82147, 2, 47290, 3, 'QM', 'Quang Nam'),
(82148, 2, 47290, 3, 'QG', 'Quang Ngai'),
(82149, 2, 47290, 3, 'QN', 'Quang Ninh'),
(82150, 2, 47290, 3, 'QT', 'Quang Tri'),
(82151, 2, 47290, 3, 'ST', 'Soc Trang'),
(82152, 2, 47290, 3, 'SL', 'Son La'),
(82153, 2, 47290, 3, 'TN', 'Tay Ninh'),
(82154, 2, 47290, 3, 'TB', 'Thai Binh'),
(82155, 2, 47290, 3, 'TY', 'Thai Nguyen'),
(82156, 2, 47290, 3, 'TH', 'Thanh Hoa'),
(82157, 2, 47290, 3, 'TT', 'Thua Thien-Hue'),
(82158, 2, 47290, 3, 'TG', 'Tien Giang'),
(82159, 2, 47290, 3, 'TV', 'Tra Vinh'),
(82160, 2, 47290, 3, 'TQ', 'Tuyen Quang'),
(82161, 2, 47290, 3, 'VL', 'Vinh Long'),
(82162, 2, 47290, 3, 'VC', 'Vinh Phuc'),
(82163, 2, 47290, 3, 'YB', 'Yen Bai');

--  'Vanuatu', 'VU', 'VUT'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(82201, 2, 47300, 3, 'ML', 'Malampa'),
(82202, 2, 47300, 3, 'PM', 'Penama'),
(82203, 2, 47300, 3, 'SN', 'Sanma'),
(82204, 2, 47300, 3, 'SE', 'Shefa'),
(82205, 2, 47300, 3, 'TF', 'Tafea'),
(82206, 2, 47300, 3, 'TR', 'Torba');

--  'Wallis and Futuna Islands', 'WF', 'WLF'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(82301, 2, 47310, 3, 'AL', 'Alo'),
(82302, 2, 47310, 3, 'SI', 'Sigave'),
(82303, 2, 47310, 3, 'UV', 'Wallis');

--  'Samoa', 'WS', 'WSM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(82401, 2, 47320, 3, 'AA', 'A\'ana'),
(82402, 2, 47320, 3, 'AA', 'Aiga-i-le-Tai'),
(82403, 2, 47320, 3, 'AT', 'Atua'),
(82404, 2, 47320, 3, 'FA', 'Fa\'asaleleaga'),
(82405, 2, 47320, 3, 'GE', 'Gaga\'emauga'),
(82406, 2, 47320, 3, 'GI', 'Gagaifomauga'),
(82407, 2, 47320, 3, 'PA', 'Palauli'),
(82408, 2, 47320, 3, 'SA', 'Satupa\'itea'),
(82409, 2, 47320, 3, 'TU', 'Tuamasaga'),
(82410, 2, 47320, 3, 'VF', 'Va\'a-o-Fonoti'),
(82411, 2, 47320, 3, 'VS', 'Vaisigano');

--  'Yemen', 'YE', 'YEM'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(82501, 2, 47330, 3, 'AB', 'Abyan'),
(82502, 2, 47330, 3, 'AD', 'Adan'),
(82503, 2, 47330, 3, 'BA', 'Al Bayda'),
(82504, 2, 47330, 3, 'DA', 'Ad Dali'),
(82505, 2, 47330, 3, 'HU', 'Al Hudaydah'),
(82506, 2, 47330, 3, 'JA', 'Al Jawf'),
(82507, 2, 47330, 3, 'MR', 'Al Mahrah'),
(82508, 2, 47330, 3, 'MW', 'Al Mahwit'),
(82509, 2, 47330, 3, 'AM', 'Amran'),
(82510, 2, 47330, 3, 'DH', 'Dhamar'),
(82511, 2, 47330, 3, 'HA', 'Hadramawt'),
(82512, 2, 47330, 3, 'HJ', 'Hajjah'),
(82513, 2, 47330, 3, 'IB', 'Ibb'),
(82514, 2, 47330, 3, 'LA', 'Lahij'),
(82515, 2, 47330, 3, 'MA', 'Ma\'rib'),
(82516, 2, 47330, 3, 'RA', 'Raymah'),
(82517, 2, 47330, 3, 'SD', 'Sa\'dah'),
(82518, 2, 47330, 3, 'NA', 'San\'a'),
(82519, 2, 47330, 3, 'SA', 'San\'a City'),
(82520, 2, 47330, 3, 'SH', 'Shabwah'),
(82521, 2, 47330, 3, 'SO', 'Socotra'),
(82522, 2, 47330, 3, 'TA', 'Ta\'izz');

--  'Mayotte', 'YT', 'MYT'
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (82601, 2, 47340, 3, '', ''),

--  'Yugoslavia', 'YU', 'YUG'
--  'YU', 'KOS', 'Kosovo',
-- INSERT INTO `pre_common_district`
-- (`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
-- (82701, 2, 47350, 3, '', ''),

--  'South Africa', 'ZA', 'ZAF'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(82801, 2, 564, 3, 'EC', 'Eastern Cape'),
(82802, 2, 564, 3, 'FS', 'Free State'),
(82803, 2, 564, 3, 'GT', 'Gauteng'),
(82804, 2, 564, 3, 'NL', 'KwaZulu-Natal'),
(82805, 2, 564, 3, 'NP', 'Limpopo'),
(82806, 2, 564, 3, 'MP', 'Mpumalanga'),
(82807, 2, 564, 3, 'NC', 'Northern Cape'),
(82808, 2, 564, 3, 'NW', 'North West'),
(82809, 2, 564, 3, 'WC', 'Western Cape');

--  'Zambia', 'ZM', 'ZMB'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(82901, 2, 47360, 3, 'CE', 'Central'),
(82902, 2, 47360, 3, 'CO', 'Copperbelt'),
(82903, 2, 47360, 3, 'ES', 'Eastern'),
(82904, 2, 47360, 3, 'LP', 'Luapula'),
(82905, 2, 47360, 3, 'LS', 'Lusaka'),
(82906, 2, 47360, 3, 'MU', 'Muchinga'),
(82907, 2, 47360, 3, 'NR', 'Northern'),
(82908, 2, 47360, 3, 'NW', 'North-Western'),
(82909, 2, 47360, 3, 'SO', 'Southern'),
(82910, 2, 47360, 3, 'WE', 'Western');

--  'Zaire', 'ZR', 'ZAR'
-- Obsolete, renamed to Democratic Republic of Congo (CD)
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(83001, 2, 47370, 3, 'BN', 'Bandundu'),
(83002, 2, 47370, 3, 'BC', 'Bas-Congo'),
(83003, 2, 47370, 3, 'EQ', 'Equateur'),
(83004, 2, 47370, 3, 'KC', 'Kasai-Occidental'),
(83005, 2, 47370, 3, 'KR', 'Kasai-Oriental'),
(83006, 2, 47370, 3, 'KT', 'Katanga'),
(83007, 2, 47370, 3, 'KN', 'Kinshasa City'),
(83008, 2, 47370, 3, 'MN', 'Maniema'),
(83009, 2, 47370, 3, 'NK', 'Nord-Kivu'),
(83010, 2, 47370, 3, 'HC', 'Orientale'),
(83011, 2, 47370, 3, 'SK', 'Sud-Kivu');

--  'Zimbabwe', 'ZW', 'ZWE'
INSERT INTO `pre_common_district`
(`id`, `level`, `upid`, `usetype`, `code`, `name`) VALUES
(83101, 2, 47380, 3, 'BU', 'Bulawayo'),
(83102, 2, 47380, 3, 'HA', 'Harare'),
(83103, 2, 47380, 3, 'MA', 'Manicaland'),
(83104, 2, 47380, 3, 'MC', 'Mashonaland Central'),
(83105, 2, 47380, 3, 'ME', 'Mashonaland East'),
(83106, 2, 47380, 3, 'MW', 'Mashonaland West'),
(83107, 2, 47380, 3, 'MV', 'Masvingo'),
(83108, 2, 47380, 3, 'MN', 'Matabeleland North'),
(83109, 2, 47380, 3, 'MS', 'Matabeleland South'),
(83110, 2, 47380, 3, 'MI', 'Midlands');

-- 11) SET AUTO_INCREMENT VALUE
ALTER TABLE `pre_common_district` AUTO_INCREMENT =100001;
