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

--  'Abkhazia', 'AB', 'ABK'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45120, 3, 'GG', 'Gagra'),
(2, 45120, 3, 'GD', 'Gudauta'),
(2, 45120, 3, 'SH', 'Sukhum'),
(2, 45120, 3, 'GR', 'Gulripsh'),
(2, 45120, 3, 'OC', 'Ochamchira'),
(2, 45120, 3, 'TQ', 'Tquarchal'),
(2, 45120, 3, 'GL', 'Gali');

--  'Andorra', 'AD', 'AND'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45130, 3, 'AN', 'Andorra la Vella'),
(2, 45130, 3, 'CA', 'Canillo'),
(2, 45130, 3, 'EN', 'Encamp'),
(2, 45130, 3, 'EE', 'Escaldes-Engordany'),
(2, 45130, 3, 'MA', 'La Massana'),
(2, 45130, 3, 'OR', 'Ordino'),
(2, 45130, 3, 'JL', 'Sant Julia de Loria');

--  'United Arab Emirates', 'AE', 'ARE'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45140, 3, 'AZ', 'Abu Dhaby'),
(2, 45140, 3, 'AJ', 'Ajman'),
(2, 45140, 3, 'FU', 'Al Fujayrah'),
(2, 45140, 3, 'SH', 'Ash Shariqah'),
(2, 45140, 3, 'DU', 'Dubayy'),
(2, 45140, 3, 'RK', 'R\'as al Khaymah'),
(2, 45140, 3, 'UQ', 'Umm al Qaywayn');

--  'Afghanistan', 'AF', 'AFG'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45150, 3, 'BDS', 'Badakhshan'),
(2, 45150, 3, 'BDG', 'Badghis'),
(2, 45150, 3, 'BGL', 'Baghlan'),
(2, 45150, 3, 'BAL', 'Balkh'),
(2, 45150, 3, 'BAM', 'Bamian'),
(2, 45150, 3, 'FRA', 'Farah'),
(2, 45150, 3, 'FYB', 'Faryab'),
(2, 45150, 3, 'GHA', 'Ghazni'),
(2, 45150, 3, 'GHO', 'Ghowr'),
(2, 45150, 3, 'HEL', 'Helmand'),
(2, 45150, 3, 'HER', 'Herat'),
(2, 45150, 3, 'JOW', 'Jowzjan'),
(2, 45150, 3, 'KAB', 'Kabul'),
(2, 45150, 3, 'KAN', 'Kandahar'),
(2, 45150, 3, 'KAP', 'Kapisa'),
(2, 45150, 3, 'KHO', 'Khost'),
(2, 45150, 3, 'KNR', 'Konar'),
(2, 45150, 3, 'KDZ', 'Kondoz'),
(2, 45150, 3, 'LAG', 'Laghman'),
(2, 45150, 3, 'LOW', 'Lowgar'),
(2, 45150, 3, 'NAN', 'Nangrahar'),
(2, 45150, 3, 'NIM', 'Nimruz'),
(2, 45150, 3, 'NUR', 'Nurestan'),
(2, 45150, 3, 'ORU', 'Oruzgan'),
(2, 45150, 3, 'PIA', 'Paktia'),
(2, 45150, 3, 'PKA', 'Paktika'),
(2, 45150, 3, 'PAR', 'Parwan'),
(2, 45150, 3, 'SAM', 'Samangan'),
(2, 45150, 3, 'SAR', 'Sar-e Pol'),
(2, 45150, 3, 'TAK', 'Takhar'),
(2, 45150, 3, 'WAR', 'Wardak'),
(2, 45150, 3, 'ZAB', 'Zabol');

--  'Antigua and Barbuda', 'AG', 'ATG'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45160, 3, 'BB', 'Barbuda'),
(2, 45160, 3, 'RD', 'Redonda'),
(2, 45160, 3, 'GE', 'Saint George'),
(2, 45160, 3, 'JO', 'Saint John'),
(2, 45160, 3, 'MA', 'Saint Mary'),
(2, 45160, 3, 'PA', 'Saint Paul'),
(2, 45160, 3, 'PE', 'Saint Peter'),
(2, 45160, 3, 'PH', 'Saint Philip');

--  'Anguilla', 'AI', 'AIA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45170, 3, 'BP', 'Blowing Point'),
(2, 45170, 3, 'EE', 'East End'),
(2, 45170, 3, 'GH', 'George Hill'),
(2, 45170, 3, 'IH', 'Island Harbour'),
(2, 45170, 3, 'NH', 'North Hill'),
(2, 45170, 3, 'NS', 'North Side'),
(2, 45170, 3, 'SG', 'Sandy Ground'),
(2, 45170, 3, 'SH', 'Sandy Hill'),
(2, 45170, 3, 'SO', 'South Hill'),
(2, 45170, 3, 'ST', 'Stoney Ground'),
(2, 45170, 3, 'TF', 'The Farrington'),
(2, 45170, 3, 'TQ', 'The Quarter'),
(2, 45170, 3, 'TV', 'The Valley'),
(2, 45170, 3, 'WE', 'West End');

--  'Albania', 'AL', 'ALB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45180, 3, 'BR', 'Berat'),
(2, 45180, 3, 'BU', 'Bulqize'),
(2, 45180, 3, 'DL', 'Delvine'),
(2, 45180, 3, 'DV', 'Devoll'),
(2, 45180, 3, 'DI', 'Diber'),
(2, 45180, 3, 'DR', 'Durres'),
(2, 45180, 3, 'EL', 'Elbasan'),
(2, 45180, 3, 'ER', 'Kolonje'),
(2, 45180, 3, 'FR', 'Fier'),
(2, 45180, 3, 'GJ', 'Gjirokaster'),
(2, 45180, 3, 'GR', 'Gramsh'),
(2, 45180, 3, 'HA', 'Has'),
(2, 45180, 3, 'KA', 'Kavaje'),
(2, 45180, 3, 'KB', 'Kurbin'),
(2, 45180, 3, 'KC', 'Kucove'),
(2, 45180, 3, 'KO', 'Korce'),
(2, 45180, 3, 'KR', 'Kruje'),
(2, 45180, 3, 'KU', 'Kukes'),
(2, 45180, 3, 'LB', 'Librazhd'),
(2, 45180, 3, 'LE', 'Lezhe'),
(2, 45180, 3, 'LU', 'Lushnje'),
(2, 45180, 3, 'MM', 'Malesi e Madhe'),
(2, 45180, 3, 'MK', 'Mallakaster'),
(2, 45180, 3, 'MT', 'Mat'),
(2, 45180, 3, 'MR', 'Mirdite'),
(2, 45180, 3, 'PQ', 'Peqin'),
(2, 45180, 3, 'PR', 'Permet'),
(2, 45180, 3, 'PG', 'Pogradec'),
(2, 45180, 3, 'PU', 'Puke'),
(2, 45180, 3, 'SH', 'Shkoder'),
(2, 45180, 3, 'SK', 'Skrapar'),
(2, 45180, 3, 'SR', 'Sarande'),
(2, 45180, 3, 'TE', 'Tepelene'),
(2, 45180, 3, 'TP', 'Tropoje'),
(2, 45180, 3, 'TR', 'Tirane'),
(2, 45180, 3, 'VL', 'Vlore');

--  'Armenia', 'AM', 'ARM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45190, 3, 'AGT', 'Aragatsotn'),
(2, 45190, 3, 'ARR', 'Ararat'),
(2, 45190, 3, 'ARM', 'Armavir'),
(2, 45190, 3, 'GEG', 'Geghark\'unik\''),
(2, 45190, 3, 'KOT', 'Kotayk\''),
(2, 45190, 3, 'LOR', 'Lorri'),
(2, 45190, 3, 'SHI', 'Shirak'),
(2, 45190, 3, 'SYU', 'Syunik\''),
(2, 45190, 3, 'TAV', 'Tavush'),
(2, 45190, 3, 'VAY', 'Vayots\' Dzor'),
(2, 45190, 3, 'YER', 'Yerevan');

--  'Netherlands Antilles', 'AN', 'ANT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45200, 3, 'BO', 'Bonaire'),
(2, 45200, 3, 'CU', 'Curachao'),
(2, 45200, 3, 'SB', 'Saba'),
(2, 45200, 3, 'SE', 'Sint Eustatius'),
(2, 45200, 3, 'SM', 'Sint Maarten');

--  'Angola', 'AO', 'AGO'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45210, 3, 'BGO', 'Bengo'),
(2, 45210, 3, 'BGU', 'Benguela'),
(2, 45210, 3, 'BIE', 'Bie'),
(2, 45210, 3, 'CAB', 'Cabinda'),
(2, 45210, 3, 'CCU', 'Cuando-Cubango'),
(2, 45210, 3, 'CNO', 'Cuanza Norte'),
(2, 45210, 3, 'CUS', 'Cuanza Sul'),
(2, 45210, 3, 'CNN', 'Cunene'),
(2, 45210, 3, 'HUA', 'Huambo'),
(2, 45210, 3, 'HUI', 'Huila'),
(2, 45210, 3, 'LUA', 'Luanda'),
(2, 45210, 3, 'LNO', 'Lunda Norte'),
(2, 45210, 3, 'LSU', 'Lunda Sul'),
(2, 45210, 3, 'MAL', 'Malange'),
(2, 45210, 3, 'MOX', 'Moxico'),
(2, 45210, 3, 'NAM', 'Namibe'),
(2, 45210, 3, 'UIG', 'Uige'),
(2, 45210, 3, 'ZAI', 'Zaire');

--  'AP', 'Asia/Pacific Region'

--  'Antarctica', 'AQ', 'ATA'

--  'Argentina', 'AR', 'ARG'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 563, 3, 'AN', 'Antartida e Islas del Atlantico'),
(2, 563, 3, 'BA', 'Buenos Aires'),
(2, 563, 3, 'CA', 'Catamarca'),
(2, 563, 3, 'CH', 'Chaco'),
(2, 563, 3, 'CU', 'Chubut'),
(2, 563, 3, 'CO', 'Cordoba'),
(2, 563, 3, 'CR', 'Corrientes'),
(2, 563, 3, 'DF', 'Distrito Federal'),
(2, 563, 3, 'ER', 'Entre Rios'),
(2, 563, 3, 'FO', 'Formosa'),
(2, 563, 3, 'JU', 'Jujuy'),
(2, 563, 3, 'LP', 'La Pampa'),
(2, 563, 3, 'LR', 'La Rioja'),
(2, 563, 3, 'ME', 'Mendoza'),
(2, 563, 3, 'MI', 'Misiones'),
(2, 563, 3, 'NE', 'Neuquen'),
(2, 563, 3, 'RN', 'Rio Negro'),
(2, 563, 3, 'SA', 'Salta'),
(2, 563, 3, 'SJ', 'San Juan'),
(2, 563, 3, 'SL', 'San Luis'),
(2, 563, 3, 'SC', 'Santa Cruz'),
(2, 563, 3, 'SF', 'Santa Fe'),
(2, 563, 3, 'SD', 'Santiago del Estero'),
(2, 563, 3, 'TF', 'Tierra del Fuego'),
(2, 563, 3, 'TU', 'Tucuman');

--  'American Samoa', 'AS', 'ASM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45240, 3, 'FA', 'Faleasao'),
(2, 45240, 3, 'FI', 'Fitiuta'),
(2, 45240, 3, 'IT', 'Ituau'),
(2, 45240, 3, 'LL', 'Lealataua'),
(2, 45240, 3, 'LS', 'Leasina'),
(2, 45240, 3, 'MA', 'Ma\'oputasi'),
(2, 45240, 3, 'OF', 'Ofu'),
(2, 45240, 3, 'OL', 'Olosega'),
(2, 45240, 3, 'SA', 'Sa\'ole'),
(2, 45240, 3, 'SU', 'Sua'),
(2, 45240, 3, 'SW', 'Swains'),
(2, 45240, 3, 'TA', 'Ta\'u'),
(2, 45240, 3, 'TI', 'Tualatai'),
(2, 45240, 3, 'TU', 'Tualauta'),
(2, 45240, 3, 'VA', 'Vaifanua');

--  'Austria', 'AT', 'AUT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 551, 3, 'BUR', 'Burgenland'),
(2, 551, 3, 'KAR', 'Carinthia'),
(2, 551, 3, 'NOS', 'Lower Austria'),
(2, 551, 3, 'OOS', 'Upper Austria'),
(2, 551, 3, 'SAL', 'Salzburg'),
(2, 551, 3, 'STE', 'Styria'),
(2, 551, 3, 'TIR', 'Tirol'),
(2, 551, 3, 'VOR', 'Vorarlberg'),
(2, 551, 3, 'WIE', 'Wien');

--  'Australia', 'AU', 'AUS'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 537, 3, 'ACT', 'Australian Capitol Territory'),
(2, 537, 3, 'NSW', 'New South Wales'),
(2, 537, 3, 'NT', 'Northern Territory'),
(2, 537, 3, 'QLD', 'Queensland'),
(2, 537, 3, 'SA', 'South Australia'),
(2, 537, 3, 'TAS', 'Tasmania'),
(2, 537, 3, 'VIC', 'Victoria'),
(2, 537, 3, 'WA', 'Western Australia');

--  'AW', 'Aruba'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45250, 3, 'NO', 'Noord'),
(2, 45250, 3, 'OW', 'Oranjestad West'),
(2, 45250, 3, 'OO', 'Oranjestad Oost'),
(2, 45250, 3, 'PR', 'Paradera'),
(2, 45250, 3, 'SC', 'Santa Cruz'),
(2, 45250, 3, 'SV', 'Savaneta'),
(2, 45250, 3, 'SN', 'San Nicolaas Noord'),
(2, 45250, 3, 'SZ', 'San Nicolaas Zuid');

--  'AX', 'Aland Islands'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45260, 3, 'BR', 'Brando'),
(2, 45260, 3, 'EC', 'Eckero'),
(2, 45260, 3, 'FN', 'Finstrom'),
(2, 45260, 3, 'FG', 'Foglo'),
(2, 45260, 3, 'GT', 'Geta'),
(2, 45260, 3, 'HM', 'Hammarland'),
(2, 45260, 3, 'JM', 'Jomala'),
(2, 45260, 3, 'KK', 'Kokar'),
(2, 45260, 3, 'KM', 'Kumlinge'),
(2, 45260, 3, 'LE', 'Lemland'),
(2, 45260, 3, 'LU', 'Lumparland'),
(2, 45260, 3, 'MH', 'Mariehamn'),
(2, 45260, 3, 'SV', 'Saltvik'),
(2, 45260, 3, 'ST', 'Sottunga'),
(2, 45260, 3, 'SD', 'Sund'),
(2, 45260, 3, 'VR', 'Vardo');

--  'Azerbaijan', 'AZ', 'AZE'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45270, 3, 'AB',  'Ali Bayramli'),
(2, 45270, 3, 'ABS', 'Abseron'),
(2, 45270, 3, 'AGC', 'AgcabAdi'),
(2, 45270, 3, 'AGM', 'Agdam'),
(2, 45270, 3, 'AGS', 'Agdas'),
(2, 45270, 3, 'AGA', 'Agstafa'),
(2, 45270, 3, 'AGU', 'Agsu'),
(2, 45270, 3, 'AST', 'Astara'),
(2, 45270, 3, 'BA',  'Baki'),
(2, 45270, 3, 'BAB', 'BabAk'),
(2, 45270, 3, 'BAL', 'BalakAn'),
(2, 45270, 3, 'BAR', 'BArdA'),
(2, 45270, 3, 'BEY', 'Beylaqan'),
(2, 45270, 3, 'BIL', 'Bilasuvar'),
(2, 45270, 3, 'CAB', 'Cabrayil'),
(2, 45270, 3, 'CAL', 'Calilabab'),
(2, 45270, 3, 'CUL', 'Culfa'),
(2, 45270, 3, 'DAS', 'Daskasan'),
(2, 45270, 3, 'DAV', 'Davaci'),
(2, 45270, 3, 'FUZ', 'Fuzuli'),
(2, 45270, 3, 'GA',  'Ganca'),
(2, 45270, 3, 'GAD', 'Gadabay'),
(2, 45270, 3, 'GOR', 'Goranboy'),
(2, 45270, 3, 'GOY', 'Goycay'),
(2, 45270, 3, 'HAC', 'Haciqabul'),
(2, 45270, 3, 'IMI', 'Imisli'),
(2, 45270, 3, 'ISM', 'Ismayilli'),
(2, 45270, 3, 'KAL', 'Kalbacar'),
(2, 45270, 3, 'KUR', 'Kurdamir'),
(2, 45270, 3, 'LA',  'Lankaran'),
(2, 45270, 3, 'LAC', 'Lacin'),
(2, 45270, 3, 'LAN', 'Lankaran'),
(2, 45270, 3, 'LER', 'Lerik'),
(2, 45270, 3, 'MAS', 'Masalli'),
(2, 45270, 3, 'MI',  'Mingacevir'),
(2, 45270, 3, 'NA',  'Naftalan'),
(2, 45270, 3, 'NEF', 'Neftcala'),
(2, 45270, 3, 'OGU', 'Oguz'),
(2, 45270, 3, 'ORD', 'Ordubad'),
(2, 45270, 3, 'QAB', 'Qabala'),
(2, 45270, 3, 'QAX', 'Qax'),
(2, 45270, 3, 'QAZ', 'Qazax'),
(2, 45270, 3, 'QOB', 'Qobustan'),
(2, 45270, 3, 'QBA', 'Quba'),
(2, 45270, 3, 'QBI', 'Qubadli'),
(2, 45270, 3, 'QUS', 'Qusar'),
(2, 45270, 3, 'SA',  'Saki'),
(2, 45270, 3, 'SAT', 'Saatli'),
(2, 45270, 3, 'SAB', 'Sabirabad'),
(2, 45270, 3, 'SAD', 'Sadarak'),
(2, 45270, 3, 'SAH', 'Sahbuz'),
(2, 45270, 3, 'SAK', 'Saki'),
(2, 45270, 3, 'SAL', 'Salyan'),
(2, 45270, 3, 'SM',  'Sumqayit'),
(2, 45270, 3, 'SMI', 'Samaxi'),
(2, 45270, 3, 'SKR', 'Samkir'),
(2, 45270, 3, 'SMX', 'Samux'),
(2, 45270, 3, 'SAR', 'Sarur'),
(2, 45270, 3, 'SIY', 'Siyazan'),
(2, 45270, 3, 'SS',  'Susa'),
(2, 45270, 3, 'SUS', 'Susa'),
(2, 45270, 3, 'TAR', 'Tartar'),
(2, 45270, 3, 'TOV', 'Tovuz'),
(2, 45270, 3, 'UCA', 'Ucar'),
(2, 45270, 3, 'XA',  'Xankandi'),
(2, 45270, 3, 'XAC', 'Xacmaz'),
(2, 45270, 3, 'XAN', 'Xanlar'),
(2, 45270, 3, 'XIZ', 'Xizi'),
(2, 45270, 3, 'XCI', 'Xocali'),
(2, 45270, 3, 'XVD', 'Xocavand'),
(2, 45270, 3, 'YAR', 'Yardimli'),
(2, 45270, 3, 'YEV', 'Yevlax'),
(2, 45270, 3, 'ZAN', 'Zangilan'),
(2, 45270, 3, 'ZAQ', 'Zaqatala'),
(2, 45270, 3, 'ZAR', 'Zardab'),
(2, 45270, 3, 'NX',  'Naxcivan');

--  'Bosnia and Herzegowina', 'BA', 'BIH'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45280, 3, 'BRO', 'Brcko district'),
(2, 45280, 3, 'FUS', 'Unsko-Sanski Kanton'),
(2, 45280, 3, 'FPO', 'Posavski Kanton'),
(2, 45280, 3, 'FTU', 'Tuzlanski Kanton'),
(2, 45280, 3, 'FZE', 'Zenicko-Dobojski Kanton'),
(2, 45280, 3, 'FBP', 'Bosanskopodrinjski Kanton'),
(2, 45280, 3, 'FSB', 'Srednjebosanski Kanton'),
(2, 45280, 3, 'FHN', 'Hercegovacko-neretvanski Kanton'),
(2, 45280, 3, 'FZH', 'Zapadnohercegovacka Zupanija'),
(2, 45280, 3, 'FSA', 'Kanton Sarajevo'),
(2, 45280, 3, 'FZA', 'Zapadnobosanska'),
(2, 45280, 3, 'SBL', 'Banja Luka'),
(2, 45280, 3, 'SDO', 'Doboj'),
(2, 45280, 3, 'SBI', 'Bijeljina'),
(2, 45280, 3, 'SVL', 'Vlasenica'),
(2, 45280, 3, 'SSR', 'Sarajevo-Romanija or Sokolac'),
(2, 45280, 3, 'SFO', 'Foca'),
(2, 45280, 3, 'STR', 'Trebinje');

--  'Barbados', 'BB', 'BRB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45290, 3, 'CC', 'Christ Church'),
(2, 45290, 3, 'AND', 'Saint Andrew'),
(2, 45290, 3, 'GEO', 'Saint George'),
(2, 45290, 3, 'JAM', 'Saint James'),
(2, 45290, 3, 'JOH', 'Saint John'),
(2, 45290, 3, 'JOS', 'Saint Joseph'),
(2, 45290, 3, 'LUC', 'Saint Lucy'),
(2, 45290, 3, 'MIC', 'Saint Michael'),
(2, 45290, 3, 'PET', 'Saint Peter'),
(2, 45290, 3, 'PHI', 'Saint Philip'),
(2, 45290, 3, 'THO', 'Saint Thomas');

--  'Bangladesh', 'BD', 'BGD'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45300, 3, 'BAR', 'Barisal'),
(2, 45300, 3, 'CHI', 'Chittagong'),
(2, 45300, 3, 'DHA', 'Dhaka'),
(2, 45300, 3, 'KHU', 'Khulna'),
(2, 45300, 3, 'RAJ', 'Rajshahi'),
(2, 45300, 3, 'SYL', 'Sylhet');

--  'Belgium', 'BE', 'BEL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45310, 3, 'VAN', 'Antwerpen'),
(2, 45310, 3, 'WBR', 'Brabant Wallon'),
(2, 45310, 3, 'WHT', 'Hainaut'),
(2, 45310, 3, 'WLG', 'Liege'),
(2, 45310, 3, 'VLI', 'Limburg'),
(2, 45310, 3, 'WLX', 'Luxembourg'),
(2, 45310, 3, 'WNA', 'Namur'),
(2, 45310, 3, 'VOV', 'Oost-Vlaanderen'),
(2, 45310, 3, 'VBR', 'Vlaams Brabant'),
(2, 45310, 3, 'VWV', 'West-Vlaanderen');

--  'Burkina Faso', 'BF', 'BFA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45320, 3, 'BAL', 'Bale'),
(2, 45320, 3, 'BAM', 'Bam'),
(2, 45320, 3, 'BAN', 'Banwa'),
(2, 45320, 3, 'BAZ', 'Bazega'),
(2, 45320, 3, 'BOR', 'Bougouriba'),
(2, 45320, 3, 'BLG', 'Boulgou'),
(2, 45320, 3, 'BOK', 'Boulkiemde'),
(2, 45320, 3, 'COM', 'Comoe'),
(2, 45320, 3, 'GAN', 'Ganzourgou'),
(2, 45320, 3, 'GNA', 'Gnagna'),
(2, 45320, 3, 'GOU', 'Gourma'),
(2, 45320, 3, 'HOU', 'Houet'),
(2, 45320, 3, 'IOA', 'Ioba'),
(2, 45320, 3, 'KAD', 'Kadiogo'),
(2, 45320, 3, 'KEN', 'Kenedougou'),
(2, 45320, 3, 'KOD', 'Komondjari'),
(2, 45320, 3, 'KOP', 'Kompienga'),
(2, 45320, 3, 'KOS', 'Kossi'),
(2, 45320, 3, 'KOL', 'Koulpelogo'),
(2, 45320, 3, 'KOT', 'Kouritenga'),
(2, 45320, 3, 'KOW', 'Kourweogo'),
(2, 45320, 3, 'LER', 'Leraba'),
(2, 45320, 3, 'LOR', 'Loroum'),
(2, 45320, 3, 'MOU', 'Mouhoun'),
(2, 45320, 3, 'NAH', 'Nahouri'),
(2, 45320, 3, 'NAM', 'Namentenga'),
(2, 45320, 3, 'NAY', 'Nayala'),
(2, 45320, 3, 'NOU', 'Noumbiel'),
(2, 45320, 3, 'OUB', 'Oubritenga'),
(2, 45320, 3, 'OUD', 'Oudalan'),
(2, 45320, 3, 'PAS', 'Passore'),
(2, 45320, 3, 'PON', 'Poni'),
(2, 45320, 3, 'SAG', 'Sanguie'),
(2, 45320, 3, 'SAM', 'Sanmatenga'),
(2, 45320, 3, 'SEN', 'Seno'),
(2, 45320, 3, 'SIS', 'Sissili'),
(2, 45320, 3, 'SOM', 'Soum'),
(2, 45320, 3, 'SOR', 'Sourou'),
(2, 45320, 3, 'TAP', 'Tapoa'),
(2, 45320, 3, 'TUY', 'Tuy'),
(2, 45320, 3, 'YAG', 'Yagha'),
(2, 45320, 3, 'YAT', 'Yatenga'),
(2, 45320, 3, 'ZIR', 'Ziro'),
(2, 45320, 3, 'ZOD', 'Zondoma'),
(2, 45320, 3, 'ZOW', 'Zoundweogo');

--  'Bulgaria', 'BG', 'BGR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45330, 3, 'BLA', 'Blagoevgrad'),
(2, 45330, 3, 'BUR', 'Burgas'),
(2, 45330, 3, 'DOB', 'Dobrich'),
(2, 45330, 3, 'GAB', 'Gabrovo'),
(2, 45330, 3, 'HAS', 'Haskovo'),
(2, 45330, 3, 'KAR', 'Kardjali'),
(2, 45330, 3, 'KYU', 'Kyustendil'),
(2, 45330, 3, 'LOV', 'Lovech'),
(2, 45330, 3, 'MON', 'Montana'),
(2, 45330, 3, 'PAZ', 'Pazardjik'),
(2, 45330, 3, 'PER', 'Pernik'),
(2, 45330, 3, 'PLE', 'Pleven'),
(2, 45330, 3, 'PLO', 'Plovdiv'),
(2, 45330, 3, 'RAZ', 'Razgrad'),
(2, 45330, 3, 'SHU', 'Shumen'),
(2, 45330, 3, 'SIL', 'Silistra'),
(2, 45330, 3, 'SLI', 'Sliven'),
(2, 45330, 3, 'SMO', 'Smolyan'),
(2, 45330, 3, 'SOF', 'Sofia city'),
(2, 45330, 3, 'SOR', 'Sofia region'),
(2, 45330, 3, 'STA', 'Stara Zagora'),
(2, 45330, 3, 'TAR', 'Targovishte'),
(2, 45330, 3, 'VAR', 'Varna'),
(2, 45330, 3, 'VEL', 'Veliko Tarnovo'),
(2, 45330, 3, 'VID', 'Vidin'),
(2, 45330, 3, 'VRA', 'Vratza'),
(2, 45330, 3, 'YAM', 'Yambol');

--  'Bahrain', 'BH', 'BHR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45340, 3, 'CAP', 'Capital'),
(2, 45340, 3, 'CEN', 'Central'),
(2, 45340, 3, 'MUH', 'Muharraq'),
(2, 45340, 3, 'NOR', 'Northern'),
(2, 45340, 3, 'SOU', 'Southern');

--  'Burundi', 'BI', 'BDI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45350, 3, 'BB', 'Bubanza'),
(2, 45350, 3, 'BJ', 'Bujumbura'),
(2, 45350, 3, 'BR', 'Bururi'),
(2, 45350, 3, 'CA', 'Cankuzo'),
(2, 45350, 3, 'CI', 'Cibitoke'),
(2, 45350, 3, 'GI', 'Gitega'),
(2, 45350, 3, 'KR', 'Karuzi'),
(2, 45350, 3, 'KY', 'Kayanza'),
(2, 45350, 3, 'KI', 'Kirundo'),
(2, 45350, 3, 'MA', 'Makamba'),
(2, 45350, 3, 'MU', 'Muramvya'),
(2, 45350, 3, 'MY', 'Muyinga'),
(2, 45350, 3, 'MW', 'Mwaro'),
(2, 45350, 3, 'NG', 'Ngozi'),
(2, 45350, 3, 'RT', 'Rutana'),
(2, 45350, 3, 'RY', 'Ruyigi');

--  'Benin', 'BJ', 'BEN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45360, 3, 'AL', 'Alibori'),
(2, 45360, 3, 'AK', 'Atakora'),
(2, 45360, 3, 'AQ', 'Atlantique'),
(2, 45360, 3, 'BO', 'Borgou'),
(2, 45360, 3, 'CO', 'Collines'),
(2, 45360, 3, 'DO', 'Donga'),
(2, 45360, 3, 'KO', 'Kouffo'),
(2, 45360, 3, 'LI', 'Littoral'),
(2, 45360, 3, 'MO', 'Mono'),
(2, 45360, 3, 'OU', 'Oueme'),
(2, 45360, 3, 'PL', 'Plateau'),
(2, 45360, 3, 'ZO', 'Zou');

--  'BL', 'Saint Barthelemy'

--  'Bermuda', 'BM', 'BMU'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45380, 3, 'DS', 'Devonshire'),
(2, 45380, 3, 'HC', 'Hamilton City'),
(2, 45380, 3, 'HA', 'Hamilton'),
(2, 45380, 3, 'PG', 'Paget'),
(2, 45380, 3, 'PB', 'Pembroke'),
(2, 45380, 3, 'GC', 'Saint George City'),
(2, 45380, 3, 'SG', 'Saint George\'s'),
(2, 45380, 3, 'SA', 'Sandys'),
(2, 45380, 3, 'SM', 'Smith\'s'),
(2, 45380, 3, 'SH', 'Southampton'),
(2, 45380, 3, 'WA', 'Warwick');

--  'Brunei Darussalam', 'BN', 'BRN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45390, 3, 'BEL', 'Belait'),
(2, 45390, 3, 'BRM', 'Brunei and Muara'),
(2, 45390, 3, 'TEM', 'Temburong'),
(2, 45390, 3, 'TUT', 'Tutong');

--  'Bolivia', 'BO', 'BOL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45400, 3, 'BEN', 'Beni'),
(2, 45400, 3, 'CHU', 'Chuquisaca'),
(2, 45400, 3, 'COC', 'Cochabamba'),
(2, 45400, 3, 'LPZ', 'La Paz'),
(2, 45400, 3, 'ORU', 'Oruro'),
(2, 45400, 3, 'PAN', 'Pando'),
(2, 45400, 3, 'POT', 'Potosi'),
(2, 45400, 3, 'SCZ', 'Santa Cruz'),
(2, 45400, 3, 'TAR', 'Tarija');

--  'Brazil', 'BR', 'BRA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 562, 3, 'AC', 'Acre'),
(2, 562, 3, 'AL', 'Alagoas'),
(2, 562, 3, 'AP', 'Amapa'),
(2, 562, 3, 'AM', 'Amazonas'),
(2, 562, 3, 'BA', 'Bahia'),
(2, 562, 3, 'CE', 'Ceara'),
(2, 562, 3, 'DF', 'Distrito Federal'),
(2, 562, 3, 'ES', 'Espirito Santo'),
(2, 562, 3, 'GO', 'Goias'),
(2, 562, 3, 'MA', 'Maranhao'),
(2, 562, 3, 'MT', 'Mato Grosso'),
(2, 562, 3, 'MS', 'Mato Grosso do Sul'),
(2, 562, 3, 'MG', 'Minas Gerais'),
(2, 562, 3, 'PA', 'Para'),
(2, 562, 3, 'PB', 'Paraiba'),
(2, 562, 3, 'PR', 'Parana'),
(2, 562, 3, 'PE', 'Pernambuco'),
(2, 562, 3, 'PI', 'Piaui'),
(2, 562, 3, 'RJ', 'Rio de Janeiro'),
(2, 562, 3, 'RN', 'Rio Grande do Norte'),
(2, 562, 3, 'RS', 'Rio Grande do Sul'),
(2, 562, 3, 'RO', 'Rondonia'),
(2, 562, 3, 'RR', 'Roraima'),
(2, 562, 3, 'SC', 'Santa Catarina'),
(2, 562, 3, 'SP', 'Sao Paulo'),
(2, 562, 3, 'SE', 'Sergipe'),
(2, 562, 3, 'TO', 'Tocantins');

--  'Bahamas', 'BS', 'BHS'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45410, 3, 'ACK', 'Acklins'),
(2, 45410, 3, 'BER', 'Berry Islands'),
(2, 45410, 3, 'BIM', 'Bimini'),
(2, 45410, 3, 'BLK', 'Black Point'),
(2, 45410, 3, 'CAT', 'Cat Island'),
(2, 45410, 3, 'CAB', 'Central Abaco'),
(2, 45410, 3, 'CAN', 'Central Andros'),
(2, 45410, 3, 'CEL', 'Central Eleuthera'),
(2, 45410, 3, 'FRE', 'City of Freeport'),
(2, 45410, 3, 'CRO', 'Crooked Island'),
(2, 45410, 3, 'EGB', 'East Grand Bahama'),
(2, 45410, 3, 'EXU', 'Exuma'),
(2, 45410, 3, 'GRD', 'Grand Cay'),
(2, 45410, 3, 'HAR', 'Harbour Island'),
(2, 45410, 3, 'HOP', 'Hope Town'),
(2, 45410, 3, 'INA', 'Inagua'),
(2, 45410, 3, 'LNG', 'Long Island'),
(2, 45410, 3, 'MAN', 'Mangrove Cay'),
(2, 45410, 3, 'MAY', 'Mayaguana'),
(2, 45410, 3, 'MOO', 'Moore\'s Island'),
(2, 45410, 3, 'NAB', 'North Abaco'),
(2, 45410, 3, 'NAN', 'North Andros'),
(2, 45410, 3, 'NEL', 'North Eleuthera'),
(2, 45410, 3, 'RAG', 'Ragged Island'),
(2, 45410, 3, 'RUM', 'Rum Cay'),
(2, 45410, 3, 'SAL', 'San Salvador'),
(2, 45410, 3, 'SAB', 'South Abaco'),
(2, 45410, 3, 'SAN', 'South Andros'),
(2, 45410, 3, 'SEL', 'South Eleuthera'),
(2, 45410, 3, 'SWE', 'Spanish Wells'),
(2, 45410, 3, 'WGB', 'West Grand Bahama');

--  'Bhutan', 'BT', 'BTN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45420, 3, 'BUM', 'Bumthang'),
(2, 45420, 3, 'CHU', 'Chukha'),
(2, 45420, 3, 'DAG', 'Dagana'),
(2, 45420, 3, 'GAS', 'Gasa'),
(2, 45420, 3, 'HAA', 'Haa'),
(2, 45420, 3, 'LHU', 'Lhuntse'),
(2, 45420, 3, 'MON', 'Mongar'),
(2, 45420, 3, 'PAR', 'Paro'),
(2, 45420, 3, 'PEM', 'Pemagatshel'),
(2, 45420, 3, 'PUN', 'Punakha'),
(2, 45420, 3, 'SJO', 'Samdrup Jongkhar'),
(2, 45420, 3, 'SAT', 'Samtse'),
(2, 45420, 3, 'SAR', 'Sarpang'),
(2, 45420, 3, 'THI', 'Thimphu'),
(2, 45420, 3, 'TRG', 'Trashigang'),
(2, 45420, 3, 'TRY', 'Trashiyangste'),
(2, 45420, 3, 'TRO', 'Trongsa'),
(2, 45420, 3, 'TSI', 'Tsirang'),
(2, 45420, 3, 'WPH', 'Wangdue Phodrang'),
(2, 45420, 3, 'ZHE', 'Zhemgang');

--  'Bouvet Island', 'BV', 'BVT'

--  'Botswana', 'BW', 'BWA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45440, 3, 'CE', 'Central'),
(2, 45440, 3, 'GH', 'Ghanzi'),
(2, 45440, 3, 'KD', 'Kgalagadi'),
(2, 45440, 3, 'KT', 'Kgatleng'),
(2, 45440, 3, 'KW', 'Kweneng'),
(2, 45440, 3, 'NG', 'Ngamiland'),
(2, 45440, 3, 'NE', 'North East'),
(2, 45440, 3, 'NW', 'North West'),
(2, 45440, 3, 'SE', 'South East'),
(2, 45440, 3, 'SO', 'Southern');

--  'Belarus', 'BY', 'BLR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45450, 3, 'BR', 'Brestskaya (Brest)'),
(2, 45450, 3, 'HO', 'Homyel\'skaya (Homyel\')'),
(2, 45450, 3, 'HM', 'Horad Minsk'),
(2, 45450, 3, 'HR', 'Hrodzyenskaya (Hrodna)'),
(2, 45450, 3, 'MA', 'Mahilyowskaya (Mahilyow)'),
(2, 45450, 3, 'MI', 'Minskaya'),
(2, 45450, 3, 'VI', 'Vityebskaya (Vitsyebsk)');

--  'Belize', 'BZ', 'BLZ'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45460, 3, 'BZ', 'Belize'),
(2, 45460, 3, 'CY', 'Cayo'),
(2, 45460, 3, 'CR', 'Corozal'),
(2, 45460, 3, 'OW', 'Orange Walk'),
(2, 45460, 3, 'SC', 'Stann Creek'),
(2, 45460, 3, 'TO', 'Toledo');

--  'Canada', 'CA', 'CAN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 536, 3, 'AB', 'Alberta'),
(2, 536, 3, 'BC', 'British Columbia'),
(2, 536, 3, 'MB', 'Manitoba'),
(2, 536, 3, 'NB', 'New Brunswick'),
(2, 536, 3, 'NL', 'Newfoundland and Labrador'),
(2, 536, 3, 'NT', 'Northwest Territories'),
(2, 536, 3, 'NS', 'Nova Scotia'),
(2, 536, 3, 'NU', 'Nunavut'),
(2, 536, 3, 'ON', 'Ontario'),
(2, 536, 3, 'PE', 'Prince Edward Island'),
(2, 536, 3, 'QC', 'Quebec'),
(2, 536, 3, 'SK', 'Saskatchewan'),
(2, 536, 3, 'YT', 'Yukon Territory');

--  'Cocos (Keeling) Islands', 'CC', 'CCK'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45470, 3, 'D', 'Direction Island'),
(2, 45470, 3, 'H', 'Home Island'),
(2, 45470, 3, 'O', 'Horsburgh Island'),
(2, 45470, 3, 'S', 'South Island'),
(2, 45470, 3, 'W', 'West Island');

--  'CD', 'Congo, The Democratic Republic of the'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45480, 3, 'BN', 'Bandundu'),
(2, 45480, 3, 'BC', 'Bas-Congo'),
(2, 45480, 3, 'EQ', 'Equateur'),
(2, 45480, 3, 'KW', 'Kasai-Occidental'),
(2, 45480, 3, 'KE', 'Kasai-Oriental'),
(2, 45480, 3, 'KA', 'Katanga'),
(2, 45480, 3, 'KN', 'Kinshasa City'),
(2, 45480, 3, 'MA', 'Maniema'),
(2, 45480, 3, 'NK', 'Nord-Kivu'),
(2, 45480, 3, 'OR', 'Orientale'),
(2, 45480, 3, 'SK', 'Sud-Kivu');

--  'Central African Republic', 'CF', 'CAF'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45490, 3, 'BAN', 'Bangui'),
(2, 45490, 3, 'BBA', 'Bamingui-Bangoran'),
(2, 45490, 3, 'BKO', 'Basse-Kotto'),
(2, 45490, 3, 'HKO', 'Haute-Kotto'),
(2, 45490, 3, 'HMB', 'Haut-Mbomou'),
(2, 45490, 3, 'KEM', 'Kemo'),
(2, 45490, 3, 'LOB', 'Lobaye'),
(2, 45490, 3, 'MKD', 'Mambare-Kadaa'),
(2, 45490, 3, 'MBO', 'Mbomou'),
(2, 45490, 3, 'NGR', 'Nana-Grebizi'),
(2, 45490, 3, 'NMM', 'Nana-Mambere'),
(2, 45490, 3, 'OMP', 'Ombella-M\'Poko'),
(2, 45490, 3, 'OUK', 'Ouaka'),
(2, 45490, 3, 'OUH', 'Ouham'),
(2, 45490, 3, 'OPE', 'Ouham-Pende'),
(2, 45490, 3, 'SMB', 'Sangha-Mbaere'),
(2, 45490, 3, 'VAK', 'Vakaga');

--  'Congo, Republic of', 'CG', 'COG'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45500, 3, 'BO', 'Bouenza'),
(2, 45500, 3, 'BR', 'Brazzaville'),
(2, 45500, 3, 'CU', 'Cuvette'),
(2, 45500, 3, 'CO', 'Cuvette-Ouest'),
(2, 45500, 3, 'KO', 'Kouilou'),
(2, 45500, 3, 'LE', 'Lekoumou'),
(2, 45500, 3, 'LI', 'Likouala'),
(2, 45500, 3, 'NI', 'Niari'),
(2, 45500, 3, 'PL', 'Plateaux'),
(2, 45500, 3, 'PO', 'Pool'),
(2, 45500, 3, 'SA', 'Sangha');

--  'Switzerland', 'CH', 'CHE'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 544, 3, 'AG', 'Aargau'),
(2, 544, 3, 'AI', 'Appenzell Inner Rhodes'),
(2, 544, 3, 'AR', 'Appenzell Outer Rhodes'),
(2, 544, 3, 'BE', 'Bern'),
(2, 544, 3, 'BL', 'Basel-Country'),
(2, 544, 3, 'BS', 'Basel-City'),
(2, 544, 3, 'FR', 'Fribourg'),
(2, 544, 3, 'GE', 'Geneva'),
(2, 544, 3, 'GL', 'Glarus'),
(2, 544, 3, 'GR', 'Grisons'),
(2, 544, 3, 'JU', 'Jura'),
(2, 544, 3, 'LU', 'Lucerne'),
(2, 544, 3, 'NE', 'Neuchatel'),
(2, 544, 3, 'NW', 'Nidwalden'),
(2, 544, 3, 'OW', 'Obwalden'),
(2, 544, 3, 'SG', 'St. Gallen'),
(2, 544, 3, 'SH', 'Schaffhausen'),
(2, 544, 3, 'SO', 'Solothurn'),
(2, 544, 3, 'SZ', 'Schwyz'),
(2, 544, 3, 'TG', 'Thurgau'),
(2, 544, 3, 'TI', 'Ticino'),
(2, 544, 3, 'UR', 'Uri'),
(2, 544, 3, 'VD', 'Vaud'),
(2, 544, 3, 'VS', 'Valais'),
(2, 544, 3, 'ZG', 'Zug'),
(2, 544, 3, 'ZH', 'Zurich');

--  'Cote D\'Ivoire', 'CI', 'CIV'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45510, 3, 'ABE', 'Abengourou'),
(2, 45510, 3, 'ABI', 'Abidjan'),
(2, 45510, 3, 'ABO', 'Aboisso'),
(2, 45510, 3, 'ADI', 'Adiake'),
(2, 45510, 3, 'ADZ', 'Adzope'),
(2, 45510, 3, 'AGB', 'Agboville'),
(2, 45510, 3, 'AGN', 'Agnibilekrou'),
(2, 45510, 3, 'ALE', 'Alepe'),
(2, 45510, 3, 'BOC', 'Bocanda'),
(2, 45510, 3, 'BAN', 'Bangolo'),
(2, 45510, 3, 'BEO', 'Beoumi'),
(2, 45510, 3, 'BIA', 'Biankouma'),
(2, 45510, 3, 'BDK', 'Bondoukou'),
(2, 45510, 3, 'BGN', 'Bongouanou'),
(2, 45510, 3, 'BFL', 'Bouafle'),
(2, 45510, 3, 'BKE', 'Bouake'),
(2, 45510, 3, 'BNA', 'Bouna'),
(2, 45510, 3, 'BDL', 'Boundiali'),
(2, 45510, 3, 'DKL', 'Dabakala'),
(2, 45510, 3, 'DBU', 'Dabou'),
(2, 45510, 3, 'DAL', 'Daloa'),
(2, 45510, 3, 'DAN', 'Danane'),
(2, 45510, 3, 'DAO', 'Daoukro'),
(2, 45510, 3, 'DIM', 'Dimbokro'),
(2, 45510, 3, 'DIV', 'Divo'),
(2, 45510, 3, 'DUE', 'Duekoue'),
(2, 45510, 3, 'FER', 'Ferkessedougou'),
(2, 45510, 3, 'GAG', 'Gagnoa'),
(2, 45510, 3, 'GBA', 'Grand-Bassam'),
(2, 45510, 3, 'GLA', 'Grand-Lahou'),
(2, 45510, 3, 'GUI', 'Guiglo'),
(2, 45510, 3, 'ISS', 'Issia'),
(2, 45510, 3, 'JAC', 'Jacqueville'),
(2, 45510, 3, 'KAT', 'Katiola'),
(2, 45510, 3, 'KOR', 'Korhogo'),
(2, 45510, 3, 'LAK', 'Lakota'),
(2, 45510, 3, 'MAN', 'Man'),
(2, 45510, 3, 'MKN', 'Mankono'),
(2, 45510, 3, 'MBA', 'Mbahiakro'),
(2, 45510, 3, 'ODI', 'Odienne'),
(2, 45510, 3, 'OUM', 'Oume'),
(2, 45510, 3, 'SAK', 'Sakassou'),
(2, 45510, 3, 'SPE', 'San-Pedro'),
(2, 45510, 3, 'SAS', 'Sassandra'),
(2, 45510, 3, 'SEG', 'Seguela'),
(2, 45510, 3, 'SIN', 'Sinfra'),
(2, 45510, 3, 'SOU', 'Soubre'),
(2, 45510, 3, 'TAB', 'Tabou'),
(2, 45510, 3, 'TAN', 'Tanda'),
(2, 45510, 3, 'TIE', 'Tiebissou'),
(2, 45510, 3, 'TIN', 'Tingrela'),
(2, 45510, 3, 'TIA', 'Tiassale'),
(2, 45510, 3, 'TBA', 'Touba'),
(2, 45510, 3, 'TLP', 'Toulepleu'),
(2, 45510, 3, 'TMD', 'Toumodi'),
(2, 45510, 3, 'VAV', 'Vavoua'),
(2, 45510, 3, 'YAM', 'Yamoussoukro'),
(2, 45510, 3, 'ZUE', 'Zuenoula');

--  'Cook Islands', 'CK', 'COK'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45520, 3, 'PU', 'Pukapuka'),
(2, 45520, 3, 'RK', 'Rakahanga'),
(2, 45520, 3, 'MK', 'Manihiki'),
(2, 45520, 3, 'PE', 'Penrhyn'),
(2, 45520, 3, 'NI', 'Nassau Island'),
(2, 45520, 3, 'SU', 'Surwarrow'),
(2, 45520, 3, 'PA', 'Palmerston'),
(2, 45520, 3, 'AI', 'Aitutaki'),
(2, 45520, 3, 'MA', 'Manuae'),
(2, 45520, 3, 'TA', 'Takutea'),
(2, 45520, 3, 'MT', 'Mitiaro'),
(2, 45520, 3, 'AT', 'Atiu'),
(2, 45520, 3, 'MU', 'Mauke'),
(2, 45520, 3, 'RR', 'Rarotonga'),
(2, 45520, 3, 'MG', 'Mangaia');

--  'Chile', 'CL', 'CHL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45530, 3, 'AI', 'Aisen del General Carlos Ibanez'),
(2, 45530, 3, 'AN', 'Antofagasta'),
(2, 45530, 3, 'AR', 'Araucania'),
(2, 45530, 3, 'AT', 'Atacama'),
(2, 45530, 3, 'BI', 'Bio-Bio'),
(2, 45530, 3, 'CO', 'Coquimbo'),
(2, 45530, 3, 'LI', 'Libertador General Bernardo O\'Hi'),
(2, 45530, 3, 'LL', 'Los Lagos'),
(2, 45530, 3, 'MA', 'Magallanes y de la Antartica Chi'),
(2, 45530, 3, 'ML', 'Maule'),
(2, 45530, 3, 'RM', 'Region Metropolitana'),
(2, 45530, 3, 'TA', 'Tarapaca'),
(2, 45530, 3, 'VS', 'Valparaiso');

--  'Cameroon', 'CM', 'CMR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45540, 3, 'ADA', 'Adamawa (Adamaoua)'),
(2, 45540, 3, 'CEN', 'Centre'),
(2, 45540, 3, 'EST', 'East (Est)'),
(2, 45540, 3, 'EXN', 'Extreme North (Extreme-Nord)'),
(2, 45540, 3, 'LIT', 'Littoral'),
(2, 45540, 3, 'NOR', 'North (Nord)'),
(2, 45540, 3, 'NOT', 'Northwest (Nord-Ouest)'),
(2, 45540, 3, 'OUE', 'West (Ouest)'),
(2, 45540, 3, 'SUD', 'South (Sud)'),
(2, 45540, 3, 'SOU', 'Southwest (Sud-Ouest)');

--  'China', 'CN', 'CHN'
--  ALREADY EXISTS

--  'Colombia', 'CO', 'COL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45560, 3, 'AMZ', 'Amazonas'),
(2, 45560, 3, 'ANT', 'Antioquia'),
(2, 45560, 3, 'ARA', 'Arauca'),
(2, 45560, 3, 'ATL', 'Atlantico'),
(2, 45560, 3, 'BDC', 'Bogota D.C.'),
(2, 45560, 3, 'BOL', 'Bolivar'),
(2, 45560, 3, 'BOY', 'Boyaca'),
(2, 45560, 3, 'CAL', 'Caldas'),
(2, 45560, 3, 'CAQ', 'Caqueta'),
(2, 45560, 3, 'CAS', 'Casanare'),
(2, 45560, 3, 'CAU', 'Cauca'),
(2, 45560, 3, 'CES', 'Cesar'),
(2, 45560, 3, 'CHO', 'Choco'),
(2, 45560, 3, 'COR', 'Cordoba'),
(2, 45560, 3, 'CAM', 'Cundinamarca'),
(2, 45560, 3, 'GNA', 'Guainia'),
(2, 45560, 3, 'GJR', 'Guajira'),
(2, 45560, 3, 'GVR', 'Guaviare'),
(2, 45560, 3, 'HUI', 'Huila'),
(2, 45560, 3, 'MAG', 'Magdalena'),
(2, 45560, 3, 'MET', 'Meta'),
(2, 45560, 3, 'NAR', 'Narino'),
(2, 45560, 3, 'NDS', 'Norte de Santander'),
(2, 45560, 3, 'PUT', 'Putumayo'),
(2, 45560, 3, 'QUI', 'Quindio'),
(2, 45560, 3, 'RIS', 'Risaralda'),
(2, 45560, 3, 'SAP', 'San Andres y Providencia'),
(2, 45560, 3, 'SAN', 'Santander'),
(2, 45560, 3, 'SUC', 'Sucre'),
(2, 45560, 3, 'TOL', 'Tolima'),
(2, 45560, 3, 'VDC', 'Valle del Cauca'),
(2, 45560, 3, 'VAU', 'Vaupes'),
(2, 45560, 3, 'VIC', 'Vichada');

--  'Costa Rica', 'CR', 'CRI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45570, 3, 'AL', 'Alajuela'),
(2, 45570, 3, 'CA', 'Cartago'),
(2, 45570, 3, 'GU', 'Guanacaste'),
(2, 45570, 3, 'HE', 'Heredia'),
(2, 45570, 3, 'LI', 'Limon'),
(2, 45570, 3, 'PU', 'Puntarenas'),
(2, 45570, 3, 'SJ', 'San Jose');

--  'Cuba', 'CU', 'CUB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45580, 3, 'CA', 'Camaguey'),
(2, 45580, 3, 'CD', 'Ciego de Avila'),
(2, 45580, 3, 'CI', 'Cienfuegos'),
(2, 45580, 3, 'CH', 'Ciudad de La Habana'),
(2, 45580, 3, 'GR', 'Granma'),
(2, 45580, 3, 'GU', 'Guantanamo'),
(2, 45580, 3, 'HO', 'Holguin'),
(2, 45580, 3, 'IJ', 'Isla de la Juventud'),
(2, 45580, 3, 'LH', 'La Habana'),
(2, 45580, 3, 'LT', 'Las Tunas'),
(2, 45580, 3, 'MA', 'Matanzas'),
(2, 45580, 3, 'PR', 'Pinar del Rio'),
(2, 45580, 3, 'SS', 'Sancti Spiritus'),
(2, 45580, 3, 'SC', 'Santiago de Cuba'),
(2, 45580, 3, 'VC', 'Villa Clara');

--  'Cape Verde', 'CV', 'CPV'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45590, 3, 'BV', 'Boa Vista'),
(2, 45590, 3, 'BR', 'Brava'),
(2, 45590, 3, 'CS', 'Calheta de Sao Miguel'),
(2, 45590, 3, 'MA', 'Maio'),
(2, 45590, 3, 'MO', 'Mosteiros'),
(2, 45590, 3, 'PA', 'Paul'),
(2, 45590, 3, 'PN', 'Porto Novo'),
(2, 45590, 3, 'PR', 'Praia'),
(2, 45590, 3, 'RG', 'Ribeira Grande'),
(2, 45590, 3, 'SL', 'Sal'),
(2, 45590, 3, 'CA', 'Santa Catarina'),
(2, 45590, 3, 'CR', 'Santa Cruz'),
(2, 45590, 3, 'SD', 'Sao Domingos'),
(2, 45590, 3, 'SF', 'Sao Filipe'),
(2, 45590, 3, 'SN', 'Sao Nicolau'),
(2, 45590, 3, 'SV', 'Sao Vicente'),
(2, 45590, 3, 'TA', 'Tarrafal');

--  'Christmas Island', 'CX', 'CXR'

--  'Cyprus', 'CY', 'CYP'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45610, 3, 'F', 'Famagusta'),
(2, 45610, 3, 'K', 'Kyrenia'),
(2, 45610, 3, 'A', 'Larnaca'),
(2, 45610, 3, 'I', 'Limassol'),
(2, 45610, 3, 'N', 'Nicosia'),
(2, 45610, 3, 'P', 'Paphos');

--  'Czech Republic', 'CZ', 'CZE'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 542, 3, 'C', 'Jihocesky'),
(2, 542, 3, 'B', 'Jihomoravsky'),
(2, 542, 3, 'K', 'Karlovarsky'),
(2, 542, 3, 'H', 'Kralovehradecky'),
(2, 542, 3, 'L', 'Liberecky'),
(2, 542, 3, 'T', 'Moravskoslezsky'),
(2, 542, 3, 'M', 'Olomoucky'),
(2, 542, 3, 'E', 'Pardubicky'),
(2, 542, 3, 'P', 'Plzensky'),
(2, 542, 3, 'A', 'Praha'),
(2, 542, 3, 'S', 'Stredocesky'),
(2, 542, 3, 'U', 'Ustecky'),
(2, 542, 3, 'J', 'Vysocina'),
(2, 542, 3, 'Z', 'Zlinsky');

--  'Germany', 'DE', 'DEU'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 541, 3, 'BE', 'Berlin'),
(2, 541, 3, 'BR', 'Brandenburg'),
(2, 541, 3, 'BW', 'Baden-Wurttemberg'),
(2, 541, 3, 'BY', 'Bayern'),
(2, 541, 3, 'HB', 'Bremen'),
(2, 541, 3, 'HE', 'Hessen'),
(2, 541, 3, 'HH', 'Hamburg'),
(2, 541, 3, 'MV', 'Mecklenburg-Vorpommern'),
(2, 541, 3, 'NI', 'Niedersachsen'),
(2, 541, 3, 'NW', 'Nordrhein-Westfalen'),
(2, 541, 3, 'RP', 'Rheinland-Pfalz'),
(2, 541, 3, 'SH', 'Schleswig-Holstein'),
(2, 541, 3, 'SL', 'Saarland'),
(2, 541, 3, 'SN', 'Sachsen'),
(2, 541, 3, 'ST', 'Sachsen-Anhalt'),
(2, 541, 3, 'TH', 'Thuringen');

--  'Djibouti', 'DJ', 'DJI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45620, 3, 'S', 'Ali Sabih'),
(2, 45620, 3, 'K', 'Dikhil'),
(2, 45620, 3, 'J', 'Djibouti'),
(2, 45620, 3, 'O', 'Obock'),
(2, 45620, 3, 'T', 'Tadjoura');

--  'Denmark', 'DK', 'DNK'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 548, 3, 'AR', 'Arhus'),
(2, 548, 3, 'BH', 'Bornholm'),
(2, 548, 3, 'CO', 'Copenhagen'),
(2, 548, 3, 'FO', 'Faroe Islands'),
(2, 548, 3, 'FR', 'Frederiksborg'),
(2, 548, 3, 'FY', 'Fyn'),
(2, 548, 3, 'KO', 'Kobenhavn'),
(2, 548, 3, 'NO', 'Nordjylland'),
(2, 548, 3, 'RI', 'Ribe'),
(2, 548, 3, 'RK', 'Ringkobing'),
(2, 548, 3, 'RO', 'Roskilde'),
(2, 548, 3, 'SO', 'Sonderjylland'),
(2, 548, 3, 'ST', 'Storstrom'),
(2, 548, 3, 'VK', 'Vejle'),
(2, 548, 3, 'VJ', 'Vestsjaelland'),
(2, 548, 3, 'VB', 'Viborg');

--  'Dominica', 'DM', 'DMA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45630, 3, 'AND', 'Saint Andrew Parish'),
(2, 45630, 3, 'DAV', 'Saint David Parish'),
(2, 45630, 3, 'GEO', 'Saint George Parish'),
(2, 45630, 3, 'JOH', 'Saint John Parish'),
(2, 45630, 3, 'JOS', 'Saint Joseph Parish'),
(2, 45630, 3, 'LUK', 'Saint Luke Parish'),
(2, 45630, 3, 'MAR', 'Saint Mark Parish'),
(2, 45630, 3, 'PAT', 'Saint Patrick Parish'),
(2, 45630, 3, 'PAU', 'Saint Paul Parish'),
(2, 45630, 3, 'PET', 'Saint Peter Parish');

--  'Dominican Republic', 'DO', 'DOM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45640, 3, 'DN', 'Distrito Nacional'),
(2, 45640, 3, 'AZ', 'Azua'),
(2, 45640, 3, 'BC', 'Baoruco'),
(2, 45640, 3, 'BH', 'Barahona'),
(2, 45640, 3, 'DJ', 'Dajabon'),
(2, 45640, 3, 'DU', 'Duarte'),
(2, 45640, 3, 'EL', 'Elias Pina'),
(2, 45640, 3, 'SY', 'El Seybo'),
(2, 45640, 3, 'ET', 'Espaillat'),
(2, 45640, 3, 'HM', 'Hato Mayor'),
(2, 45640, 3, 'IN', 'Independencia'),
(2, 45640, 3, 'AL', 'La Altagracia'),
(2, 45640, 3, 'RO', 'La Romana'),
(2, 45640, 3, 'VE', 'La Vega'),
(2, 45640, 3, 'MT', 'Maria Trinidad Sanchez'),
(2, 45640, 3, 'MN', 'Monsenor Nouel'),
(2, 45640, 3, 'MC', 'Monte Cristi'),
(2, 45640, 3, 'MP', 'Monte Plata'),
(2, 45640, 3, 'PD', 'Pedernales'),
(2, 45640, 3, 'PR', 'Peravia (Bani)'),
(2, 45640, 3, 'PP', 'Puerto Plata'),
(2, 45640, 3, 'SL', 'Salcedo'),
(2, 45640, 3, 'SM', 'Samana'),
(2, 45640, 3, 'SH', 'Sanchez Ramirez'),
(2, 45640, 3, 'SC', 'San Cristobal'),
(2, 45640, 3, 'JO', 'San Jose de Ocoa'),
(2, 45640, 3, 'SJ', 'San Juan'),
(2, 45640, 3, 'PM', 'San Pedro de Macoris'),
(2, 45640, 3, 'SA', 'Santiago'),
(2, 45640, 3, 'ST', 'Santiago Rodriguez'),
(2, 45640, 3, 'SD', 'Santo Domingo'),
(2, 45640, 3, 'VA', 'Valverde');

--  'Algeria', 'DZ', 'DZA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45650, 3, 'ADR', 'Adrar'),
(2, 45650, 3, 'ADE', 'Ain Defla'),
(2, 45650, 3, 'ATE', 'Ain Temouchent'),
(2, 45650, 3, 'ALG', 'Alger'),
(2, 45650, 3, 'ANN', 'Annaba'),
(2, 45650, 3, 'BAT', 'Batna'),
(2, 45650, 3, 'BEC', 'Bechar'),
(2, 45650, 3, 'BEJ', 'Bejaia'),
(2, 45650, 3, 'BIS', 'Biskra'),
(2, 45650, 3, 'BLI', 'Blida'),
(2, 45650, 3, 'BBA', 'Bordj Bou Arreridj'),
(2, 45650, 3, 'BOA', 'Bouira'),
(2, 45650, 3, 'BMD', 'Boumerdes'),
(2, 45650, 3, 'CHL', 'Chlef'),
(2, 45650, 3, 'CON', 'Constantine'),
(2, 45650, 3, 'DJE', 'Djelfa'),
(2, 45650, 3, 'EBA', 'El Bayadh'),
(2, 45650, 3, 'EOU', 'El Oued'),
(2, 45650, 3, 'ETA', 'El Tarf'),
(2, 45650, 3, 'GHA', 'Ghardaia'),
(2, 45650, 3, 'GUE', 'Guelma'),
(2, 45650, 3, 'ILL', 'Illizi'),
(2, 45650, 3, 'JIJ', 'Jijel'),
(2, 45650, 3, 'KHE', 'Khenchela'),
(2, 45650, 3, 'LAG', 'Laghouat'),
(2, 45650, 3, 'MUA', 'Muaskar'),
(2, 45650, 3, 'MED', 'Medea'),
(2, 45650, 3, 'MIL', 'Mila'),
(2, 45650, 3, 'MOS', 'Mostaganem'),
(2, 45650, 3, 'MSI', 'M\'Sila'),
(2, 45650, 3, 'NAA', 'Naama'),
(2, 45650, 3, 'ORA', 'Oran'),
(2, 45650, 3, 'OUA', 'Ouargla'),
(2, 45650, 3, 'OEB', 'Oum el-Bouaghi'),
(2, 45650, 3, 'REL', 'Relizane'),
(2, 45650, 3, 'SAI', 'Saida'),
(2, 45650, 3, 'SET', 'Setif'),
(2, 45650, 3, 'SBA', 'Sidi Bel Abbes'),
(2, 45650, 3, 'SKI', 'Skikda'),
(2, 45650, 3, 'SAH', 'Souk Ahras'),
(2, 45650, 3, 'TAM', 'Tamanghasset'),
(2, 45650, 3, 'TEB', 'Tebessa'),
(2, 45650, 3, 'TIA', 'Tiaret'),
(2, 45650, 3, 'TIN', 'Tindouf'),
(2, 45650, 3, 'TIP', 'Tipaza'),
(2, 45650, 3, 'TIS', 'Tissemsilt'),
(2, 45650, 3, 'TOU', 'Tizi Ouzou'),
(2, 45650, 3, 'TLE', 'Tlemcen');

--  'Ecuador', 'EC', 'ECU'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45660, 3, 'AZU', 'Azuay'),
(2, 45660, 3, 'BOL', 'Bolivar'),
(2, 45660, 3, 'CAN', 'Canar'),
(2, 45660, 3, 'CAR', 'Carchi'),
(2, 45660, 3, 'CHI', 'Chimborazo'),
(2, 45660, 3, 'COT', 'Cotopaxi'),
(2, 45660, 3, 'EOR', 'El Oro'),
(2, 45660, 3, 'ESM', 'Esmeraldas'),
(2, 45660, 3, 'GPS', 'Galapagos'),
(2, 45660, 3, 'GUA', 'Guayas'),
(2, 45660, 3, 'IMB', 'Imbabura'),
(2, 45660, 3, 'LOJ', 'Loja'),
(2, 45660, 3, 'LRO', 'Los Rios'),
(2, 45660, 3, 'MAN', 'Manabi'),
(2, 45660, 3, 'MSA', 'Morona Santiago'),
(2, 45660, 3, 'NAP', 'Napo'),
(2, 45660, 3, 'ORE', 'Orellana'),
(2, 45660, 3, 'PAS', 'Pastaza'),
(2, 45660, 3, 'PIC', 'Pichincha'),
(2, 45660, 3, 'SUC', 'Sucumbios'),
(2, 45660, 3, 'TUN', 'Tungurahua'),
(2, 45660, 3, 'ZCH', 'Zamora Chinchipe');

--  'Estonia', 'EE', 'EST'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45670, 3, 'HA', 'Harjumaa (Tallinn)'),
(2, 45670, 3, 'HI', 'Hiiumaa (Kardla)'),
(2, 45670, 3, 'IV', 'Ida-Virumaa (Johvi)'),
(2, 45670, 3, 'JA', 'Jarvamaa (Paide)'),
(2, 45670, 3, 'JO', 'Jogevamaa (Jogeva)'),
(2, 45670, 3, 'LV', 'Laane-Virumaa (Rakvere)'),
(2, 45670, 3, 'LA', 'Laanemaa (Haapsalu)'),
(2, 45670, 3, 'PA', 'Parnumaa (Parnu)'),
(2, 45670, 3, 'PO', 'Polvamaa (Polva)'),
(2, 45670, 3, 'RA', 'Raplamaa (Rapla)'),
(2, 45670, 3, 'SA', 'Saaremaa (Kuessaare)'),
(2, 45670, 3, 'TA', 'Tartumaa (Tartu)'),
(2, 45670, 3, 'VA', 'Valgamaa (Valga)'),
(2, 45670, 3, 'VI', 'Viljandimaa (Viljandi)'),
(2, 45670, 3, 'VO', 'Vorumaa (Voru)');

--  'Egypt', 'EG', 'EGY'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 565, 3, 'DHY', 'Ad Daqahliyah'),
(2, 565, 3, 'BAM', 'Al Bahr al Ahmar'),
(2, 565, 3, 'BHY', 'Al Buhayrah'),
(2, 565, 3, 'FYM', 'Al Fayyum'),
(2, 565, 3, 'GBY', 'Al Gharbiyah'),
(2, 565, 3, 'IDR', 'Al Iskandariyah'),
(2, 565, 3, 'IML', 'Al Isma\'iliyah'),
(2, 565, 3, 'JZH', 'Al Jizah'),
(2, 565, 3, 'MFY', 'Al Minufiyah'),
(2, 565, 3, 'MNY', 'Al Minya'),
(2, 565, 3, 'QHR', 'Al Qahirah'),
(2, 565, 3, 'QLY', 'Al Qalyubiyah'),
(2, 565, 3, 'WJD', 'Al Wadi al Jadid'),
(2, 565, 3, 'SHQ', 'Ash Sharqiyah'),
(2, 565, 3, 'SWY', 'As Suways'),
(2, 565, 3, 'ASW', 'Aswan'),
(2, 565, 3, 'ASY', 'Asyut'),
(2, 565, 3, 'BSW', 'Bani Suwayf'),
(2, 565, 3, 'BSD', 'Bur Sa\'id'),
(2, 565, 3, 'DMY', 'Dumyat'),
(2, 565, 3, 'JNS', 'Janub Sina\''),
(2, 565, 3, 'KSH', 'Kafr ash Shaykh'),
(2, 565, 3, 'MAT', 'Matruh'),
(2, 565, 3, 'QIN', 'Qina'),
(2, 565, 3, 'SHS', 'Shamal Sina\''),
(2, 565, 3, 'SUH', 'Suhaj');

--  'Western Sahara', 'EH', 'ESH'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45690, 3, 'BO', 'Boujdour'),
(2, 45690, 3, 'ES', 'Es Semara'),
(2, 45690, 3, 'LA', 'Laayoune'),
(2, 45690, 3, 'OD', 'Oued el Dahab');

--  'Eritrea', 'ER', 'ERI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45700, 3, 'MA', 'Central (Maekel)'),
(2, 45700, 3, 'KE', 'Anseba (Keren)'),
(2, 45700, 3, 'DK', 'Southern Red Sea (Debub-Keih-Bah'),
(2, 45700, 3, 'SK', 'Northern Red Sea (Semien-Keih-Ba'),
(2, 45700, 3, 'DE', 'Southern (Debub)'),
(2, 45700, 3, 'BR', 'Gash-Barka (Barentu)');

--  'Spain', 'ES', 'ESP'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 555, 3, 'A',  'Alicante'),
(2, 555, 3, 'AL', 'Almeria'),
(2, 555, 3, 'AN', 'Andalucia'),
(2, 555, 3, 'AR', 'Aragon'),
(2, 555, 3, 'B',  'Barcelona'),
(2, 555, 3, 'BI', 'Vizcaya'),
(2, 555, 3, 'C',  'La Coruna'),
(2, 555, 3, 'CA', 'Cadiz'),
(2, 555, 3, 'CE', 'Ceuta'),
(2, 555, 3, 'CL', 'Castilla y Leon'),
(2, 555, 3, 'CM', 'Castilla-La Mancha'),
(2, 555, 3, 'CN', 'Canary Islands'),
(2, 555, 3, 'CT', 'Cataluna'),
(2, 555, 3, 'EX', 'Extremadura'),
(2, 555, 3, 'GA', 'Galicia'),
(2, 555, 3, 'IB', 'Illes Balears'),
(2, 555, 3, 'LO', 'La Rioja'),
(2, 555, 3, 'M',  'Madrid'),
(2, 555, 3, 'ML', 'Melilla'),
(2, 555, 3, 'MU', 'Murcia'),
(2, 555, 3, 'NA', 'Navarra'),
(2, 555, 3, 'O',  'Asturias'),
(2, 555, 3, 'PM', 'Balearic Islands'),
(2, 555, 3, 'PO', 'Pontevedra'),
(2, 555, 3, 'PV', 'Pais Vasco (Basque Country)'),
(2, 555, 3, 'S',  'Cantabria'),
(2, 555, 3, 'SA', 'Salamanca'),
(2, 555, 3, 'SG', 'Segovia'),
(2, 555, 3, 'SS', 'Guipuzcoa'),
(2, 555, 3, 'T',  'Tarragona'),
(2, 555, 3, 'TF', 'Santa Cruz De Tenerife'),
(2, 555, 3, 'TO', 'Toledo'),
(2, 555, 3, 'V',  'Valencia'),
(2, 555, 3, 'VA', 'Valladolid'),
(2, 555, 3, 'VC', 'Valenciana, Comunidad'),
(2, 555, 3, 'VI', 'Alava'),
(2, 555, 3, 'Z',  'Zaragoza');

--  'Ethiopia', 'ET', 'ETH'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45710, 3, 'AF', 'Afar'),
(2, 45710, 3, 'AH', 'Amhara'),
(2, 45710, 3, 'BG', 'Benishangul-Gumaz'),
(2, 45710, 3, 'GB', 'Gambela'),
(2, 45710, 3, 'HR', 'Hariai'),
(2, 45710, 3, 'OR', 'Oromia'),
(2, 45710, 3, 'SM', 'Somali'),
(2, 45710, 3, 'SN', 'Southern Nations - Nationalities'),
(2, 45710, 3, 'TG', 'Tigray'),
(2, 45710, 3, 'AA', 'Addis Ababa'),
(2, 45710, 3, 'DD', 'Dire Dawa');

--  'EU', 'European Union'

--  'Finland', 'FI', 'FIN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 549, 3, 'AL', 'Ahvenanmaan Laani'),
(2, 549, 3, 'ES', 'Etela-Suomen Laani'),
(2, 549, 3, 'IS', 'Ita-Suomen Laani'),
(2, 549, 3, 'LS', 'Lansi-Suomen Laani'),
(2, 549, 3, 'LA', 'Lapin Laani'),
(2, 549, 3, 'OU', 'Oulun Laani');

--  'Fiji', 'FJ', 'FJI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45730, 3, 'C', 'Central Division'),
(2, 45730, 3, 'N', 'Northern Division'),
(2, 45730, 3, 'E', 'Eastern Division'),
(2, 45730, 3, 'W', 'Western Division'),
(2, 45730, 3, 'R', 'Rotuma');

--  'Falkland Islands (Malvinas)', 'FK', 'FLK'

--  'Micronesia, Federated States of', 'FM', 'FSM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45750, 3, 'C', 'Chuuk'),
(2, 45750, 3, 'K', 'Kosrae'),
(2, 45750, 3, 'P', 'Pohnpei'),
(2, 45750, 3, 'Y', 'Yap');

--  'Faroe Islands', 'FO', 'FRO'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45760, 3, 'NO', 'Norderoerne'),
(2, 45760, 3, 'OS', 'Ostero'),
(2, 45760, 3, 'SA', 'Sando'),
(2, 45760, 3, 'ST', 'Stromo'),
(2, 45760, 3, 'SU', 'Sudero'),
(2, 45760, 3, 'VG', 'Vago');

--  'France', 'FR', 'FRA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 540, 3, 'AL', 'Alsace'),
(2, 540, 3, 'AQ', 'Aquitaine'),
(2, 540, 3, 'AU', 'Auvergne'),
(2, 540, 3, 'BR', 'Brittany'),
(2, 540, 3, 'BU', 'Burgundy'),
(2, 540, 3, 'CE', 'Center Loire Valley'),
(2, 540, 3, 'CH', 'Champagne-Ardenne'),
(2, 540, 3, 'CO', 'Corsica'),
(2, 540, 3, 'FR', 'Franche-Comte'),
(2, 540, 3, 'LA', 'Languedoc-Roussillon'),
(2, 540, 3, 'LI', 'Limousin'),
(2, 540, 3, 'LO', 'Lorraine'),
(2, 540, 3, 'MI', 'Midi Pyrenees'),
(2, 540, 3, 'NO', 'Nord Pas de Calais'),
(2, 540, 3, 'NL', 'Normandy - Lower'),
(2, 540, 3, 'NU', 'Normandy - Upper'),
(2, 540, 3, 'PA', 'Paris / Ill de France'),
(2, 540, 3, 'PI', 'Picardie'),
(2, 540, 3, 'PL', 'Pays de la Loire'),
(2, 540, 3, 'PO', 'Poitou Charente'),
(2, 540, 3, 'PR', 'Provence Alpes Cote d\'Azur'),
(2, 540, 3, 'RH', 'Rhone Alpes'),
(2, 540, 3, 'RI', 'Riviera'),
(2, 540, 3, 'WE', 'Western Loire Valley');

-- 'France, Metropolitan', 'FX', 'FXX'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45770, 3, 'Et', 'Etranger'),
(2, 45770, 3, '01', 'Ain'),
(2, 45770, 3, '02', 'Aisne'),
(2, 45770, 3, '03', 'Allier'),
(2, 45770, 3, '04', 'Alpes de Haute Provence'),
(2, 45770, 3, '05', 'Hautes-Alpes'),
(2, 45770, 3, '06', 'Alpes Maritimes'),
(2, 45770, 3, '07', 'Ardache'),
(2, 45770, 3, '08', 'Ardennes'),
(2, 45770, 3, '09', 'Ariage'),
(2, 45770, 3, '10', 'Aube'),
(2, 45770, 3, '11', 'Aude'),
(2, 45770, 3, '12', 'Aveyron'),
(2, 45770, 3, '13', 'Bouches du Rhane'),
(2, 45770, 3, '14', 'Calvados'),
(2, 45770, 3, '15', 'Cantal'),
(2, 45770, 3, '16', 'Charente'),
(2, 45770, 3, '17', 'Charente Maritime'),
(2, 45770, 3, '18', 'Cher'),
(2, 45770, 3, '19', 'Corraze'),
(2, 45770, 3, '2A', 'Corse du Sud'),
(2, 45770, 3, '2B', 'Haute Corse'),
(2, 45770, 3, '21', 'Cate d\'or'),
(2, 45770, 3, '22', 'Cates d\'Armor'),
(2, 45770, 3, '23', 'Creuse'),
(2, 45770, 3, '24', 'Dordogne'),
(2, 45770, 3, '25', 'Doubs'),
(2, 45770, 3, '26', 'Drame'),
(2, 45770, 3, '27', 'Eure'),
(2, 45770, 3, '28', 'Eure et Loir'),
(2, 45770, 3, '29', 'Finistare'),
(2, 45770, 3, '30', 'Gard'),
(2, 45770, 3, '31', 'Haute Garonne'),
(2, 45770, 3, '32', 'Gers'),
(2, 45770, 3, '33', 'Gironde'),
(2, 45770, 3, '34', 'Harault'),
(2, 45770, 3, '35', 'Ille et Vilaine'),
(2, 45770, 3, '36', 'Indre'),
(2, 45770, 3, '37', 'Indre et Loire'),
(2, 45770, 3, '38', 'Isare'),
(2, 45770, 3, '39', 'Jura'),
(2, 45770, 3, '40', 'Landes'),
(2, 45770, 3, '41', 'Loir et Cher'),
(2, 45770, 3, '42', 'Loire'),
(2, 45770, 3, '43', 'Haute Loire'),
(2, 45770, 3, '44', 'Loire Atlantique'),
(2, 45770, 3, '45', 'Loiret'),
(2, 45770, 3, '46', 'Lot'),
(2, 45770, 3, '47', 'Lot et Garonne'),
(2, 45770, 3, '48', 'Lozare'),
(2, 45770, 3, '49', 'Maine et Loire'),
(2, 45770, 3, '50', 'Manche'),
(2, 45770, 3, '51', 'Marne'),
(2, 45770, 3, '52', 'Haute Marne'),
(2, 45770, 3, '53', 'Mayenne'),
(2, 45770, 3, '54', 'Meurthe et Moselle'),
(2, 45770, 3, '55', 'Meuse'),
(2, 45770, 3, '56', 'Morbihan'),
(2, 45770, 3, '57', 'Moselle'),
(2, 45770, 3, '58', 'Niavre'),
(2, 45770, 3, '59', 'Nord'),
(2, 45770, 3, '60', 'Oise'),
(2, 45770, 3, '61', 'Orne'),
(2, 45770, 3, '62', 'Pas de Calais'),
(2, 45770, 3, '63', 'Puy de Dame'),
(2, 45770, 3, '64', 'Pyranaes Atlantiqu'),
(2, 45770, 3, '65', 'Hautes Pyranaes'),
(2, 45770, 3, '66', 'Pyranaes Orientale'),
(2, 45770, 3, '67', 'Bas Rhin'),
(2, 45770, 3, '68', 'Haut Rhin'),
(2, 45770, 3, '69', 'Rhane'),
(2, 45770, 3, '70', 'Haute Saane'),
(2, 45770, 3, '71', 'Saane et Loire'),
(2, 45770, 3, '72', 'Sarthe'),
(2, 45770, 3, '73', 'Savoie'),
(2, 45770, 3, '74', 'Haute Savoie'),
(2, 45770, 3, '75', 'Paris'),
(2, 45770, 3, '76', 'Seine Maritime'),
(2, 45770, 3, '77', 'Seine et Marne'),
(2, 45770, 3, '78', 'Yvelines'),
(2, 45770, 3, '79', 'Deux Savres'),
(2, 45770, 3, '80', 'Somme'),
(2, 45770, 3, '81', 'Tarn'),
(2, 45770, 3, '82', 'Tarn et Garonne'),
(2, 45770, 3, '83', 'Var'),
(2, 45770, 3, '84', 'Vaucluse'),
(2, 45770, 3, '85', 'Vendae'),
(2, 45770, 3, '86', 'Vienne'),
(2, 45770, 3, '87', 'Haute Vienne'),
(2, 45770, 3, '88', 'Vosges'),
(2, 45770, 3, '89', 'Yonne'),
(2, 45770, 3, '90', 'Territoire de Belfort'),
(2, 45770, 3, '91', 'Essonne'),
(2, 45770, 3, '92', 'Hauts de Seine'),
(2, 45770, 3, '93', 'Seine St-Denis'),
(2, 45770, 3, '94', 'Val de Marne'),
(2, 45770, 3, '95', 'Val d\'Oise');

--  'Gabon', 'GA', 'GAB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45780, 3, 'ES', 'Estuaire'),
(2, 45780, 3, 'HO', 'Haut-Ogooue'),
(2, 45780, 3, 'MO', 'Moyen-Ogooue'),
(2, 45780, 3, 'NG', 'Ngounie'),
(2, 45780, 3, 'NY', 'Nyanga'),
(2, 45780, 3, 'OI', 'Ogooue-Ivindo'),
(2, 45780, 3, 'OL', 'Ogooue-Lolo'),
(2, 45780, 3, 'OM', 'Ogooue-Maritime'),
(2, 45780, 3, 'WN', 'Woleu-Ntem');

--  'Great Britain', 'GB', 'GBR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 539, 3, 'ABN',   'Aberdeen'),
(2, 539, 3, 'ABNS',  'Aberdeenshire'),
(2, 539, 3, 'ANG',   'Anglesey'),
(2, 539, 3, 'AGS',   'Angus'),
(2, 539, 3, 'ARY',   'Argyll and Bute'),
(2, 539, 3, 'BEDS',  'Bedfordshire'),
(2, 539, 3, 'BERKS', 'Berkshire'),
(2, 539, 3, 'BLA',   'Blaenau Gwent'),
(2, 539, 3, 'BRI',   'Bridgend'),
(2, 539, 3, 'BSTL',  'Bristol'),
(2, 539, 3, 'BUCKS', 'Buckinghamshire'),
(2, 539, 3, 'CAE',   'Caerphilly'),
(2, 539, 3, 'CAMBS', 'Cambridgeshire'),
(2, 539, 3, 'CDF',   'Cardiff'),
(2, 539, 3, 'CARM',  'Carmarthenshire'),
(2, 539, 3, 'CDGN',  'Ceredigion'),
(2, 539, 3, 'CHES',  'Cheshire'),
(2, 539, 3, 'CLACK', 'Clackmannanshire'),
(2, 539, 3, 'CON',   'Conwy'),
(2, 539, 3, 'CORN',  'Cornwall'),
(2, 539, 3, 'DNBG',  'Denbighshire'),
(2, 539, 3, 'DERBY', 'Derbyshire'),
(2, 539, 3, 'DVN',   'Devon'),
(2, 539, 3, 'DOR',   'Dorset'),
(2, 539, 3, 'DGL',   'Dumfries and Galloway'),
(2, 539, 3, 'DUND',  'Dundee'),
(2, 539, 3, 'DHM',   'Durham'),
(2, 539, 3, 'ARYE',  'East Ayrshire'),
(2, 539, 3, 'DUNBE', 'East Dunbartonshire'),
(2, 539, 3, 'LOTE',  'East Lothian'),
(2, 539, 3, 'RENE',  'East Renfrewshire'),
(2, 539, 3, 'ERYS',  'East Riding of Yorkshire'),
(2, 539, 3, 'SXE',   'East Sussex'),
(2, 539, 3, 'EDIN',  'Edinburgh'),
(2, 539, 3, 'ESX',   'Essex'),
(2, 539, 3, 'FALK',  'Falkirk'),
(2, 539, 3, 'FFE',   'Fife'),
(2, 539, 3, 'FLINT', 'Flintshire'),
(2, 539, 3, 'GLAS',  'Glasgow'),
(2, 539, 3, 'GLOS',  'Gloucestershire'),
(2, 539, 3, 'LDN',   'Greater London'),
(2, 539, 3, 'MCH',   'Greater Manchester'),
(2, 539, 3, 'GDD',   'Gwynedd'),
(2, 539, 3, 'HANTS', 'Hampshire'),
(2, 539, 3, 'HWR',   'Herefordshire'),
(2, 539, 3, 'HERTS', 'Hertfordshire'),
(2, 539, 3, 'HLD',   'Highlands'),
(2, 539, 3, 'IVER',  'Inverclyde'),
(2, 539, 3, 'IOW',   'Isle of Wight'),
(2, 539, 3, 'KNT',   'Kent'),
(2, 539, 3, 'LANCS', 'Lancashire'),
(2, 539, 3, 'LEICS', 'Leicestershire'),
(2, 539, 3, 'LINCS', 'Lincolnshire'),
(2, 539, 3, 'MSY',   'Merseyside'),
(2, 539, 3, 'MERT',  'Merthyr Tydfil'),
(2, 539, 3, 'MLOT',  'Midlothian'),
(2, 539, 3, 'MMOUTH', 'Monmouthshire'),
(2, 539, 3, 'MORAY',  'Moray'),
(2, 539, 3, 'NPRTAL', 'Neath Port Talbot'),
(2, 539, 3, 'NEWPT', 'Newport'),
(2, 539, 3, 'NOR',   'Norfolk'),
(2, 539, 3, 'ARYN',  'North Ayrshire'),
(2, 539, 3, 'LANN',  'North Lanarkshire'),
(2, 539, 3, 'YSN',   'North Yorkshire'),
(2, 539, 3, 'NHM',   'Northamptonshire'),
(2, 539, 3, 'NLD',   'Northumberland'),
(2, 539, 3, 'NOT',   'Nottinghamshire'),
(2, 539, 3, 'ORK',   'Orkney Islands'),
(2, 539, 3, 'OFE',   'Oxfordshire'),
(2, 539, 3, 'PEM',   'Pembrokeshire'),
(2, 539, 3, 'PERTH', 'Perth and Kinross'),
(2, 539, 3, 'PWS',   'Powys'),
(2, 539, 3, 'REN',   'Renfrewshire'),
(2, 539, 3, 'RHON',  'Rhondda Cynon Taff'),
(2, 539, 3, 'RUT',   'Rutland'),
(2, 539, 3, 'BOR',   'Scottish Borders'),
(2, 539, 3, 'SHET',  'Shetland Islands'),
(2, 539, 3, 'SPE',   'Shropshire'),
(2, 539, 3, 'SOM',   'Somerset'),
(2, 539, 3, 'ARYS',  'South Ayrshire'),
(2, 539, 3, 'LANS',  'South Lanarkshire'),
(2, 539, 3, 'YSS',   'South Yorkshire'),
(2, 539, 3, 'SFD',   'Staffordshire'),
(2, 539, 3, 'STIR',  'Stirling'),
(2, 539, 3, 'SFK',   'Suffolk'),
(2, 539, 3, 'SRY',   'Surrey'),
(2, 539, 3, 'SWAN',  'Swansea'),
(2, 539, 3, 'TORF',  'Torfaen'),
(2, 539, 3, 'TWR',   'Tyne and Wear'),
(2, 539, 3, 'VGLAM', 'Vale of Glamorgan'),
(2, 539, 3, 'WARKS', 'Warwickshire'),
(2, 539, 3, 'WDUN',  'West Dunbartonshire'),
(2, 539, 3, 'WLOT',  'West Lothian'),
(2, 539, 3, 'WMD',   'West Midlands'),
(2, 539, 3, 'SXW',   'West Sussex'),
(2, 539, 3, 'YSW',   'West Yorkshire'),
(2, 539, 3, 'WIL',   'Western Isles'),
(2, 539, 3, 'WLT',   'Wiltshire'),
(2, 539, 3, 'WORCS', 'Worcestershire'),
(2, 539, 3, 'WRX',   'Wrexham');

--  'Grenada', 'GD', 'GRD'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45790, 3, 'A', 'Saint Andrew'),
(2, 45790, 3, 'D', 'Saint David'),
(2, 45790, 3, 'G', 'Saint George'),
(2, 45790, 3, 'J', 'Saint John'),
(2, 45790, 3, 'M', 'Saint Mark'),
(2, 45790, 3, 'P', 'Saint Patrick'),
(2, 45790, 3, 'C', 'Carriacou'),
(2, 45790, 3, 'Q', 'Petit Martinique');

--  'Georgia', 'GE', 'GEO'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45800, 3, 'AB', 'Abkhazia'),
(2, 45800, 3, 'AJ', 'Ajaria'),
(2, 45800, 3, 'TB', 'Tbilisi'),
(2, 45800, 3, 'GU', 'Guria'),
(2, 45800, 3, 'IM', 'Imereti'),
(2, 45800, 3, 'KA', 'Kakheti'),
(2, 45800, 3, 'KK', 'Kvemo Kartli'),
(2, 45800, 3, 'MM', 'Mtskheta-Mtianeti'),
(2, 45800, 3, 'RL', 'Racha Lechkhumi and Kvemo Svanet'),
(2, 45800, 3, 'SZ', 'Samegrelo-Zemo Svaneti'),
(2, 45800, 3, 'SJ', 'Samtskhe-Javakheti'),
(2, 45800, 3, 'SK', 'Shida Kartli');

--  'French Guiana', 'GF', 'GUF'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45810, 3, 'CY', 'Cayenne'),
(2, 45810, 3, 'SL', 'Saint-Laurent-du-Maroni');

--  'GG', 'Guernsey'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45820, 3, 'AL', 'Alderney'),
(2, 45820, 3, 'BQ', 'Brecqhou'),
(2, 45820, 3, 'CA', 'Castel'),
(2, 45820, 3, 'FO', 'Forest'),
(2, 45820, 3, 'HM', 'Herm'),
(2, 45820, 3, 'JT', 'Jethou'),
(2, 45820, 3, 'LH', 'Lihou'),
(2, 45820, 3, 'AN', 'Saint Andrew'),
(2, 45820, 3, 'MA', 'Saint Martin'),
(2, 45820, 3, 'PP', 'Saint Peter Port'),
(2, 45820, 3, 'PB', 'Saint Pierre du Bois'),
(2, 45820, 3, 'SM', 'Saint Sampson'),
(2, 45820, 3, 'SV', 'Saint Saviour'),
(2, 45820, 3, 'SK', 'Sark'),
(2, 45820, 3, 'TV', 'Torteval'),
(2, 45820, 3, 'VA', 'Vale');

--  'Ghana', 'GH', 'GHA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45830, 3, 'AS', 'Ashanti Region'),
(2, 45830, 3, 'BA', 'Brong-Ahafo Region'),
(2, 45830, 3, 'CE', 'Central Region'),
(2, 45830, 3, 'EA', 'Eastern Region'),
(2, 45830, 3, 'GA', 'Greater Accra Region'),
(2, 45830, 3, 'NO', 'Northern Region'),
(2, 45830, 3, 'UE', 'Upper East Region'),
(2, 45830, 3, 'UW', 'Upper West Region'),
(2, 45830, 3, 'VO', 'Volta Region'),
(2, 45830, 3, 'WE', 'Western Region');

--  'Gibraltar', 'GI', 'GIB'

--  'Greenland', 'GL', 'GRL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45850, 3, 'A', 'Avannaa'),
(2, 45850, 3, 'T', 'Tunu'),
(2, 45850, 3, 'K', 'Kitaa');

--  'Gambia', 'GM', 'GMB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45860, 3, 'BJ', 'Banjul'),
(2, 45860, 3, 'BS', 'Basse'),
(2, 45860, 3, 'BR', 'Brikama'),
(2, 45860, 3, 'JA', 'Janjangbure'),
(2, 45860, 3, 'KA', 'Kanifeng'),
(2, 45860, 3, 'KE', 'Kerewan'),
(2, 45860, 3, 'KU', 'Kuntaur'),
(2, 45860, 3, 'MA', 'Mansakonko'),
(2, 45860, 3, 'LR', 'Lower River'),
(2, 45860, 3, 'CR', 'Central River'),
(2, 45860, 3, 'NB', 'North Bank'),
(2, 45860, 3, 'UR', 'Upper River'),
(2, 45860, 3, 'WE', 'Western');

--  'Guinea', 'GN', 'GIN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45870, 3, 'CNK', 'Conakry'),
(2, 45870, 3, 'BYL', 'Beyla'),
(2, 45870, 3, 'BFA', 'Boffa'),
(2, 45870, 3, 'BOK', 'Boke'),
(2, 45870, 3, 'COY', 'Coyah'),
(2, 45870, 3, 'DBL', 'Dabola'),
(2, 45870, 3, 'DLB', 'Dalaba'),
(2, 45870, 3, 'DGR', 'Dinguiraye'),
(2, 45870, 3, 'DBR', 'Dubreka'),
(2, 45870, 3, 'FRN', 'Faranah'),
(2, 45870, 3, 'FRC', 'Forecariah'),
(2, 45870, 3, 'FRI', 'Fria'),
(2, 45870, 3, 'GAO', 'Gaoual'),
(2, 45870, 3, 'GCD', 'Gueckedou'),
(2, 45870, 3, 'KNK', 'Kankan'),
(2, 45870, 3, 'KRN', 'Kerouane'),
(2, 45870, 3, 'KND', 'Kindia'),
(2, 45870, 3, 'KSD', 'Kissidougou'),
(2, 45870, 3, 'KBA', 'Koubia'),
(2, 45870, 3, 'KDA', 'Koundara'),
(2, 45870, 3, 'KRA', 'Kouroussa'),
(2, 45870, 3, 'LAB', 'Labe'),
(2, 45870, 3, 'LLM', 'Lelouma'),
(2, 45870, 3, 'LOL', 'Lola'),
(2, 45870, 3, 'MCT', 'Macenta'),
(2, 45870, 3, 'MAL', 'Mali'),
(2, 45870, 3, 'MAM', 'Mamou'),
(2, 45870, 3, 'MAN', 'Mandiana'),
(2, 45870, 3, 'NZR', 'Nzerekore'),
(2, 45870, 3, 'PIT', 'Pita'),
(2, 45870, 3, 'SIG', 'Siguiri'),
(2, 45870, 3, 'TLM', 'Telimele'),
(2, 45870, 3, 'TOG', 'Tougue'),
(2, 45870, 3, 'YOM', 'Yomou');

--  'Guadeloupe', 'GP', 'GLP'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45880, 3, 'BT', 'Basse-Terre'),
(2, 45880, 3, 'PP', 'Pointe-a-Pitre');

--  'Equatorial Guinea', 'GQ', 'GNQ'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45890, 3, 'AN', 'Annobon'),
(2, 45890, 3, 'BN', 'Bioko Norte'),
(2, 45890, 3, 'BS', 'Bioko Sur'),
(2, 45890, 3, 'CS', 'Centro Sur'),
(2, 45890, 3, 'KN', 'Kie-Ntem'),
(2, 45890, 3, 'LI', 'Litoral'),
(2, 45890, 3, 'WN', 'Wele-Nzas');

--  'Greece', 'GR', 'GRC'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 545, 3, 'AT', 'Attica'),
(2, 545, 3, 'CN', 'Central Greece'),
(2, 545, 3, 'CM', 'Central Macedonia'),
(2, 545, 3, 'CR', 'Crete'),
(2, 545, 3, 'EM', 'East Macedonia and Thrace'),
(2, 545, 3, 'EP', 'Epirus'),
(2, 545, 3, 'II', 'Ionian Islands'),
(2, 545, 3, 'NA', 'North Aegean'),
(2, 545, 3, 'PP', 'Peloponnesos'),
(2, 545, 3, 'SA', 'South Aegean'),
(2, 545, 3, 'TH', 'Thessaly'),
(2, 545, 3, 'WG', 'West Greece'),
(2, 545, 3, 'WM', 'West Macedonia');

--  'South Georgia and the South Sandwich Islands', 'GS', 'SGS'

--  'Guatemala', 'GT', 'GTM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45910, 3, 'AV', 'Alta Verapaz'),
(2, 45910, 3, 'BV', 'Baja Verapaz'),
(2, 45910, 3, 'CM', 'Chimaltenango'),
(2, 45910, 3, 'CQ', 'Chiquimula'),
(2, 45910, 3, 'PE', 'El Peten'),
(2, 45910, 3, 'PR', 'El Progreso'),
(2, 45910, 3, 'QC', 'El Quiche'),
(2, 45910, 3, 'ES', 'Escuintla'),
(2, 45910, 3, 'GU', 'Guatemala'),
(2, 45910, 3, 'HU', 'Huehuetenango'),
(2, 45910, 3, 'IZ', 'Izabal'),
(2, 45910, 3, 'JA', 'Jalapa'),
(2, 45910, 3, 'JU', 'Jutiapa'),
(2, 45910, 3, 'QZ', 'Quetzaltenango'),
(2, 45910, 3, 'RE', 'Retalhuleu'),
(2, 45910, 3, 'ST', 'Sacatepequez'),
(2, 45910, 3, 'SM', 'San Marcos'),
(2, 45910, 3, 'SR', 'Santa Rosa'),
(2, 45910, 3, 'SO', 'Solola'),
(2, 45910, 3, 'SU', 'Suchitepequez'),
(2, 45910, 3, 'TO', 'Totonicapan'),
(2, 45910, 3, 'ZA', 'Zacapa');

--  'Guam', 'GU', 'GUM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45920, 3, 'AH', 'Agana Heights'),
(2, 45920, 3, 'AT', 'Agat'),
(2, 45920, 3, 'AS', 'Asan'),
(2, 45920, 3, 'BA', 'Barrigada'),
(2, 45920, 3, 'CP', 'Chalan-Pago-Ordot'),
(2, 45920, 3, 'DD', 'Dededo'),
(2, 45920, 3, 'AN', 'Hagatna'),
(2, 45920, 3, 'IN', 'Inarajan'),
(2, 45920, 3, 'MA', 'Mangilao'),
(2, 45920, 3, 'ME', 'Merizo'),
(2, 45920, 3, 'MT', 'Mongmong-Toto-Maite'),
(2, 45920, 3, 'PI', 'Piti'),
(2, 45920, 3, 'SR', 'Santa Rita'),
(2, 45920, 3, 'SJ', 'Sinajana'),
(2, 45920, 3, 'TF', 'Talofofo'),
(2, 45920, 3, 'TM', 'Tamuning'),
(2, 45920, 3, 'UM', 'Umatac'),
(2, 45920, 3, 'YG', 'Yigo'),
(2, 45920, 3, 'YN', 'Yona');

--  'Guinea-Bissau', 'GW', 'GNB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45930, 3, 'BF', 'Bafata Region'),
(2, 45930, 3, 'BB', 'Biombo Region'),
(2, 45930, 3, 'BS', 'Bissau Region'),
(2, 45930, 3, 'BL', 'Bolama Region'),
(2, 45930, 3, 'CA', 'Cacheu Region'),
(2, 45930, 3, 'GA', 'Gabu Region'),
(2, 45930, 3, 'OI', 'Oio Region'),
(2, 45930, 3, 'QU', 'Quinara Region'),
(2, 45930, 3, 'TO', 'Tombali Region');

--  'Guyana', 'GY', 'GUY'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45940, 3, 'BW', 'Barima-Waini'),
(2, 45940, 3, 'CM', 'Cuyuni-Mazaruni'),
(2, 45940, 3, 'DM', 'Demerara-Mahaica'),
(2, 45940, 3, 'EC', 'East Berbice-Corentyne'),
(2, 45940, 3, 'EW', 'Essequibo Islands-West Demerara'),
(2, 45940, 3, 'MB', 'Mahaica-Berbice'),
(2, 45940, 3, 'PM', 'Pomeroon-Supenaam'),
(2, 45940, 3, 'PI', 'Potaro-Siparuni'),
(2, 45940, 3, 'UD', 'Upper Demerara-Berbice'),
(2, 45940, 3, 'UT', 'Upper Takutu-Upper Essequibo');

--  'Hong Kong', 'HK', 'HKG'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45950, 3, 'HCW', 'Central and Western Hong Kong Is'),
(2, 45950, 3, 'HEA', 'Eastern Hong Kong Island'),
(2, 45950, 3, 'HSO', 'Southern Hong Kong Island'),
(2, 45950, 3, 'HWC', 'Wan Chai Hong Kong Island'),
(2, 45950, 3, 'KKC', 'Kowloon City Kowloon'),
(2, 45950, 3, 'KKT', 'Kwun Tong Kowloon'),
(2, 45950, 3, 'KSS', 'Sham Shui Po Kowloon'),
(2, 45950, 3, 'KWT', 'Wong Tai Sin Kowloon'),
(2, 45950, 3, 'KYT', 'Yau Tsim Mong Kowloon'),
(2, 45950, 3, 'NIS', 'Islands New Territories'),
(2, 45950, 3, 'NKT', 'Kwai Tsing New Territories'),
(2, 45950, 3, 'NNO', 'North New Territories'),
(2, 45950, 3, 'NSK', 'Sai Kung New Territories'),
(2, 45950, 3, 'NST', 'Sha Tin New Territories'),
(2, 45950, 3, 'NTP', 'Tai Po New Territories'),
(2, 45950, 3, 'NTW', 'Tsuen Wan New Territories'),
(2, 45950, 3, 'NTM', 'Tuen Mun New Territories'),
(2, 45950, 3, 'NYL', 'Yuen Long New Territories');

--  'Heard and McDonald Islands', 'HM', 'HMD'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45960, 3, 'F', 'Flat Island'),
(2, 45960, 3, 'M', 'McDonald Island'),
(2, 45960, 3, 'S', 'Shag Island'),
(2, 45960, 3, 'H', 'Heard Island');

--  'Honduras', 'HN', 'HND'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45970, 3, 'AT', 'Atlantida'),
(2, 45970, 3, 'CH', 'Choluteca'),
(2, 45970, 3, 'CL', 'Colon'),
(2, 45970, 3, 'CM', 'Comayagua'),
(2, 45970, 3, 'CP', 'Copan'),
(2, 45970, 3, 'CR', 'Cortes'),
(2, 45970, 3, 'PA', 'El Paraiso'),
(2, 45970, 3, 'FM', 'Francisco Morazan'),
(2, 45970, 3, 'GD', 'Gracias a Dios'),
(2, 45970, 3, 'IN', 'Intibuca'),
(2, 45970, 3, 'IB', 'Islas de la Bahia (Bay Islands)'),
(2, 45970, 3, 'PZ', 'La Paz'),
(2, 45970, 3, 'LE', 'Lempira'),
(2, 45970, 3, 'OC', 'Ocotepeque'),
(2, 45970, 3, 'OL', 'Olancho'),
(2, 45970, 3, 'SB', 'Santa Barbara'),
(2, 45970, 3, 'VA', 'Valle'),
(2, 45970, 3, 'YO', 'Yoro');

--  'Croatia', 'HR', 'HRV'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45980, 3, 'BB', 'Bjelovar-Bilogora'),
(2, 45980, 3, 'CZ', 'City of Zagreb'),
(2, 45980, 3, 'DN', 'Dubrovnik-Neretva'),
(2, 45980, 3, 'IS', 'Istra'),
(2, 45980, 3, 'KA', 'Karlovac'),
(2, 45980, 3, 'KK', 'Koprivnica-Krizevci'),
(2, 45980, 3, 'KZ', 'Krapina-Zagorje'),
(2, 45980, 3, 'LS', 'Lika-Senj'),
(2, 45980, 3, 'ME', 'Medimurje'),
(2, 45980, 3, 'OB', 'Osijek-Baranja'),
(2, 45980, 3, 'PS', 'Pozega-Slavonia'),
(2, 45980, 3, 'PG', 'Primorje-Gorski Kotar'),
(2, 45980, 3, 'SI', 'Sibenik'),
(2, 45980, 3, 'SM', 'Sisak-Moslavina'),
(2, 45980, 3, 'SB', 'Slavonski Brod-Posavina'),
(2, 45980, 3, 'SD', 'Split-Dalmatia'),
(2, 45980, 3, 'VA', 'Varazdin'),
(2, 45980, 3, 'VP', 'Virovitica-Podravina'),
(2, 45980, 3, 'VS', 'Vukovar-Srijem'),
(2, 45980, 3, 'ZK', 'Zadar-Knin'),
(2, 45980, 3, 'ZA', 'Zagreb');

--  'Haiti', 'HT', 'HTI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 45990, 3, 'AR', 'Artibonite'),
(2, 45990, 3, 'CE', 'Centre'),
(2, 45990, 3, 'GA', 'Grand\'Anse'),
(2, 45990, 3, 'ND', 'Nord'),
(2, 45990, 3, 'NE', 'Nord-Est'),
(2, 45990, 3, 'NO', 'Nord-Ouest'),
(2, 45990, 3, 'OU', 'Ouest'),
(2, 45990, 3, 'SD', 'Sud'),
(2, 45990, 3, 'SE', 'Sud-Est');

--  'Hungary', 'HU', 'HUN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46000, 3, 'BK', 'Bacs-Kiskun'),
(2, 46000, 3, 'BA', 'Baranya'),
(2, 46000, 3, 'BE', 'Bekes'),
(2, 46000, 3, 'BS', 'Bekescsaba'),
(2, 46000, 3, 'BZ', 'Borsod-Abauj-Zemplen'),
(2, 46000, 3, 'BU', 'Budapest'),
(2, 46000, 3, 'CS', 'Csongrad'),
(2, 46000, 3, 'DE', 'Debrecen'),
(2, 46000, 3, 'DU', 'Dunaujvaros'),
(2, 46000, 3, 'EG', 'Eger'),
(2, 46000, 3, 'FE', 'Fejer'),
(2, 46000, 3, 'GY', 'Gyor'),
(2, 46000, 3, 'GM', 'Gyor-Moson-Sopron'),
(2, 46000, 3, 'HB', 'Hajdu-Bihar'),
(2, 46000, 3, 'HE', 'Heves'),
(2, 46000, 3, 'HO', 'Hodmezovasarhely'),
(2, 46000, 3, 'JN', 'Jasz-Nagykun-Szolnok'),
(2, 46000, 3, 'KA', 'Kaposvar'),
(2, 46000, 3, 'KE', 'Kecskemet'),
(2, 46000, 3, 'KO', 'Komarom-Esztergom'),
(2, 46000, 3, 'MI', 'Miskolc'),
(2, 46000, 3, 'NA', 'Nagykanizsa'),
(2, 46000, 3, 'NO', 'Nograd'),
(2, 46000, 3, 'NY', 'Nyiregyhaza'),
(2, 46000, 3, 'PE', 'Pecs'),
(2, 46000, 3, 'PS', 'Pest'),
(2, 46000, 3, 'SO', 'Somogy'),
(2, 46000, 3, 'SP', 'Sopron'),
(2, 46000, 3, 'SS', 'Szabolcs-Szatmar-Bereg'),
(2, 46000, 3, 'SZ', 'Szeged'),
(2, 46000, 3, 'SE', 'Szekesfehervar'),
(2, 46000, 3, 'SL', 'Szolnok'),
(2, 46000, 3, 'SM', 'Szombathely'),
(2, 46000, 3, 'TA', 'Tatabanya'),
(2, 46000, 3, 'TO', 'Tolna'),
(2, 46000, 3, 'VA', 'Vas'),
(2, 46000, 3, 'VE', 'Veszprem'),
(2, 46000, 3, 'ZA', 'Zala'),
(2, 46000, 3, 'ZZ', 'Zalaegerszeg');

--  'Indonesia', 'ID', 'IDN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46010, 3, 'AC', 'Aceh'),
(2, 46010, 3, 'BA', 'Bali'),
(2, 46010, 3, 'BT', 'Banten'),
(2, 46010, 3, 'BE', 'Bengkulu'),
(2, 46010, 3, 'BD', 'BoDeTaBek'),
(2, 46010, 3, 'GO', 'Gorontalo'),
(2, 46010, 3, 'JK', 'Jakarta Raya'),
(2, 46010, 3, 'JA', 'Jambi'),
(2, 46010, 3, 'JB', 'Jawa Barat'),
(2, 46010, 3, 'JT', 'Jawa Tengah'),
(2, 46010, 3, 'JI', 'Jawa Timur'),
(2, 46010, 3, 'KB', 'Kalimantan Barat'),
(2, 46010, 3, 'KS', 'Kalimantan Selatan'),
(2, 46010, 3, 'KT', 'Kalimantan Tengah'),
(2, 46010, 3, 'KI', 'Kalimantan Timur'),
(2, 46010, 3, 'BB', 'Kepulauan Bangka Belitung'),
(2, 46010, 3, 'LA', 'Lampung'),
(2, 46010, 3, 'MA', 'Maluku'),
(2, 46010, 3, 'MU', 'Maluku Utara'),
(2, 46010, 3, 'NB', 'Nusa Tenggara Barat'),
(2, 46010, 3, 'NT', 'Nusa Tenggara Timur'),
(2, 46010, 3, 'PA', 'Papua'),
(2, 46010, 3, 'RI', 'Riau'),
(2, 46010, 3, 'SN', 'Sulawesi Selatan'),
(2, 46010, 3, 'ST', 'Sulawesi Tengah'),
(2, 46010, 3, 'SG', 'Sulawesi Tenggara'),
(2, 46010, 3, 'SA', 'Sulawesi Utara'),
(2, 46010, 3, 'SB', 'Sumatera Barat'),
(2, 46010, 3, 'SS', 'Sumatera Selatan'),
(2, 46010, 3, 'SU', 'Sumatera Utara'),
(2, 46010, 3, 'YO', 'Yogyakarta');

--  'Ireland', 'IE', 'IRL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 550, 3, 'CA', 'Carlow'),
(2, 550, 3, 'CV', 'Cavan'),
(2, 550, 3, 'CL', 'Clare'),
(2, 550, 3, 'CO', 'Cork'),
(2, 550, 3, 'DO', 'Donegal'),
(2, 550, 3, 'DU', 'Dublin'),
(2, 550, 3, 'GA', 'Galway'),
(2, 550, 3, 'KE', 'Kerry'),
(2, 550, 3, 'KI', 'Kildare'),
(2, 550, 3, 'KL', 'Kilkenny'),
(2, 550, 3, 'LA', 'Laois'),
(2, 550, 3, 'LE', 'Leitrim'),
(2, 550, 3, 'LI', 'Limerick'),
(2, 550, 3, 'LO', 'Longford'),
(2, 550, 3, 'LU', 'Louth'),
(2, 550, 3, 'MA', 'Mayo'),
(2, 550, 3, 'ME', 'Meath'),
(2, 550, 3, 'MO', 'Monaghan'),
(2, 550, 3, 'OF', 'Offaly'),
(2, 550, 3, 'RO', 'Roscommon'),
(2, 550, 3, 'SL', 'Sligo'),
(2, 550, 3, 'TI', 'Tipperary'),
(2, 550, 3, 'WA', 'Waterford'),
(2, 550, 3, 'WE', 'Westmeath'),
(2, 550, 3, 'WX', 'Wexford'),
(2, 550, 3, 'WI', 'Wicklow');

--  'Israel', 'IL', 'ISR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46020, 3, 'BS', 'Be\'er Sheva'),
(2, 46020, 3, 'BH', 'Bika\'at Hayarden'),
(2, 46020, 3, 'EA', 'Eilat and Arava'),
(2, 46020, 3, 'GA', 'Galil'),
(2, 46020, 3, 'HA', 'Haifa'),
(2, 46020, 3, 'JM', 'Jehuda Mountains'),
(2, 46020, 3, 'JE', 'Jerusalem'),
(2, 46020, 3, 'NE', 'Negev'),
(2, 46020, 3, 'SE', 'Semaria'),
(2, 46020, 3, 'SH', 'Sharon'),
(2, 46020, 3, 'TA', 'Tel Aviv (Gosh Dan)');

--  'IM', 'Isle of Man'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46030, 3, 'AY', 'Ayre'),
(2, 46030, 3, 'GR', 'Garff'),
(2, 46030, 3, 'GB', 'Glenfaba'),
(2, 46030, 3, 'MC', 'Michael'),
(2, 46030, 3, 'MD', 'Middle'),
(2, 46030, 3, 'RU', 'Rushen');

--  'India', 'IN', 'IND'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 559, 3, 'AN', 'Andaman and Nicobar Islands'),
(2, 559, 3, 'AP', 'Andhra Pradesh'),
(2, 559, 3, 'AR', 'Arunachal Pradesh'),
(2, 559, 3, 'AS', 'Assam'),
(2, 559, 3, 'BI', 'Bihar'),
(2, 559, 3, 'CH', 'Chandigarh'),
(2, 559, 3, 'CT', 'Chhattisgarh'),
(2, 559, 3, 'DA', 'Dadar and Nagar Haveli'),
(2, 559, 3, 'DM', 'Daman and Diu'),
(2, 559, 3, 'DE', 'Delhi'),
(2, 559, 3, 'GO', 'Goa'),
(2, 559, 3, 'GU', 'Gujarat'),
(2, 559, 3, 'HA', 'Haryana'),
(2, 559, 3, 'HP', 'Himachal Pradesh'),
(2, 559, 3, 'HR', 'Haryana'),
(2, 559, 3, 'JH', 'Jharkhand'),
(2, 559, 3, 'JA', 'Jammu and Kashmir'),
(2, 559, 3, 'KA', 'Karnataka'),
(2, 559, 3, 'KE', 'Kerala'),
(2, 559, 3, 'LI', 'Lakshadweep Islands'),
(2, 559, 3, 'MP', 'Madhya Pradesh'),
(2, 559, 3, 'MA', 'Maharashtra'),
(2, 559, 3, 'MN', 'Manipur'),
(2, 559, 3, 'ME', 'Meghalaya'),
(2, 559, 3, 'MI', 'Mizoram'),
(2, 559, 3, 'NA', 'Nagaland'),
(2, 559, 3, 'OR', 'Orissa'),
(2, 559, 3, 'PO', 'Pondicherry'),
(2, 559, 3, 'PU', 'Punjab'),
(2, 559, 3, 'RA', 'Rajasthan'),
(2, 559, 3, 'SI', 'Sikkim'),
(2, 559, 3, 'TN', 'Tamil Nadu'),
(2, 559, 3, 'TR', 'Tripura'),
(2, 559, 3, 'UP', 'Uttar Pradesh'),
(2, 559, 3, 'WB', 'West Bengal');

--  'British Indian Ocean Territory', 'IO', 'IOT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46040, 3, 'PB', 'Peros Banhos'),
(2, 46040, 3, 'SI', 'Salomon Islands'),
(2, 46040, 3, 'NI', 'Nelsons Island'),
(2, 46040, 3, 'TB', 'Three Brothers'),
(2, 46040, 3, 'EA', 'Eagle Islands'),
(2, 46040, 3, 'DI', 'Danger Island'),
(2, 46040, 3, 'EG', 'Egmont Islands'),
(2, 46040, 3, 'DG', 'Diego Garcia');

--  'Iraq', 'IQ', 'IRQ'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46050, 3, 'BD', 'Baghdad'),
(2, 46050, 3, 'SD', 'Salah ad Din'),
(2, 46050, 3, 'DY', 'Diyala'),
(2, 46050, 3, 'WS', 'Wasit'),
(2, 46050, 3, 'MY', 'Maysan'),
(2, 46050, 3, 'BA', 'Al Basrah'),
(2, 46050, 3, 'DQ', 'Dhi Qar'),
(2, 46050, 3, 'MU', 'Al Muthanna'),
(2, 46050, 3, 'QA', 'Al Qadisyah'),
(2, 46050, 3, 'BB', 'Babil'),
(2, 46050, 3, 'KB', 'Al Karbala'),
(2, 46050, 3, 'NJ', 'An Najaf'),
(2, 46050, 3, 'AB', 'Al Anbar'),
(2, 46050, 3, 'NN', 'Ninawa'),
(2, 46050, 3, 'DH', 'Dahuk'),
(2, 46050, 3, 'AL', 'Arbil'),
(2, 46050, 3, 'TM', 'At Ta\'mim'),
(2, 46050, 3, 'SL', 'As Sulaymaniyah');

--  'Iran', 'IR', 'IRN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46060, 3, 'TEH', 'Tehran'),
(2, 46060, 3, 'QOM', 'Qom'),
(2, 46060, 3, 'MKZ', 'Markazi'),
(2, 46060, 3, 'QAZ', 'Qazvin'),
(2, 46060, 3, 'GIL', 'Gilan'),
(2, 46060, 3, 'ARD', 'Ardabil'),
(2, 46060, 3, 'ZAN', 'Zanjan'),
(2, 46060, 3, 'EAZ', 'East Azarbaijan'),
(2, 46060, 3, 'WEZ', 'West Azarbaijan'),
(2, 46060, 3, 'KRD', 'Kurdistan'),
(2, 46060, 3, 'HMD', 'Hamadan'),
(2, 46060, 3, 'KRM', 'Kermanshah'),
(2, 46060, 3, 'ILM', 'Ilam'),
(2, 46060, 3, 'LRS', 'Lorestan'),
(2, 46060, 3, 'KZT', 'Khuzestan'),
(2, 46060, 3, 'CMB', 'Chahar Mahaal and Bakhtiari'),
(2, 46060, 3, 'KBA', 'Kohkiluyeh and Buyer Ahmad'),
(2, 46060, 3, 'BSH', 'Bushehr'),
(2, 46060, 3, 'FAR', 'Fars'),
(2, 46060, 3, 'HRM', 'Hormozgan'),
(2, 46060, 3, 'SBL', 'Sistan and Baluchistan'),
(2, 46060, 3, 'KRB', 'Kerman'),
(2, 46060, 3, 'YZD', 'Yazd'),
(2, 46060, 3, 'EFH', 'Esfahan'),
(2, 46060, 3, 'SMN', 'Semnan'),
(2, 46060, 3, 'MZD', 'Mazandaran'),
(2, 46060, 3, 'GLS', 'Golestan'),
(2, 46060, 3, 'NKH', 'North Khorasan'),
(2, 46060, 3, 'RKH', 'Razavi Khorasan'),
(2, 46060, 3, 'SKH', 'South Khorasan');

--  'Iceland', 'IS', 'ISL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46070, 3, 'AL', 'Austurland'),
(2, 46070, 3, 'HF', 'Hofuoborgarsvaeoi'),
(2, 46070, 3, 'NE', 'Norourland eystra'),
(2, 46070, 3, 'NV', 'Norourland vestra'),
(2, 46070, 3, 'SL', 'Suourland'),
(2, 46070, 3, 'SN', 'Suournes'),
(2, 46070, 3, 'VF', 'Vestfiroir'),
(2, 46070, 3, 'VL', 'Vesturland');

--  'Italy', 'IT', 'ITA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 552, 3, 'AG', 'Agrigento'),
(2, 552, 3, 'AL', 'Alessandria'),
(2, 552, 3, 'AN', 'Ancona'),
(2, 552, 3, 'AO', 'Aosta'),
(2, 552, 3, 'AP', 'Ascoli Piceno'),
(2, 552, 3, 'AQ', 'L''Aquila'),
(2, 552, 3, 'AR', 'Arezzo'),
(2, 552, 3, 'AT', 'Asti'),
(2, 552, 3, 'AV', 'Avellino'),
(2, 552, 3, 'BA', 'Bari'),
(2, 552, 3, 'BG', 'Bergamo'),
(2, 552, 3, 'BI', 'Biella'),
(2, 552, 3, 'BL', 'Belluno'),
(2, 552, 3, 'BN', 'Benevento'),
(2, 552, 3, 'BO', 'Bologna'),
(2, 552, 3, 'BR', 'Brindisi'),
(2, 552, 3, 'BS', 'Brescia'),
(2, 552, 3, 'BZ', 'Bolzano'),
(2, 552, 3, 'CA', 'Cagliari'),
(2, 552, 3, 'CB', 'Campobasso'),
(2, 552, 3, 'CE', 'Caserta'),
(2, 552, 3, 'CH', 'Chieti'),
(2, 552, 3, 'CL', 'Caltanissetta'),
(2, 552, 3, 'CN', 'Cuneo'),
(2, 552, 3, 'CO', 'Como'),
(2, 552, 3, 'CR', 'Cremona'),
(2, 552, 3, 'CS', 'Cosenza'),
(2, 552, 3, 'CT', 'Catania'),
(2, 552, 3, 'CZ', 'Catanzaro'),
(2, 552, 3, 'EN', 'Enna'),
(2, 552, 3, 'FE', 'Ferrara'),
(2, 552, 3, 'FG', 'Foggia'),
(2, 552, 3, 'FI', 'Florence'),
(2, 552, 3, 'FO', 'Forli-Cesena'),
(2, 552, 3, 'FR', 'Frosinone'),
(2, 552, 3, 'GE', 'Genoa'),
(2, 552, 3, 'GO', 'Gorizia'),
(2, 552, 3, 'GR', 'Grosseto'),
(2, 552, 3, 'IM', 'Imperia'),
(2, 552, 3, 'IS', 'Isernia'),
(2, 552, 3, 'KR', 'Crotone');

--  'JE', 'Jersey'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46080, 3, 'GR', 'Grouville'),
(2, 46080, 3, 'BR', 'Saint Brelade'),
(2, 46080, 3, 'CL', 'Saint Clement'),
(2, 46080, 3, 'HE', 'Saint Helier'),
(2, 46080, 3, 'JO', 'Saint John'),
(2, 46080, 3, 'LA', 'Saint Lawrence'),
(2, 46080, 3, 'MT', 'Saint Martin'),
(2, 46080, 3, 'MY', 'Saint Mary'),
(2, 46080, 3, 'OU', 'Saint Ouen'),
(2, 46080, 3, 'PE', 'Saint Peter'),
(2, 46080, 3, 'SA', 'Saint Saviour'),
(2, 46080, 3, 'TR', 'Trinity');

--  'Jamaica', 'JM', 'JAM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46090, 3, 'CLA', 'Clarendon Parish'),
(2, 46090, 3, 'HAN', 'Hanover Parish'),
(2, 46090, 3, 'KIN', 'Kingston Parish'),
(2, 46090, 3, 'MAN', 'Manchester Parish'),
(2, 46090, 3, 'POR', 'Portland Parish'),
(2, 46090, 3, 'AND', 'Saint Andrew Parish'),
(2, 46090, 3, 'ANN', 'Saint Ann Parish'),
(2, 46090, 3, 'CAT', 'Saint Catherine Parish'),
(2, 46090, 3, 'ELI', 'Saint Elizabeth Parish'),
(2, 46090, 3, 'JAM', 'Saint James Parish'),
(2, 46090, 3, 'MAR', 'Saint Mary Parish'),
(2, 46090, 3, 'THO', 'Saint Thomas Parish'),
(2, 46090, 3, 'TRL', 'Trelawny Parish'),
(2, 46090, 3, 'WML', 'Westmoreland Parish');

--  'Jordan', 'JO', 'JOR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46100, 3, 'AM', 'Amman'),
(2, 46100, 3, 'AJ', 'Ajlun'),
(2, 46100, 3, 'AA', 'Al \'Aqabah'),
(2, 46100, 3, 'AB', 'Al Balqa\''),
(2, 46100, 3, 'AK', 'Al Karak'),
(2, 46100, 3, 'AL', 'Al Mafraq'),
(2, 46100, 3, 'AT', 'At Tafilah'),
(2, 46100, 3, 'AZ', 'Az Zarqa\''),
(2, 46100, 3, 'IR', 'Irbid'),
(2, 46100, 3, 'JA', 'Jarash'),
(2, 46100, 3, 'MA', 'Ma\'an'),
(2, 46100, 3, 'MD', 'Madaba');

--  'Japan', 'JP', 'JPN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 561, 3, 'AI', 'Aichi'),
(2, 561, 3, 'AK', 'Akita'),
(2, 561, 3, 'AO', 'Aomori'),
(2, 561, 3, 'CH', 'Chiba'),
(2, 561, 3, 'EH', 'Ehime'),
(2, 561, 3, 'FK', 'Fukui'),
(2, 561, 3, 'FU', 'Fukuoka'),
(2, 561, 3, 'FS', 'Fukushima'),
(2, 561, 3, 'GI', 'Gifu'),
(2, 561, 3, 'GU', 'Gumma'),
(2, 561, 3, 'HI', 'Hiroshima'),
(2, 561, 3, 'HO', 'Hokkaido'),
(2, 561, 3, 'HY', 'Hyogo'),
(2, 561, 3, 'IB', 'Ibaraki'),
(2, 561, 3, 'IS', 'Ishikawa'),
(2, 561, 3, 'IW', 'Iwate'),
(2, 561, 3, 'KA', 'Kagawa'),
(2, 561, 3, 'KG', 'Kagoshima'),
(2, 561, 3, 'KN', 'Kanagawa'),
(2, 561, 3, 'KO', 'Kochi'),
(2, 561, 3, 'KU', 'Kumamoto'),
(2, 561, 3, 'KY', 'Kyoto'),
(2, 561, 3, 'MI', 'Mie'),
(2, 561, 3, 'MY', 'Miyagi'),
(2, 561, 3, 'MZ', 'Miyazaki'),
(2, 561, 3, 'NA', 'Nagano'),
(2, 561, 3, 'NG', 'Nagasaki'),
(2, 561, 3, 'NR', 'Nara'),
(2, 561, 3, 'NI', 'Niigata'),
(2, 561, 3, 'OI', 'Oita'),
(2, 561, 3, 'OK', 'Okayama'),
(2, 561, 3, 'ON', 'Okinawa'),
(2, 561, 3, 'OS', 'Osaka'),
(2, 561, 3, 'SA', 'Saga'),
(2, 561, 3, 'SI', 'Saitama'),
(2, 561, 3, 'SH', 'Shiga'),
(2, 561, 3, 'SM', 'Shimane'),
(2, 561, 3, 'SZ', 'Shizuoka'),
(2, 561, 3, 'TO', 'Tochigi'),
(2, 561, 3, 'TS', 'Tokushima'),
(2, 561, 3, 'TK', 'Tokyo'),
(2, 561, 3, 'TT', 'Tottori'),
(2, 561, 3, 'TY', 'Toyama'),
(2, 561, 3, 'WA', 'Wakayama'),
(2, 561, 3, 'YA', 'Yamagata'),
(2, 561, 3, 'YM', 'Yamaguchi'),
(2, 561, 3, 'YN', 'Yamanashi');

--  'Kenya', 'KE', 'KEN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46110, 3, 'CE', 'Central'),
(2, 46110, 3, 'CO', 'Coast'),
(2, 46110, 3, 'EA', 'Eastern'),
(2, 46110, 3, 'NA', 'Nairobi Area'),
(2, 46110, 3, 'NE', 'North Eastern'),
(2, 46110, 3, 'NY', 'Nyanza'),
(2, 46110, 3, 'RV', 'Rift Valley'),
(2, 46110, 3, 'WE', 'Western');

--  'Kyrgyzstan', 'KG', 'KGZ'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46120, 3, 'GB', 'Bishkek'),
(2, 46120, 3, 'B', 'Batken'),
(2, 46120, 3, 'C', 'Chu'),
(2, 46120, 3, 'J', 'Jalal-Abad'),
(2, 46120, 3, 'N', 'Naryn'),
(2, 46120, 3, 'O', 'Osh'),
(2, 46120, 3, 'T', 'Talas'),
(2, 46120, 3, 'Y', 'Ysyk-Kol');

--  'Cambodia', 'KH', 'KHM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46130, 3, 'PP', 'Phnom Penh'),
(2, 46130, 3, 'PS', 'Preah Seihanu (Kompong Som or Si)'),
(2, 46130, 3, 'PA', 'Pailin'),
(2, 46130, 3, 'KB', 'Keb'),
(2, 46130, 3, 'BM', 'Banteay Meanchey'),
(2, 46130, 3, 'BA', 'Battambang'),
(2, 46130, 3, 'KM', 'Kampong Cham'),
(2, 46130, 3, 'KN', 'Kampong Chhnang'),
(2, 46130, 3, 'KU', 'Kampong Speu'),
(2, 46130, 3, 'KO', 'Kampong Som'),
(2, 46130, 3, 'KT', 'Kampong Thom'),
(2, 46130, 3, 'KP', 'Kampot'),
(2, 46130, 3, 'KL', 'Kandal'),
(2, 46130, 3, 'KK', 'Kaoh Kong'),
(2, 46130, 3, 'KR', 'Kratie'),
(2, 46130, 3, 'MK', 'Mondul Kiri'),
(2, 46130, 3, 'OM', 'Oddar Meancheay'),
(2, 46130, 3, 'PU', 'Pursat'),
(2, 46130, 3, 'PR', 'Preah Vihear'),
(2, 46130, 3, 'PG', 'Prey Veng'),
(2, 46130, 3, 'RK', 'Ratanak Kiri'),
(2, 46130, 3, 'SI', 'Siemreap'),
(2, 46130, 3, 'ST', 'Stung Treng'),
(2, 46130, 3, 'SR', 'Svay Rieng'),
(2, 46130, 3, 'TK', 'Takeo');

--  'Kiribati', 'KI', 'KIR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46140, 3, 'AG', 'Abaiang'),
(2, 46140, 3, 'AM', 'Abemama'),
(2, 46140, 3, 'AK', 'Aranuka'),
(2, 46140, 3, 'AO', 'Arorae'),
(2, 46140, 3, 'BA', 'Banaba'),
(2, 46140, 3, 'BE', 'Beru'),
(2, 46140, 3, 'bT', 'Butaritari'),
(2, 46140, 3, 'KA', 'Kanton'),
(2, 46140, 3, 'KR', 'Kiritimati'),
(2, 46140, 3, 'KU', 'Kuria'),
(2, 46140, 3, 'MI', 'Maiana'),
(2, 46140, 3, 'MN', 'Makin'),
(2, 46140, 3, 'ME', 'Marakei'),
(2, 46140, 3, 'NI', 'Nikunau'),
(2, 46140, 3, 'NO', 'Nonouti'),
(2, 46140, 3, 'ON', 'Onotoa'),
(2, 46140, 3, 'TT', 'Tabiteuea'),
(2, 46140, 3, 'TR', 'Tabuaeran'),
(2, 46140, 3, 'TM', 'Tamana'),
(2, 46140, 3, 'TW', 'Tarawa'),
(2, 46140, 3, 'TE', 'Teraina');

--  'Comoros', 'KM', 'COM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46150, 3, 'G', 'Grande Comore'),
(2, 46150, 3, 'A', 'Anjouan'),
(2, 46150, 3, 'M', 'Moheli');

--  'Saint Kitts and Nevis', 'KN', 'KNA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46160, 3, 'CCN', 'Christ Church Nichola Town'),
(2, 46160, 3, 'SAS', 'Saint Anne Sandy Point'),
(2, 46160, 3, 'SGB', 'Saint George Basseterre'),
(2, 46160, 3, 'SGG', 'Saint George Gingerland'),
(2, 46160, 3, 'SJW', 'Saint James Windward'),
(2, 46160, 3, 'SJC', 'Saint John Capesterre'),
(2, 46160, 3, 'SJF', 'Saint John Figtree'),
(2, 46160, 3, 'SMC', 'Saint Mary Cayon'),
(2, 46160, 3, 'CAP', 'Saint Paul Capesterre'),
(2, 46160, 3, 'CHA', 'Saint Paul Charlestown'),
(2, 46160, 3, 'SPB', 'Saint Peter Basseterre'),
(2, 46160, 3, 'STL', 'Saint Thomas Lowland'),
(2, 46160, 3, 'STM', 'Saint Thomas Middle Island'),
(2, 46160, 3, 'TPP', 'Trinity Palmetto Point');

--  'Korea, Democratic People\'s Republic of', 'KP', 'PRK' (NORTH Korea)
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46170, 3, 'CHA', 'Chagang'),
(2, 46170, 3, 'HAN', 'North Hamgyong'),
(2, 46170, 3, 'HAS', 'South Hamgyong'),
(2, 46170, 3, 'HWN', 'North Hwanghae'),
(2, 46170, 3, 'HWS', 'South Hwanghae'),
(2, 46170, 3, 'KAN', 'Kangwon-do'),
(2, 46170, 3, 'PYO', 'Pyongyang (*)'),
(2, 46170, 3, 'PYN', 'North Pyongan'),
(2, 46170, 3, 'PYS', 'South Pyongan'),
(2, 46170, 3, 'RAS', 'Rason, Directly Governed City'),
(2, 46170, 3, 'YAN', 'Ryanggang (Yanggang)');

--  'Korea, Republic of', 'KR', 'KOR' (EAST Korea)
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 556, 3, '11', 'Seoul City'),
(2, 556, 3, '26', 'Busan Metropolitan City'),
(2, 556, 3, '27', 'Daegu Metropolitan City'),
(2, 556, 3, '28', 'Incheon Metropolitan City'),
(2, 556, 3, '29', 'Gwangju Metropolitan City'),
(2, 556, 3, '30', 'Daejeon Metropolitan City'),
(2, 556, 3, '31', 'Ulsan Metropolitan City'),
(2, 556, 3, '41', 'Gyeonggi-do'),
(2, 556, 3, '42', 'Gangwon-do'),
(2, 556, 3, '43', 'Chungcheongbuk-do'),
(2, 556, 3, '44', 'Chungcheongnam-do'),
(2, 556, 3, '45', 'Jeollabuk-do'),
(2, 556, 3, '46', 'Jeollanam-do'),
(2, 556, 3, '47', 'Gyeongsangbuk-do'),
(2, 556, 3, '48', 'Gyeongsangnam-do'),
(2, 556, 3, '49', 'Jeju-do');

--  'Kuwait', 'KW', 'KWT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46180, 3, 'AL', 'Al Asimah'),
(2, 46180, 3, 'AA', 'Al Ahmadi'),
(2, 46180, 3, 'AF', 'Al Farwaniyah'),
(2, 46180, 3, 'AJ', 'Al Jahra\''),
(2, 46180, 3, 'HA', 'Hawalli');

--  'Cayman Islands', 'KY', 'CYM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46190, 3, 'CR', 'Creek'),
(2, 46190, 3, 'EA', 'Eastern'),
(2, 46190, 3, 'ML', 'Midland'),
(2, 46190, 3, 'ST', 'South Town'),
(2, 46190, 3, 'SP', 'Spot Bay'),
(2, 46190, 3, 'SK', 'Stake Bay'),
(2, 46190, 3, 'WD', 'West End'),
(2, 46190, 3, 'WN', 'Western');

--  'Kazakhstan', 'KZ', 'KAZ'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46200, 3, 'Al', 'Almaty City'),
(2, 46200, 3, 'AR', 'Almaty region'),
(2, 46200, 3, 'AM', 'Akmola region'),
(2, 46200, 3, 'AT', 'Aktyube region'),
(2, 46200, 3, 'AS', 'Astana City'),
(2, 46200, 3, 'AT', 'Atyrau region'),
(2, 46200, 3, 'BY', 'Bayqongyr City'),
(2, 46200, 3, 'MA', 'Mangistau region'),
(2, 46200, 3, 'KA', 'Karaganda region'),      
(2, 46200, 3, 'KO', 'Kostanay region'),       
(2, 46200, 3, 'KY', 'Kyzylorda region'),      
(2, 46200, 3, 'PA', 'Pavlodar region'),
(2, 46200, 3, 'KE', 'East Kazakhstan Region'),     
(2, 46200, 3, 'KN', 'North Kazakhstan Region'),
(2, 46200, 3, 'KS', 'South Kazakhstan Region'),
(2, 46200, 3, 'KW', 'West Kazakhstan Region'),
(2, 46200, 3, 'ZH', 'Zhambyl region');

--  'Lao People\'s Democratic Republic', 'LA', 'LAO'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46210, 3, 'VT', 'Vientiane'),
(2, 46210, 3, 'AT', 'Attapu'),
(2, 46210, 3, 'BK', 'Bokeo'),
(2, 46210, 3, 'BL', 'Bolikhamxai'),
(2, 46210, 3, 'CH', 'Champasak'),
(2, 46210, 3, 'HO', 'Houaphan'),
(2, 46210, 3, 'KH', 'Khammouan'),
(2, 46210, 3, 'LM', 'Louang Namtha'),
(2, 46210, 3, 'LP', 'Louangphabang'),
(2, 46210, 3, 'OU', 'Oudomxai'),
(2, 46210, 3, 'PH', 'Phongsali'),
(2, 46210, 3, 'SL', 'Salavan'),
(2, 46210, 3, 'SV', 'Savannakhet'),
(2, 46210, 3, 'VI', 'Vientiane'),
(2, 46210, 3, 'XA', 'Xaignabouli'),
(2, 46210, 3, 'XE', 'Xekong'),
(2, 46210, 3, 'XI', 'Xiangkhoang'),
(2, 46210, 3, 'XN', 'Xaisomboun');

--  'Lebanon', 'LB', 'LBN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46220, 3, 'BK', 'Bekaa'),
(2, 46220, 3, 'BR', 'Beirut'),
(2, 46220, 3, 'NL', 'North Lebanon'),
(2, 46220, 3, 'ML', 'Mount Lebanon'),
(2, 46220, 3, 'SL', 'South Lebanon');

--  'Saint Lucia', 'LC', 'LCA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46230, 3, 'AR', 'Anse-la-Raye'),
(2, 46230, 3, 'CA', 'Castries'),
(2, 46230, 3, 'CH', 'Choiseul'),
(2, 46230, 3, 'DA', 'Dauphin'),
(2, 46230, 3, 'DE', 'Dennery'),
(2, 46230, 3, 'GI', 'Gros-Islet'),
(2, 46230, 3, 'LA', 'Laborie'),
(2, 46230, 3, 'MI', 'Micoud'),
(2, 46230, 3, 'PR', 'Praslin'),
(2, 46230, 3, 'SO', 'Soufriere'),
(2, 46230, 3, 'VF', 'Vieux-Fort');

--  'Liechtenstein', 'LI', 'LIE'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46240, 3, 'V', 'Vaduz'),
(2, 46240, 3, 'A', 'Schaan'),
(2, 46240, 3, 'B', 'Balzers'),
(2, 46240, 3, 'N', 'Triesen'),
(2, 46240, 3, 'E', 'Eschen'),
(2, 46240, 3, 'M', 'Mauren'),
(2, 46240, 3, 'T', 'Triesenberg'),
(2, 46240, 3, 'R', 'Ruggell'),
(2, 46240, 3, 'G', 'Gamprin'),
(2, 46240, 3, 'L', 'Schellenberg'),
(2, 46240, 3, 'P', 'Planken');

--  'Sri Lanka', 'LK', 'LKA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46250, 3, 'CE', 'Central'),
(2, 46250, 3, 'EA', 'Eastern'),
(2, 46250, 3, 'NC', 'North Central'),
(2, 46250, 3, 'NO', 'Northern'),
(2, 46250, 3, 'NW', 'North Western'),
(2, 46250, 3, 'SA', 'Sabaragamuwa'),
(2, 46250, 3, 'SO', 'Southern'),
(2, 46250, 3, 'UV', 'Uva'),
(2, 46250, 3, 'WE', 'Western');

--  'Liberia', 'LR', 'LBR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46260, 3, 'BI', 'Bomi'),
(2, 46260, 3, 'BG', 'Bong'),
(2, 46260, 3, 'GB', 'Grand Bassa'),
(2, 46260, 3, 'CM', 'Grand Cape Mount'),
(2, 46260, 3, 'GG', 'Grand Gedeh'),
(2, 46260, 3, 'GK', 'Grand Kru'),
(2, 46260, 3, 'LO', 'Lofa'),
(2, 46260, 3, 'MG', 'Margibi'),
(2, 46260, 3, 'ML', 'Maryland'),
(2, 46260, 3, 'MS', 'Montserrado'),
(2, 46260, 3, 'NB', 'Nimba'),
(2, 46260, 3, 'RC', 'River Cess'),
(2, 46260, 3, 'SN', 'Sinoe');

--  'Lesotho', 'LS', 'LSO'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46270, 3, 'BE', 'Berea'),
(2, 46270, 3, 'BB', 'Butha-Buthe'),
(2, 46270, 3, 'LE', 'Leribe'),
(2, 46270, 3, 'MF', 'Mafeteng'),
(2, 46270, 3, 'MS', 'Maseru'),
(2, 46270, 3, 'MH', 'Mohale\'s Hoek'),
(2, 46270, 3, 'MK', 'Mokhotlong'),
(2, 46270, 3, 'QN', 'Qacha\'s Nek'),
(2, 46270, 3, 'QT', 'Quthing'),
(2, 46270, 3, 'TT', 'Thaba-Tseka');

--  'Lithuania', 'LT', 'LTU'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46280, 3, 'AL', 'Alytus'),
(2, 46280, 3, 'KA', 'Kaunas'),
(2, 46280, 3, 'KL', 'Klaipeda'),
(2, 46280, 3, 'MA', 'Marijampole'),
(2, 46280, 3, 'PA', 'Panevezys'),
(2, 46280, 3, 'SI', 'Siauliai'),
(2, 46280, 3, 'TA', 'Taurage'),
(2, 46280, 3, 'TE', 'Telsiai'),
(2, 46280, 3, 'UT', 'Utena'),
(2, 46280, 3, 'VI', 'Vilnius');

--  'Luxembourg', 'LU', 'LUX'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46290, 3, 'LC', 'Capellen'),
(2, 46290, 3, 'DC', 'Clervaux'),
(2, 46290, 3, 'DD', 'Diekirch'),
(2, 46290, 3, 'GE', 'Echternach'),
(2, 46290, 3, 'LE', 'Esch-sur-Alzette'),
(2, 46290, 3, 'GG', 'Grevenmacher'),
(2, 46290, 3, 'LL', 'Luxembourg'),
(2, 46290, 3, 'LM', 'Mersch'),
(2, 46290, 3, 'DR', 'Redange'),
(2, 46290, 3, 'GR', 'Remich'),
(2, 46290, 3, 'DV', 'Vianden'),
(2, 46290, 3, 'DW', 'Wiltz');

--  'Latvia', 'LV', 'LVA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46300, 3, 'AIZ', 'Aizkraukles Rajons'),
(2, 46300, 3, 'ALU', 'Aluksnes Rajons'),
(2, 46300, 3, 'BAL', 'Balvu Rajons'),
(2, 46300, 3, 'BAU', 'Bauskas Rajons'),
(2, 46300, 3, 'CES', 'Cesu Rajons'),
(2, 46300, 3, 'DGR', 'Daugavpils Rajons'),
(2, 46300, 3, 'DOB', 'Dobeles Rajons'),
(2, 46300, 3, 'GUL', 'Gulbenes Rajons'),
(2, 46300, 3, 'JEK', 'Jekabpils Rajons'),
(2, 46300, 3, 'JGR', 'Jelgavas Rajons'),
(2, 46300, 3, 'KRA', 'Kraslavas Rajons'),
(2, 46300, 3, 'KUL', 'Kuldigas Rajons'),
(2, 46300, 3, 'LPR', 'Liepajas Rajons'),
(2, 46300, 3, 'LIM', 'Limbazu Rajons'),
(2, 46300, 3, 'LUD', 'Ludzas Rajons'),
(2, 46300, 3, 'MAD', 'Madonas Rajons'),
(2, 46300, 3, 'OGR', 'Ogres Rajons'),
(2, 46300, 3, 'PRE', 'Preilu Rajons'),
(2, 46300, 3, 'RZR', 'Rezeknes Rajons'),
(2, 46300, 3, 'RGR', 'Rigas Rajons'),
(2, 46300, 3, 'SAL', 'Saldus Rajons'),
(2, 46300, 3, 'TAL', 'Talsu Rajons'),
(2, 46300, 3, 'TUK', 'Tukuma Rajons'),
(2, 46300, 3, 'VLK', 'Valkas Rajons'),
(2, 46300, 3, 'VLM', 'Valmieras Rajons'),
(2, 46300, 3, 'VSR', 'Ventspils Rajons'),
(2, 46300, 3, 'DGV', 'Daugavpils'),
(2, 46300, 3, 'JGV', 'Jelgava'),
(2, 46300, 3, 'JUR', 'Jurmala'),
(2, 46300, 3, 'LPK', 'Liepaja'),
(2, 46300, 3, 'RZK', 'Rezekne'),
(2, 46300, 3, 'RGA', 'Riga'),
(2, 46300, 3, 'VSL', 'Ventspils');

--  'Libyan Arab Jamahiriya', 'LY', 'LBY'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46310, 3, 'AJ', 'Ajdabiya'),
(2, 46310, 3, 'AZ', 'Al Aziziyah'),
(2, 46310, 3, 'FA', 'Al Fatih'),
(2, 46310, 3, 'JA', 'Al Jabal al Akhdar'),
(2, 46310, 3, 'JU', 'Al Jufrah'),
(2, 46310, 3, 'KH', 'Al Khums'),
(2, 46310, 3, 'KU', 'Al Kufrah'),
(2, 46310, 3, 'NK', 'An Nuqat al Khams'),
(2, 46310, 3, 'AS', 'Ash Shati'),
(2, 46310, 3, 'AW', 'Awbari'),
(2, 46310, 3, 'ZA', 'Az Zawiyah'),
(2, 46310, 3, 'BA', 'Banghazi'),
(2, 46310, 3, 'DA', 'Darnah'),
(2, 46310, 3, 'GD', 'Ghadamis'),
(2, 46310, 3, 'GY', 'Gharyan'),
(2, 46310, 3, 'MI', 'Misratah'),
(2, 46310, 3, 'MZ', 'Murzuq'),
(2, 46310, 3, 'SB', 'Sabha'),
(2, 46310, 3, 'SW', 'Sawfajjin'),
(2, 46310, 3, 'SU', 'Surt'),
(2, 46310, 3, 'TL', 'Tarabulus (Tripoli)'),
(2, 46310, 3, 'TH', 'Tarhunah'),
(2, 46310, 3, 'TU', 'Tubruq'),
(2, 46310, 3, 'YA', 'Yafran'),
(2, 46310, 3, 'ZL', 'Zlitan');

--  'Morocco', 'MA', 'MAR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46320, 3, 'AGD', 'Agadir'),
(2, 46320, 3, 'HOC', 'Al Hoceima'),
(2, 46320, 3, 'AZI', 'Azilal'),
(2, 46320, 3, 'BME', 'Beni Mellal'),
(2, 46320, 3, 'BSL', 'Ben Slimane'),
(2, 46320, 3, 'BLM', 'Boulemane'),
(2, 46320, 3, 'CBL', 'Casablanca'),
(2, 46320, 3, 'CHA', 'Chaouen'),
(2, 46320, 3, 'EJA', 'El Jadida'),
(2, 46320, 3, 'EKS', 'El Kelaa des Sraghna'),
(2, 46320, 3, 'ERA', 'Er Rachidia'),
(2, 46320, 3, 'ESS', 'Essaouira'),
(2, 46320, 3, 'FES', 'Fes'),
(2, 46320, 3, 'FIG', 'Figuig'),
(2, 46320, 3, 'GLM', 'Guelmim'),
(2, 46320, 3, 'IFR', 'Ifrane'),
(2, 46320, 3, 'KEN', 'Kenitra'),
(2, 46320, 3, 'KHM', 'Khemisset'),
(2, 46320, 3, 'KHN', 'Khenifra'),
(2, 46320, 3, 'KHO', 'Khouribga'),
(2, 46320, 3, 'LYN', 'Laayoune'),
(2, 46320, 3, 'LAR', 'Larache'),
(2, 46320, 3, 'MRK', 'Marrakech'),
(2, 46320, 3, 'MKN', 'Meknes'),
(2, 46320, 3, 'NAD', 'Nador'),
(2, 46320, 3, 'ORZ', 'Ouarzazate'),
(2, 46320, 3, 'OUJ', 'Oujda'),
(2, 46320, 3, 'RSA', 'Rabat-Sale'),
(2, 46320, 3, 'SAF', 'Safi'),
(2, 46320, 3, 'SET', 'Settat'),
(2, 46320, 3, 'SKA', 'Sidi Kacem'),
(2, 46320, 3, 'TGR', 'Tangier'),
(2, 46320, 3, 'TAN', 'Tan-Tan'),
(2, 46320, 3, 'TAO', 'Taounate'),
(2, 46320, 3, 'TRD', 'Taroudannt'),
(2, 46320, 3, 'TAT', 'Tata'),
(2, 46320, 3, 'TAZ', 'Taza'),
(2, 46320, 3, 'TET', 'Tetouan'),
(2, 46320, 3, 'TIZ', 'Tiznit'),
(2, 46320, 3, 'ADK', 'Ad Dakhla'),
(2, 46320, 3, 'BJD', 'Boujdour'),
(2, 46320, 3, 'ESM', 'Es Smara');

--  'Monaco', 'MC', 'MCO'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46330, 3, 'FV', 'Fontvieille'),
(2, 46330, 3, 'LC', 'La Condamine'),
(2, 46330, 3, 'MV', 'Monaco-Ville'),
(2, 46330, 3, 'MC', 'Monte-Carlo');

--  'Moldova, Republic of', 'MD', 'MDA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46340, 3, 'GA', 'Gagauzia'),
(2, 46340, 3, 'CU', 'Chisinau'),
(2, 46340, 3, 'BA', 'Balti'),
(2, 46340, 3, 'CA', 'Cahul'),
(2, 46340, 3, 'ED', 'Edinet'),
(2, 46340, 3, 'LA', 'Lapusna'),
(2, 46340, 3, 'OR', 'Orhei'),
(2, 46340, 3, 'SO', 'Soroca'),
(2, 46340, 3, 'TI', 'Tighina'),
(2, 46340, 3, 'UN', 'Ungheni'),
(2, 46340, 3, 'SN', 'Stanga Nistrului');

--  'ME', 'MON', 'Montenegro'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46350, 3, 'AN', 'Andrijevica'),
(2, 46350, 3, 'BA', 'Bar'),
(2, 46350, 3, 'BE', 'Berane'),
(2, 46350, 3, 'BI', 'Bijelo Polje'),
(2, 46350, 3, 'BU', 'Budva'),
(2, 46350, 3, 'CE', 'Cetinje'),
(2, 46350, 3, 'DA', 'Danilovgrad'),
(2, 46350, 3, 'HN', 'Herceg Novi'),
(2, 46350, 3, 'KL', 'Kolashin'),
(2, 46350, 3, 'KT', 'Kotor'),
(2, 46350, 3, 'MJ', 'Mojkovac'),
(2, 46350, 3, 'NI', 'Nikshich'),
(2, 46350, 3, 'PA', 'Plav'),
(2, 46350, 3, 'PU', 'Pluzhine'),
(2, 46350, 3, 'PJ', 'Pljevlja'),
(2, 46350, 3, 'PO', 'Podgorica *'),
(2, 46350, 3, 'RO', 'Rozhaje'),
(2, 46350, 3, 'SH', 'Shavnik'),
(2, 46350, 3, 'TI', 'Tivat'),
(2, 46350, 3, 'UL', 'Ulcinj'),
(2, 46350, 3, 'ZH', 'Zhabljak');

--  'MF', 'Saint Martin'

--  'Madagascar', 'MG', 'MDG'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46370, 3, 'AN', 'Antananarivo'),
(2, 46370, 3, 'AS', 'Antsiranana'),
(2, 46370, 3, 'FN', 'Fianarantsoa'),
(2, 46370, 3, 'MJ', 'Mahajanga'),
(2, 46370, 3, 'TM', 'Toamasina'),
(2, 46370, 3, 'TL', 'Toliara');

--  'Marshall Islands', 'MH', 'MHL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46380, 3, 'ALG', 'Ailinginae'),
(2, 46380, 3, 'ALL', 'Ailinglaplap'),
(2, 46380, 3, 'ALK', 'Ailuk'),
(2, 46380, 3, 'ARN', 'Arno'),
(2, 46380, 3, 'AUR', 'Aur'),
(2, 46380, 3, 'BKR', 'Bikar'),
(2, 46380, 3, 'BKN', 'Bikini'),
(2, 46380, 3, 'BKK', 'Bokak'),
(2, 46380, 3, 'EBN', 'Ebon'),
(2, 46380, 3, 'ENT', 'Enewetak'),
(2, 46380, 3, 'EKB', 'Erikub'),
(2, 46380, 3, 'JBT', 'Jabat'),
(2, 46380, 3, 'JLT', 'Jaluit'),
(2, 46380, 3, 'JEM', 'Jemo'),
(2, 46380, 3, 'KIL', 'Kili'),
(2, 46380, 3, 'KWJ', 'Kwajalein'),
(2, 46380, 3, 'LAE', 'Lae'),
(2, 46380, 3, 'LIB', 'Lib'),
(2, 46380, 3, 'LKP', 'Likiep'),
(2, 46380, 3, 'MJR', 'Majuro'),
(2, 46380, 3, 'MLP', 'Maloelap'),
(2, 46380, 3, 'MJT', 'Mejit'),
(2, 46380, 3, 'MIL', 'Mili'),
(2, 46380, 3, 'NMK', 'Namorik'),
(2, 46380, 3, 'NAM', 'Namu'),
(2, 46380, 3, 'RGL', 'Rongelap'),
(2, 46380, 3, 'RGK', 'Rongrik'),
(2, 46380, 3, 'TOK', 'Toke'),
(2, 46380, 3, 'UJA', 'Ujae'),
(2, 46380, 3, 'UJL', 'Ujelang'),
(2, 46380, 3, 'UTK', 'Utirik'),
(2, 46380, 3, 'WTH', 'Wotho'),
(2, 46380, 3, 'WTJ', 'Wotje');

--  'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46390, 3, 'EA', 'Eastern'),
(2, 46390, 3, 'NE', 'North-eastern'),
(2, 46390, 3, 'PE', 'Pelagonia'),
(2, 46390, 3, 'PO', 'Polog'),
(2, 46390, 3, 'SK', 'Skopje'),
(2, 46390, 3, 'SE', 'South-eastern'),
(2, 46390, 3, 'VA', 'Vardar');

--  'Mali', 'ML', 'MLI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46400, 3, 'GA', 'Gao'),
(2, 46400, 3, 'KY', 'Kayes'),
(2, 46400, 3, 'KD', 'Kidal'),
(2, 46400, 3, 'KL', 'Koulikoro'),
(2, 46400, 3, 'MP', 'Mopti'),
(2, 46400, 3, 'SG', 'Segou'),
(2, 46400, 3, 'SK', 'Sikasso'),
(2, 46400, 3, 'TB', 'Tombouctou'),
(2, 46400, 3, 'CD', 'Bamako Capital District');

--  'Myanmar', 'MM', 'MMR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46410, 3, 'AY', 'Ayeyarwady'),
(2, 46410, 3, 'BG', 'Bago'),
(2, 46410, 3, 'MG', 'Magway'),
(2, 46410, 3, 'MD', 'Mandalay'),
(2, 46410, 3, 'SG', 'Sagaing'),
(2, 46410, 3, 'TN', 'Tanintharyi'),
(2, 46410, 3, 'YG', 'Yangon'),
(2, 46410, 3, 'CH', 'Chin State'),
(2, 46410, 3, 'KC', 'Kachin State'),
(2, 46410, 3, 'KH', 'Kayah State'),
(2, 46410, 3, 'KN', 'Kayin State'),
(2, 46410, 3, 'MN', 'Mon State'),
(2, 46410, 3, 'RK', 'Rakhine State'),
(2, 46410, 3, 'SH', 'Shan State');

--  'Mongolia', 'MN', 'MNG'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46420, 3, '1', 'Ulanbaatar'),
(2, 46420, 3, '035', 'Orhon'),
(2, 46420, 3, '037', 'Darhan uul'),
(2, 46420, 3, '039', 'Hentiy'),
(2, 46420, 3, '041', 'Hovsgol'),
(2, 46420, 3, '043', 'Hovd'),
(2, 46420, 3, '046', 'Uvs'),
(2, 46420, 3, '047', 'Tov'),
(2, 46420, 3, '049', 'Selenge'),
(2, 46420, 3, '051', 'Suhbaatar'),
(2, 46420, 3, '053', 'Omnogovi'),
(2, 46420, 3, '055', 'Ovorhangay'),
(2, 46420, 3, '057', 'Dzavhan'),
(2, 46420, 3, '059', 'DundgovL'),
(2, 46420, 3, '061', 'Dornod'),
(2, 46420, 3, '063', 'Dornogov'),
(2, 46420, 3, '064', 'Govi-Sumber'),
(2, 46420, 3, '065', 'Govi-Altay'),
(2, 46420, 3, '067', 'Bulgan'),
(2, 46420, 3, '069', 'Bayanhongor'),
(2, 46420, 3, '071', 'Bayan-Olgiy'),
(2, 46420, 3, '073', 'Arhangay');

--  'Macau', 'MO', 'MAC'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46430, 3, 'OLF', 'Our Lady Fatima Parish'),
(2, 46430, 3, 'ANT', 'St. Anthony Parish'),
(2, 46430, 3, 'LAZ', 'St. Lazarus Parish'),
(2, 46430, 3, 'CAT', 'Cathedral Parish'),
(2, 46430, 3, 'LAW', 'St. Lawrence Parish');

--  'Northern Mariana Islands', 'MP', 'MNP'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46440, 3, 'N', 'Northern Islands'),
(2, 46440, 3, 'R', 'Rota'),
(2, 46440, 3, 'S', 'Saipan'),
(2, 46440, 3, 'T', 'Tinian');

--  'Martinique', 'MQ', 'MTQ'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46450, 3, 'FF', 'Fort-de-France'),
(2, 46450, 3, 'MA', 'Marin'),
(2, 46450, 3, 'SP', 'Saint-Pierre'),
(2, 46450, 3, 'TR', 'Trinite');

--  'Mauritania', 'MR', 'MRT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46460, 3, 'AD', 'Adrar'),
(2, 46460, 3, 'AS', 'Assaba'),
(2, 46460, 3, 'BR', 'Brakna'),
(2, 46460, 3, 'DN', 'Dakhlet Nouadhibou'),
(2, 46460, 3, 'GO', 'Gorgol'),
(2, 46460, 3, 'GM', 'Guidimaka'),
(2, 46460, 3, 'HC', 'Hodh Ech Chargui'),
(2, 46460, 3, 'HG', 'Hodh El Gharbi'),
(2, 46460, 3, 'IN', 'Inchiri'),
(2, 46460, 3, 'TA', 'Tagant'),
(2, 46460, 3, 'TZ', 'Tiris Zemmour'),
(2, 46460, 3, 'TR', 'Trarza'),
(2, 46460, 3, 'NO', 'Nouakchott');

--  'Montserrat', 'MS', 'MSR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46470, 3, 'A', 'Saint Anthony'),
(2, 46470, 3, 'G', 'Saint Georges'),
(2, 46470, 3, 'P', 'Saint Peter');

--  'Malta', 'MT', 'MLT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46480, 3, 'ATT', 'Attard'),
(2, 46480, 3, 'BAL', 'Balzan'),
(2, 46480, 3, 'BGU', 'Birgu'),
(2, 46480, 3, 'BKK', 'Birkirkara'),
(2, 46480, 3, 'BRZ', 'Birzebbuga'),
(2, 46480, 3, 'BOR', 'Bormla'),
(2, 46480, 3, 'DIN', 'Dingli'),
(2, 46480, 3, 'FGU', 'Fgura'),
(2, 46480, 3, 'FLO', 'Floriana'),
(2, 46480, 3, 'GDJ', 'Gudja'),
(2, 46480, 3, 'GZR', 'Gzira'),
(2, 46480, 3, 'GRG', 'Gargur'),
(2, 46480, 3, 'GXQ', 'Gaxaq'),
(2, 46480, 3, 'HMR', 'Hamrun'),
(2, 46480, 3, 'IKL', 'Iklin'),
(2, 46480, 3, 'ISL', 'Isla'),
(2, 46480, 3, 'KLK', 'Kalkara'),
(2, 46480, 3, 'KRK', 'Kirkop'),
(2, 46480, 3, 'LIJ', 'Lija'),
(2, 46480, 3, 'LUQ', 'Luqa'),
(2, 46480, 3, 'MRS', 'Marsa'),
(2, 46480, 3, 'MKL', 'Marsaskala'),
(2, 46480, 3, 'MXL', 'Marsaxlokk'),
(2, 46480, 3, 'MDN', 'Mdina'),
(2, 46480, 3, 'MEL', 'Melliea'),
(2, 46480, 3, 'MGR', 'Mgarr'),
(2, 46480, 3, 'MST', 'Mosta'),
(2, 46480, 3, 'MQA', 'Mqabba'),
(2, 46480, 3, 'MSI', 'Msida'),
(2, 46480, 3, 'MTF', 'Mtarfa'),
(2, 46480, 3, 'NAX', 'Naxxar'),
(2, 46480, 3, 'PAO', 'Paola'),
(2, 46480, 3, 'PEM', 'Pembroke'),
(2, 46480, 3, 'PIE', 'Pieta'),
(2, 46480, 3, 'QOR', 'Qormi'),
(2, 46480, 3, 'QRE', 'Qrendi'),
(2, 46480, 3, 'RAB', 'Rabat'),
(2, 46480, 3, 'SAF', 'Safi'),
(2, 46480, 3, 'SGI', 'San Giljan'),
(2, 46480, 3, 'SLU', 'Santa Lucija'),
(2, 46480, 3, 'SPB', 'San Pawl il-Bahar'),
(2, 46480, 3, 'SGW', 'San Gwann'),
(2, 46480, 3, 'SVE', 'Santa Venera'),
(2, 46480, 3, 'SIG', 'Siggiewi'),
(2, 46480, 3, 'SLM', 'Sliema'),
(2, 46480, 3, 'SWQ', 'Swieqi'),
(2, 46480, 3, 'TXB', 'Ta Xbiex'),
(2, 46480, 3, 'TRX', 'Tarxien'),
(2, 46480, 3, 'VLT', 'Valletta'),
(2, 46480, 3, 'XGJ', 'Xgajra'),
(2, 46480, 3, 'ZBR', 'Zabbar'),
(2, 46480, 3, 'ZBG', 'Zebbug'),
(2, 46480, 3, 'ZJT', 'Zejtun'),
(2, 46480, 3, 'ZRQ', 'Zurrieq'),
(2, 46480, 3, 'FNT', 'Fontana'),
(2, 46480, 3, 'GHJ', 'Ghajnsielem'),
(2, 46480, 3, 'GHR', 'Gharb'),
(2, 46480, 3, 'GHS', 'Ghasri'),
(2, 46480, 3, 'KRC', 'Kercem'),
(2, 46480, 3, 'MUN', 'Munxar'),
(2, 46480, 3, 'NAD', 'Nadur'),
(2, 46480, 3, 'QAL', 'Qala'),
(2, 46480, 3, 'VIC', 'Victoria'),
(2, 46480, 3, 'SLA', 'San Lawrenz'),
(2, 46480, 3, 'SNT', 'Sannat'),
(2, 46480, 3, 'ZAG', 'Xagra'),
(2, 46480, 3, 'XEW', 'Xewkija'),
(2, 46480, 3, 'ZEB', 'Zebbug');

--  'Mauritius', 'MU', 'MUS'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46490, 3, 'BR', 'Beau Bassin-Rose Hill'),
(2, 46490, 3, 'CU', 'Curepipe'),
(2, 46490, 3, 'PU', 'Port Louis'),
(2, 46490, 3, 'QB', 'Quatre Bornes'),
(2, 46490, 3, 'VP', 'Vacoas-Phoenix'),
(2, 46490, 3, 'AG', 'Agalega Islands'),
(2, 46490, 3, 'CC', 'Cargados Carajos Shoals (Saint B'),
(2, 46490, 3, 'RO', 'Rodrigues'),
(2, 46490, 3, 'BL', 'Black River'),
(2, 46490, 3, 'FL', 'Flacq'),
(2, 46490, 3, 'GP', 'Grand Port'),
(2, 46490, 3, 'MO', 'Moka'),
(2, 46490, 3, 'PA', 'Pamplemousses'),
(2, 46490, 3, 'PW', 'Plaines Wilhems'),
(2, 46490, 3, 'PL', 'Port Louis'),
(2, 46490, 3, 'RR', 'Riviere du Rempart'),
(2, 46490, 3, 'SA', 'Savanne');

--  'Maldives', 'MV', 'MDV'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46500, 3, 'THU', 'Thiladhunmathi Uthuru'),
(2, 46500, 3, 'THD', 'Thiladhunmathi Dhekunu'),
(2, 46500, 3, 'MLU', 'Miladhunmadulu Uthuru'),
(2, 46500, 3, 'MLD', 'Miladhunmadulu Dhekunu'),
(2, 46500, 3, 'MAU', 'Maalhosmadulu Uthuru'),
(2, 46500, 3, 'MAD', 'Maalhosmadulu Dhekunu'),
(2, 46500, 3, 'FAA', 'Faadhippolhu'),
(2, 46500, 3, 'MAA', 'Male Atoll'),
(2, 46500, 3, 'AAU', 'Ari Atoll Uthuru'),
(2, 46500, 3, 'AAD', 'Ari Atoll Dheknu'),
(2, 46500, 3, 'FEA', 'Felidhe Atoll'),
(2, 46500, 3, 'MUA', 'Mulaku Atoll'),
(2, 46500, 3, 'NAU', 'Nilandhe Atoll Uthuru'),
(2, 46500, 3, 'NAD', 'Nilandhe Atoll Dhekunu'),
(2, 46500, 3, 'KLH', 'Kolhumadulu'),
(2, 46500, 3, 'HDH', 'Hadhdhunmathi'),
(2, 46500, 3, 'HAU', 'Huvadhu Atoll Uthuru'),
(2, 46500, 3, 'HAD', 'Huvadhu Atoll Dhekunu'),
(2, 46500, 3, 'FMU', 'Fua Mulaku'),
(2, 46500, 3, 'ADD', 'Addu');

--  'Malawi', 'MW', 'MWI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46510, 3, 'BLK', 'Balaka'),
(2, 46510, 3, 'BLT', 'Blantyre'),
(2, 46510, 3, 'CKW', 'Chikwawa'),
(2, 46510, 3, 'CRD', 'Chiradzulu'),
(2, 46510, 3, 'CTP', 'Chitipa'),
(2, 46510, 3, 'DDZ', 'Dedza'),
(2, 46510, 3, 'DWA', 'Dowa'),
(2, 46510, 3, 'KRG', 'Karonga'),
(2, 46510, 3, 'KSG', 'Kasungu'),
(2, 46510, 3, 'LKM', 'Likoma'),
(2, 46510, 3, 'LLG', 'Lilongwe'),
(2, 46510, 3, 'MCG', 'Machinga'),
(2, 46510, 3, 'MGC', 'Mangochi'),
(2, 46510, 3, 'MCH', 'Mchinji'),
(2, 46510, 3, 'MLJ', 'Mulanje'),
(2, 46510, 3, 'MWZ', 'Mwanza'),
(2, 46510, 3, 'MZM', 'Mzimba'),
(2, 46510, 3, 'NTU', 'Ntcheu'),
(2, 46510, 3, 'NKB', 'Nkhata Bay'),
(2, 46510, 3, 'NKH', 'Nkhotakota'),
(2, 46510, 3, 'NSJ', 'Nsanje'),
(2, 46510, 3, 'NTI', 'Ntchisi'),
(2, 46510, 3, 'PHL', 'Phalombe'),
(2, 46510, 3, 'RMP', 'Rumphi'),
(2, 46510, 3, 'SLM', 'Salima'),
(2, 46510, 3, 'THY', 'Thyolo'),
(2, 46510, 3, 'ZBA', 'Zomba');

--  'Mexico', 'MX', 'MEX'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46520, 3, 'AGU', 'Aguascalientes'),
(2, 46520, 3, 'BCN', 'Baja California'),
(2, 46520, 3, 'BCS', 'Baja California Sur'),
(2, 46520, 3, 'CAM', 'Campeche'),
(2, 46520, 3, 'CHH', 'Chihuahua'),
(2, 46520, 3, 'CHP', 'Chiapas'),
(2, 46520, 3, 'COA', 'Coahuila'),
(2, 46520, 3, 'COL', 'Colima'),
(2, 46520, 3, 'DF',  'Distrito Federal'),
(2, 46520, 3, 'DUR', 'Durango'),
(2, 46520, 3, 'GRO', 'Guerrero'),
(2, 46520, 3, 'GUA', 'Guanajuato'),
(2, 46520, 3, 'HID', 'Hidalgo'),
(2, 46520, 3, 'JAL', 'Jalisco'),
(2, 46520, 3, 'MEX', 'Estado de Mexico'),
(2, 46520, 3, 'MIC', 'Michoacan'),
(2, 46520, 3, 'MOR', 'Morelos  '),
(2, 46520, 3, 'NAY', 'Nayarit'),
(2, 46520, 3, 'NLE', 'Nuevo Leon'),
(2, 46520, 3, 'OAX', 'Oaxaca'),
(2, 46520, 3, 'PUE', 'Puebla'),
(2, 46520, 3, 'QUE', 'Queretaro '),
(2, 46520, 3, 'ROO', 'Quintana Roo'),
(2, 46520, 3, 'SIN', 'Sinaloa'),
(2, 46520, 3, 'SLP', 'San Luis Potosi'),
(2, 46520, 3, 'SON', 'Sonora'),
(2, 46520, 3, 'TAB', 'Tabasco'),
(2, 46520, 3, 'TAM', 'Tamaulipas'),
(2, 46520, 3, 'TLA', 'Tlaxcala'),
(2, 46520, 3, 'VER', 'Veracruz'),
(2, 46520, 3, 'YUC', 'Yucatan'),
(2, 46520, 3, 'ZAC', 'Zacatecas');

--  'Malaysia', 'MY', 'MYS'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 558, 3, 'JO', 'Johor'),
(2, 558, 3, 'KE', 'Kedah'),
(2, 558, 3, 'KL', 'Kelantan'),
(2, 558, 3, 'LA', 'Labuan'),
(2, 558, 3, 'ME', 'Melaka'),
(2, 558, 3, 'NS', 'Negeri Sembilan'),
(2, 558, 3, 'PA', 'Pahang'),
(2, 558, 3, 'PE', 'Perak'),
(2, 558, 3, 'PR', 'Perlis'),
(2, 558, 3, 'PP', 'Pulau Pinang'),
(2, 558, 3, 'SA', 'Sabah'),
(2, 558, 3, 'SR', 'Sarawak'),
(2, 558, 3, 'SE', 'Selangor'),
(2, 558, 3, 'TE', 'Terengganu'),
(2, 558, 3, 'WP', 'Wilayah Persekutuan');

--  'Mozambique', 'MZ', 'MOZ'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46530, 3, 'CD', 'Cabo Delgado'),
(2, 46530, 3, 'GZ', 'Gaza'),
(2, 46530, 3, 'IN', 'Inhambane'),
(2, 46530, 3, 'MN', 'Manica'),
(2, 46530, 3, 'MC', 'Maputo (city)'),
(2, 46530, 3, 'MP', 'Maputo'),
(2, 46530, 3, 'NA', 'Nampula'),
(2, 46530, 3, 'NI', 'Niassa'),
(2, 46530, 3, 'SO', 'Sofala'),
(2, 46530, 3, 'TE', 'Tete'),
(2, 46530, 3, 'ZA', 'Zambezia');

--  'Namibia', 'NA', 'NAM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46540, 3, 'CA', 'Caprivi'),
(2, 46540, 3, 'ER', 'Erongo'),
(2, 46540, 3, 'HA', 'Hardap'),
(2, 46540, 3, 'KR', 'Karas'),
(2, 46540, 3, 'KV', 'Kavango'),
(2, 46540, 3, 'KH', 'Khomas'),
(2, 46540, 3, 'KU', 'Kunene'),
(2, 46540, 3, 'OW', 'Ohangwena'),
(2, 46540, 3, 'OK', 'Omaheke'),
(2, 46540, 3, 'OT', 'Omusati'),
(2, 46540, 3, 'ON', 'Oshana'),
(2, 46540, 3, 'OO', 'Oshikoto'),
(2, 46540, 3, 'OJ', 'Otjozondjupa');

--  'New Caledonia', 'NC', 'NCL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46550, 3, 'L', 'Iles Loyaute'),
(2, 46550, 3, 'N', 'Nord'),
(2, 46550, 3, 'S', 'Sud');

--  'Niger', 'NE', 'NER'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46560, 3, 'AG', 'Agadez'),
(2, 46560, 3, 'DF', 'Diffa'),
(2, 46560, 3, 'DS', 'Dosso'),
(2, 46560, 3, 'MA', 'Maradi'),
(2, 46560, 3, 'NM', 'Niamey'),
(2, 46560, 3, 'TH', 'Tahoua'),
(2, 46560, 3, 'TL', 'Tillaberi'),
(2, 46560, 3, 'ZD', 'Zinder');

--  'Norfolk Island', 'NF', 'NFK'

--  'Nigeria', 'NG', 'NGA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46580, 3, 'AB', 'Abia'),
(2, 46580, 3, 'CT', 'Abuja Federal Capital Territory'),
(2, 46580, 3, 'AD', 'Adamawa'),
(2, 46580, 3, 'AK', 'Akwa Ibom'),
(2, 46580, 3, 'AN', 'Anambra'),
(2, 46580, 3, 'BC', 'Bauchi'),
(2, 46580, 3, 'BY', 'Bayelsa'),
(2, 46580, 3, 'BN', 'Benue'),
(2, 46580, 3, 'BO', 'Borno'),
(2, 46580, 3, 'CR', 'Cross River'),
(2, 46580, 3, 'DE', 'Delta'),
(2, 46580, 3, 'EB', 'Ebonyi'),
(2, 46580, 3, 'ED', 'Edo'),
(2, 46580, 3, 'EK', 'Ekiti'),
(2, 46580, 3, 'EN', 'Enugu'),
(2, 46580, 3, 'GO', 'Gombe'),
(2, 46580, 3, 'IM', 'Imo'),
(2, 46580, 3, 'JI', 'Jigawa'),
(2, 46580, 3, 'KD', 'Kaduna'),
(2, 46580, 3, 'KN', 'Kano'),
(2, 46580, 3, 'KT', 'Katsina'),
(2, 46580, 3, 'KE', 'Kebbi'),
(2, 46580, 3, 'KO', 'Kogi'),
(2, 46580, 3, 'KW', 'Kwara'),
(2, 46580, 3, 'LA', 'Lagos'),
(2, 46580, 3, 'NA', 'Nassarawa'),
(2, 46580, 3, 'NI', 'Niger'),
(2, 46580, 3, 'OG', 'Ogun'),
(2, 46580, 3, 'ON', 'Ondo'),
(2, 46580, 3, 'OS', 'Osun'),
(2, 46580, 3, 'OY', 'Oyo'),
(2, 46580, 3, 'PL', 'Plateau'),
(2, 46580, 3, 'RI', 'Rivers'),
(2, 46580, 3, 'SO', 'Sokoto'),
(2, 46580, 3, 'TA', 'Taraba'),
(2, 46580, 3, 'YO', 'Yobe'),
(2, 46580, 3, 'ZA', 'Zamfara');

--  'Nicaragua', 'NI', 'NIC'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46590, 3, 'AN', 'Atlantico Norte'),
(2, 46590, 3, 'AS', 'Atlantico Sur'),
(2, 46590, 3, 'BO', 'Boaco'),
(2, 46590, 3, 'CA', 'Carazo'),
(2, 46590, 3, 'CI', 'Chinandega'),
(2, 46590, 3, 'CO', 'Chontales'),
(2, 46590, 3, 'ES', 'Esteli'),
(2, 46590, 3, 'GR', 'Granada'),
(2, 46590, 3, 'JI', 'Jinotega'),
(2, 46590, 3, 'LE', 'Leon'),
(2, 46590, 3, 'MD', 'Madriz'),
(2, 46590, 3, 'MN', 'Managua'),
(2, 46590, 3, 'MS', 'Masaya'),
(2, 46590, 3, 'MT', 'Matagalpa'),
(2, 46590, 3, 'NS', 'Nuevo Segovia'),
(2, 46590, 3, 'RS', 'Rio San Juan'),
(2, 46590, 3, 'RI', 'Rivas');

-- 'Netherlands', 'NL', 'NLD'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 543, 3, 'DR', 'Drenthe'),
(2, 543, 3, 'FL', 'Flevoland'),
(2, 543, 3, 'FR', 'Friesland'),
(2, 543, 3, 'GE', 'Gelderland'),
(2, 543, 3, 'GR', 'Groningen'),
(2, 543, 3, 'LI', 'Limburg'),
(2, 543, 3, 'NB', 'Noord Brabant'),
(2, 543, 3, 'NH', 'Noord Holland'),
(2, 543, 3, 'OV', 'Overijssel'),
(2, 543, 3, 'UT', 'Utrecht'),
(2, 543, 3, 'ZE', 'Zeeland'),
(2, 543, 3, 'ZH', 'Zuid Holland');

--  'Norway', 'NO', 'NOR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 546, 3, '01', 'Oestfold'),
(2, 546, 3, '02', 'Akershus'),
(2, 546, 3, '03', 'Oslo'),
(2, 546, 3, '04', 'Hedmark'),
(2, 546, 3, '05', 'Oppland'),
(2, 546, 3, '06', 'Buskerud'),
(2, 546, 3, '07', 'Vestfold'),
(2, 546, 3, '08', 'Telemark'),
(2, 546, 3, '09', 'Aust-Agder'),
(2, 546, 3, '10', 'Vest-Agder'),
(2, 546, 3, '11', 'Rogaland'),
(2, 546, 3, '12', 'Hordaland'),
(2, 546, 3, '14', 'Sogn og Fjordane'),
(2, 546, 3, '15', 'Moere og Romsdal'),
(2, 546, 3, '16', 'Soer-Troendelag'),
(2, 546, 3, '17', 'Nord-Troendelag'),
(2, 546, 3, '18', 'Nordland'),
(2, 546, 3, '19', 'Troms'),
(2, 546, 3, '20', 'Finnmark'),
(2, 546, 3, 'SV', 'Svalbard');

--  'Nepal', 'NP', 'NPL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46600, 3, 'BA', 'Bagmati'),
(2, 46600, 3, 'BH', 'Bheri'),
(2, 46600, 3, 'DH', 'Dhawalagiri'),
(2, 46600, 3, 'GA', 'Gandaki'),
(2, 46600, 3, 'JA', 'Janakpur'),
(2, 46600, 3, 'KA', 'Karnali'),
(2, 46600, 3, 'KO', 'Kosi'),
(2, 46600, 3, 'LU', 'Lumbini'),
(2, 46600, 3, 'MA', 'Mahakali'),
(2, 46600, 3, 'ME', 'Mechi'),
(2, 46600, 3, 'NA', 'Narayani'),
(2, 46600, 3, 'RA', 'Rapti'),
(2, 46600, 3, 'SA', 'Sagarmatha'),
(2, 46600, 3, 'SE', 'Seti');

--  'Nauru', 'NR', 'NRU'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46610, 3, 'AO', 'Aiwo'),
(2, 46610, 3, 'AA', 'Anabar'),
(2, 46610, 3, 'AT', 'Anetan'),
(2, 46610, 3, 'AI', 'Anibare'),
(2, 46610, 3, 'BA', 'Baiti'),
(2, 46610, 3, 'BO', 'Boe'),
(2, 46610, 3, 'BU', 'Buada'),
(2, 46610, 3, 'DE', 'Denigomodu'),
(2, 46610, 3, 'EW', 'Ewa'),
(2, 46610, 3, 'IJ', 'Ijuw'),
(2, 46610, 3, 'ME', 'Meneng'),
(2, 46610, 3, 'NI', 'Nibok'),
(2, 46610, 3, 'UA', 'Uaboe'),
(2, 46610, 3, 'YA', 'Yaren');

--  'Niue', 'NU', 'NIU'

--  'New Zealand', 'NZ', 'NZL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 538, 3, 'AUK', 'Auckland'),
(2, 538, 3, 'BOP', 'Bay of Plenty'),
(2, 538, 3, 'CAN', 'Canterbury'),
(2, 538, 3, 'COR', 'Coromandel'),
(2, 538, 3, 'GIS', 'Gisborne'),
(2, 538, 3, 'FIO', 'Fiordland'),
(2, 538, 3, 'HKB', 'Hawke\'s Bay'),
(2, 538, 3, 'MBH', 'Marlborough'),
(2, 538, 3, 'MWT', 'Manawatu-Wanganui'),
(2, 538, 3, 'MCM', 'Mt Cook-Mackenzie'),
(2, 538, 3, 'NSN', 'Nelson'),
(2, 538, 3, 'NTL', 'Northland'),
(2, 538, 3, 'OTA', 'Otago'),
(2, 538, 3, 'STL', 'Southland'),
(2, 538, 3, 'TKI', 'Taranaki'),
(2, 538, 3, 'WGN', 'Wellington'),
(2, 538, 3, 'WKO', 'Waikato'),
(2, 538, 3, 'WAI', 'Wairprarapa'),
(2, 538, 3, 'WTC', 'West Coast');

--  'Oman', 'OM', 'OMN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46630, 3, 'DA', 'Ad Dakhiliyah'),
(2, 46630, 3, 'BA', 'Al Batinah'),
(2, 46630, 3, 'WU', 'Al Wusta'),
(2, 46630, 3, 'SH', 'Ash Sharqiyah'),
(2, 46630, 3, 'ZA', 'Az Zahirah'),
(2, 46630, 3, 'MA', 'Masqat'),
(2, 46630, 3, 'MU', 'Musandam'),
(2, 46630, 3, 'ZU', 'Zufar');

--  'OS', 'South Ossetia',
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46640, 3, 'TV', 'Tskhinval');

--  'Panama', 'PA', 'PAN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46650, 3, 'BT', 'Bocas del Toro'),
(2, 46650, 3, 'CH', 'Chiriqui'),
(2, 46650, 3, 'CC', 'Cocle'),
(2, 46650, 3, 'CL', 'Colon'),
(2, 46650, 3, 'DA', 'Darien'),
(2, 46650, 3, 'HE', 'Herrera'),
(2, 46650, 3, 'LS', 'Los Santos'),
(2, 46650, 3, 'PA', 'Panama'),
(2, 46650, 3, 'SB', 'San Blas'),
(2, 46650, 3, 'VG', 'Veraguas');

--  'Peru', 'PE', 'PER'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46660, 3, 'AM', 'Amazonas'),
(2, 46660, 3, 'AN', 'Ancash'),
(2, 46660, 3, 'AP', 'Apurimac'),
(2, 46660, 3, 'AR', 'Arequipa'),
(2, 46660, 3, 'AY', 'Ayacucho'),
(2, 46660, 3, 'CJ', 'Cajamarca'),
(2, 46660, 3, 'CL', 'Callao'),
(2, 46660, 3, 'CU', 'Cusco'),
(2, 46660, 3, 'HV', 'Huancavelica'),
(2, 46660, 3, 'HO', 'Huanuco'),
(2, 46660, 3, 'IC', 'Ica'),
(2, 46660, 3, 'JU', 'Junin'),
(2, 46660, 3, 'LD', 'La Libertad'),
(2, 46660, 3, 'LY', 'Lambayeque'),
(2, 46660, 3, 'LI', 'Lima'),
(2, 46660, 3, 'LO', 'Loreto'),
(2, 46660, 3, 'MD', 'Madre de Dios'),
(2, 46660, 3, 'MO', 'Moquegua'),
(2, 46660, 3, 'PA', 'Pasco'),
(2, 46660, 3, 'PI', 'Piura'),
(2, 46660, 3, 'PU', 'Puno'),
(2, 46660, 3, 'SM', 'San Martin'),
(2, 46660, 3, 'TA', 'Tacna'),
(2, 46660, 3, 'TU', 'Tumbes'),
(2, 46660, 3, 'UC', 'Ucayali');

--  'French Polynesia', 'PF', 'PYF'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46670, 3, 'M', 'Archipel des Marquises'),
(2, 46670, 3, 'T', 'Archipel des Tuamotu'),
(2, 46670, 3, 'I', 'Archipel des Tubuai'),
(2, 46670, 3, 'V', 'Iles du Vent'),
(2, 46670, 3, 'S', 'Iles Sous-le-Vent');

--  'Papua New Guinea', 'PG', 'PNG'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46680, 3, 'BV', 'Bougainville'),
(2, 46680, 3, 'CE', 'Central'),
(2, 46680, 3, 'CH', 'Chimbu'),
(2, 46680, 3, 'EH', 'Eastern Highlands'),
(2, 46680, 3, 'EB', 'East New Britain'),
(2, 46680, 3, 'ES', 'East Sepik'),
(2, 46680, 3, 'EN', 'Enga'),
(2, 46680, 3, 'GU', 'Gulf'),
(2, 46680, 3, 'MD', 'Madang'),
(2, 46680, 3, 'MN', 'Manus'),
(2, 46680, 3, 'MB', 'Milne Bay'),
(2, 46680, 3, 'MR', 'Morobe'),
(2, 46680, 3, 'NC', 'National Capital'),
(2, 46680, 3, 'NI', 'New Ireland'),
(2, 46680, 3, 'NO', 'Northern'),
(2, 46680, 3, 'SA', 'Sandaun'),
(2, 46680, 3, 'SH', 'Southern Highlands'),
(2, 46680, 3, 'WE', 'Western'),
(2, 46680, 3, 'WH', 'Western Highlands'),
(2, 46680, 3, 'WB', 'West New Britain');

--  'Philippines', 'PH', 'PHL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46690, 3, 'ABR', 'Abra'),
(2, 46690, 3, 'ANO', 'Agusan del Norte'),
(2, 46690, 3, 'ASU', 'Agusan del Sur'),
(2, 46690, 3, 'AKL', 'Aklan'),
(2, 46690, 3, 'ALB', 'Albay'),
(2, 46690, 3, 'ANT', 'Antique'),
(2, 46690, 3, 'APY', 'Apayao'),
(2, 46690, 3, 'AUR', 'Aurora'),
(2, 46690, 3, 'BAS', 'Basilan'),
(2, 46690, 3, 'BTA', 'Bataan'),
(2, 46690, 3, 'BTE', 'Batanes'),
(2, 46690, 3, 'BTG', 'Batangas'),
(2, 46690, 3, 'BLR', 'Biliran'),
(2, 46690, 3, 'BEN', 'Benguet'),
(2, 46690, 3, 'BOL', 'Bohol'),
(2, 46690, 3, 'BUK', 'Bukidnon'),
(2, 46690, 3, 'BUL', 'Bulacan'),
(2, 46690, 3, 'CAG', 'Cagayan'),
(2, 46690, 3, 'CNO', 'Camarines Norte'),
(2, 46690, 3, 'CSU', 'Camarines Sur'),
(2, 46690, 3, 'CAM', 'Camiguin'),
(2, 46690, 3, 'CAP', 'Capiz'),
(2, 46690, 3, 'CAT', 'Catanduanes'),
(2, 46690, 3, 'CAV', 'Cavite'),
(2, 46690, 3, 'CEB', 'Cebu'),
(2, 46690, 3, 'CMP', 'Compostela'),
(2, 46690, 3, 'DNO', 'Davao del Norte'),
(2, 46690, 3, 'DSU', 'Davao del Sur'),
(2, 46690, 3, 'DOR', 'Davao Oriental'),
(2, 46690, 3, 'ESA', 'Eastern Samar'),
(2, 46690, 3, 'GUI', 'Guimaras'),
(2, 46690, 3, 'IFU', 'Ifugao'),
(2, 46690, 3, 'INO', 'Ilocos Norte'),
(2, 46690, 3, 'ISU', 'Ilocos Sur'),
(2, 46690, 3, 'ILO', 'Iloilo'),
(2, 46690, 3, 'ISA', 'Isabela'),
(2, 46690, 3, 'KAL', 'Kalinga'),
(2, 46690, 3, 'LAG', 'Laguna'),
(2, 46690, 3, 'LNO', 'Lanao del Norte'),
(2, 46690, 3, 'LSU', 'Lanao del Sur'),
(2, 46690, 3, 'UNI', 'La Union'),
(2, 46690, 3, 'LEY', 'Leyte'),
(2, 46690, 3, 'MAG', 'Maguindanao'),
(2, 46690, 3, 'MRN', 'Marinduque'),
(2, 46690, 3, 'MSB', 'Masbate'),
(2, 46690, 3, 'MIC', 'Mindoro Occidental'),
(2, 46690, 3, 'MIR', 'Mindoro Oriental'),
(2, 46690, 3, 'MSC', 'Misamis Occidental'),
(2, 46690, 3, 'MOR', 'Misamis Oriental'),
(2, 46690, 3, 'MOP', 'Mountain'),
(2, 46690, 3, 'NOC', 'Negros Occidental'),
(2, 46690, 3, 'NOR', 'Negros Oriental'),
(2, 46690, 3, 'NCT', 'North Cotabato'),
(2, 46690, 3, 'NSM', 'Northern Samar'),
(2, 46690, 3, 'NEC', 'Nueva Ecija'),
(2, 46690, 3, 'NVZ', 'Nueva Vizcaya'),
(2, 46690, 3, 'PLW', 'Palawan'),
(2, 46690, 3, 'PMP', 'Pampanga'),
(2, 46690, 3, 'PNG', 'Pangasinan'),
(2, 46690, 3, 'QZN', 'Quezon'),
(2, 46690, 3, 'QRN', 'Quirino'),
(2, 46690, 3, 'RIZ', 'Rizal'),
(2, 46690, 3, 'ROM', 'Romblon'),
(2, 46690, 3, 'SMR', 'Samar'),
(2, 46690, 3, 'SRG', 'Sarangani'),
(2, 46690, 3, 'SQJ', 'Siquijor'),
(2, 46690, 3, 'SRS', 'Sorsogon'),
(2, 46690, 3, 'SCO', 'South Cotabato'),
(2, 46690, 3, 'SLE', 'Southern Leyte'),
(2, 46690, 3, 'SKU', 'Sultan Kudarat'),
(2, 46690, 3, 'SLU', 'Sulu'),
(2, 46690, 3, 'SNO', 'Surigao del Norte'),
(2, 46690, 3, 'SSU', 'Surigao del Sur'),
(2, 46690, 3, 'TAR', 'Tarlac'),
(2, 46690, 3, 'TAW', 'Tawi-Tawi'),
(2, 46690, 3, 'ZBL', 'Zambales'),
(2, 46690, 3, 'ZNO', 'Zamboanga del Norte'),
(2, 46690, 3, 'ZSU', 'Zamboanga del Sur'),
(2, 46690, 3, 'ZSI', 'Zamboanga Sibugay');

--  'Pakistan', 'PK', 'PAK'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46700, 3, 'B', 'Balochistan'),
(2, 46700, 3, 'T', 'Federally Administered Tribal Ar'),
(2, 46700, 3, 'I', 'Islamabad Capital Territory'),
(2, 46700, 3, 'N', 'North-West Frontier'),
(2, 46700, 3, 'P', 'Punjab'),
(2, 46700, 3, 'S', 'Sindh');

--  'Poland', 'PL', 'POL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46710, 3, 'DO', 'Dolnoslaskie'),
(2, 46710, 3, 'KP', 'Kujawsko-Pomorskie'),
(2, 46710, 3, 'LO', 'Lodzkie'),
(2, 46710, 3, 'LL', 'Lubelskie'),
(2, 46710, 3, 'LU', 'Lubuskie'),
(2, 46710, 3, 'ML', 'Malopolskie'),
(2, 46710, 3, 'MZ', 'Mazowieckie'),
(2, 46710, 3, 'OP', 'Opolskie'),
(2, 46710, 3, 'PP', 'Podkarpackie'),
(2, 46710, 3, 'PL', 'Podlaskie'),
(2, 46710, 3, 'PM', 'Pomorskie'),
(2, 46710, 3, 'SL', 'Slaskie'),
(2, 46710, 3, 'SW', 'Swietokrzyskie'),
(2, 46710, 3, 'WM', 'Warminsko-Mazurskie'),
(2, 46710, 3, 'WP', 'Wielkopolskie'),
(2, 46710, 3, 'ZA', 'Zachodniopomorskie');

--  'Saint Pierre and Miquelon', 'PM', 'SPM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46720, 3, 'P', 'Saint Pierre'),
(2, 46720, 3, 'M', 'Miquelon');

--  'Pitcairn', 'PN', 'PCN'

--  'Puerto Rico', 'PR', 'PRI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46740, 3, 'AJ', 'Adjuntas'),
(2, 46740, 3, 'AD', 'Aguada'),
(2, 46740, 3, 'AL', 'Aguadilla'),
(2, 46740, 3, 'AB', 'Aguas Buenas'),
(2, 46740, 3, 'AI', 'Aibonito'),
(2, 46740, 3, 'AN', 'Anasco'),
(2, 46740, 3, 'AC', 'Arecibo'),
(2, 46740, 3, 'AR', 'Arroyo'),
(2, 46740, 3, 'BC', 'Barceloneta'),
(2, 46740, 3, 'BQ', 'Barranquitas'),
(2, 46740, 3, 'BY', 'Bayamon'),
(2, 46740, 3, 'CR', 'Cabo Rojo'),
(2, 46740, 3, 'CG', 'Caguas'),
(2, 46740, 3, 'CA', 'Camuy'),
(2, 46740, 3, 'CV', 'Canovanas'),
(2, 46740, 3, 'CN', 'Carolina'),
(2, 46740, 3, 'CT', 'Catano'),
(2, 46740, 3, 'CY', 'Cayey'),
(2, 46740, 3, 'CB', 'Ceiba'),
(2, 46740, 3, 'CL', 'Ciales'),
(2, 46740, 3, 'CD', 'Cidra'),
(2, 46740, 3, 'CO', 'Coamo'),
(2, 46740, 3, 'CM', 'Comerio'),
(2, 46740, 3, 'CZ', 'Corozal'),
(2, 46740, 3, 'CU', 'Culebra'),
(2, 46740, 3, 'DO', 'Dorado'),
(2, 46740, 3, 'FJ', 'Fajardo'),
(2, 46740, 3, 'FL', 'Florida'),
(2, 46740, 3, 'GC', 'Guanica'),
(2, 46740, 3, 'GM', 'Guayama'),
(2, 46740, 3, 'GL', 'Guayanilla'),
(2, 46740, 3, 'GB', 'Guaynabo'),
(2, 46740, 3, 'GR', 'Gurabo'),
(2, 46740, 3, 'HA', 'Hatillo'),
(2, 46740, 3, 'HO', 'Hormigueros'),
(2, 46740, 3, 'HU', 'Humacao'),
(2, 46740, 3, 'IS', 'Isabela'),
(2, 46740, 3, 'JY', 'Jayuya'),
(2, 46740, 3, 'JD', 'Juana Diaz'),
(2, 46740, 3, 'JC', 'Juncos'),
(2, 46740, 3, 'LJ', 'Lajas'),
(2, 46740, 3, 'LR', 'Lares'),
(2, 46740, 3, 'LM', 'Las Marias'),
(2, 46740, 3, 'LP', 'Las Piedras'),
(2, 46740, 3, 'LZ', 'Loiza'),
(2, 46740, 3, 'LQ', 'Luquillo'),
(2, 46740, 3, 'MT', 'Manati'),
(2, 46740, 3, 'MR', 'Maricao'),
(2, 46740, 3, 'MB', 'Maunabo'),
(2, 46740, 3, 'MG', 'Mayaguez'),
(2, 46740, 3, 'MC', 'Moca'),
(2, 46740, 3, 'MV', 'Morovis'),
(2, 46740, 3, 'NG', 'Naguabo'),
(2, 46740, 3, 'NR', 'Naranjito'),
(2, 46740, 3, 'OR', 'Orocovis'),
(2, 46740, 3, 'PT', 'Patillas'),
(2, 46740, 3, 'PN', 'Penuelas'),
(2, 46740, 3, 'PO', 'Ponce'),
(2, 46740, 3, 'QB', 'Quebradillas'),
(2, 46740, 3, 'RC', 'Rincon'),
(2, 46740, 3, 'RG', 'Rio Grande'),
(2, 46740, 3, 'SB', 'Sabana Grande'),
(2, 46740, 3, 'SA', 'Salinas'),
(2, 46740, 3, 'SG', 'San German'),
(2, 46740, 3, 'SJ', 'San Juan'),
(2, 46740, 3, 'SL', 'San Lorenzo'),
(2, 46740, 3, 'SS', 'San Sebastian'),
(2, 46740, 3, 'SI', 'Santa Isabel'),
(2, 46740, 3, 'TA', 'Toa Alta'),
(2, 46740, 3, 'TB', 'Toa Baja'),
(2, 46740, 3, 'TJ', 'Trujillo Alto'),
(2, 46740, 3, 'UT', 'Utuado'),
(2, 46740, 3, 'VA', 'Vega Alta'),
(2, 46740, 3, 'VB', 'Vega Baja'),
(2, 46740, 3, 'VQ', 'Vieques'),
(2, 46740, 3, 'VL', 'Villalba'),
(2, 46740, 3, 'YB', 'Yabucoa'),
(2, 46740, 3, 'YU', 'Yauco');

--  'PS', 'Palestine'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46750, 3, 'BL', 'Bethlehem'),
(2, 46750, 3, 'DB', 'Deir Al-Balah'),
(2, 46750, 3, 'GZ', 'Gaza'),
(2, 46750, 3, 'GS', 'Gaza ash Shamaliyah'),
(2, 46750, 3, 'HE', 'Hebron'),
(2, 46750, 3, 'JN', 'Jenin'),
(2, 46750, 3, 'JC', 'Jericho'),
(2, 46750, 3, 'JS', 'Jerusalem'),
(2, 46750, 3, 'KY', 'Khan Yunis'),
(2, 46750, 3, 'NA', 'Nablus'),
(2, 46750, 3, 'QA', 'Qalqilya'),
(2, 46750, 3, 'RA', 'Rafah'),
(2, 46750, 3, 'RB', 'Ramallah and Al-Bireh'),
(2, 46750, 3, 'SA', 'Salfit'),
(2, 46750, 3, 'TB', 'Tubas'),
(2, 46750, 3, 'TL', 'Tulkarm');

--  'Portugal', 'PT', 'PRT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46760, 3, 'AC', 'Azores'),
(2, 46760, 3, 'AV', 'Aveiro'),
(2, 46760, 3, 'BE', 'Beja'),
(2, 46760, 3, 'BR', 'Braga'),
(2, 46760, 3, 'BA', 'Braganza'),
(2, 46760, 3, 'CB', 'Castelo Branco'),
(2, 46760, 3, 'CO', 'Coimbra'),
(2, 46760, 3, 'EV', 'Evora'),
(2, 46760, 3, 'FA', 'Faro'),
(2, 46760, 3, 'GU', 'Guarda'),
(2, 46760, 3, 'LE', 'Leiria'),
(2, 46760, 3, 'LI', 'Lisboa'),
(2, 46760, 3, 'ME', 'Madeira'),
(2, 46760, 3, 'PO', 'Portalegre'),
(2, 46760, 3, 'PR', 'Porto'),
(2, 46760, 3, 'SA', 'Santarem'),
(2, 46760, 3, 'SE', 'Setubal'),
(2, 46760, 3, 'VC', 'Viana do Castelo'),
(2, 46760, 3, 'VR', 'Vila Real'),
(2, 46760, 3, 'VI', 'Viseu');

--  'Palau', 'PW', 'PLW'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46770, 3, 'AM', 'Aimeliik'),
(2, 46770, 3, 'AR', 'Airai'),
(2, 46770, 3, 'AN', 'Angaur'),
(2, 46770, 3, 'HA', 'Hatohobei'),
(2, 46770, 3, 'KA', 'Kayangel'),
(2, 46770, 3, 'KO', 'Koror'),
(2, 46770, 3, 'ME', 'Melekeok'),
(2, 46770, 3, 'NA', 'Ngaraard'),
(2, 46770, 3, 'NG', 'Ngarchelong'),
(2, 46770, 3, 'ND', 'Ngardmau'),
(2, 46770, 3, 'NT', 'Ngatpang'),
(2, 46770, 3, 'NC', 'Ngchesar'),
(2, 46770, 3, 'NR', 'Ngeremlengui'),
(2, 46770, 3, 'NW', 'Ngiwal'),
(2, 46770, 3, 'PE', 'Peleliu'),
(2, 46770, 3, 'SO', 'Sonsorol');

--  'Paraguay', 'PY', 'PRY'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46780, 3, 'AG', 'Alto Paraguay'),
(2, 46780, 3, 'AN', 'Alto Parana'),
(2, 46780, 3, 'AM', 'Amambay'),
(2, 46780, 3, 'AS', 'Asuncion'),
(2, 46780, 3, 'BO', 'Boqueron'),
(2, 46780, 3, 'CG', 'Caaguazu'),
(2, 46780, 3, 'CZ', 'Caazapa'),
(2, 46780, 3, 'CN', 'Canindeyu'),
(2, 46780, 3, 'CE', 'Central'),
(2, 46780, 3, 'CC', 'Concepcion'),
(2, 46780, 3, 'CD', 'Cordillera'),
(2, 46780, 3, 'GU', 'Guaira'),
(2, 46780, 3, 'IT', 'Itapua'),
(2, 46780, 3, 'MI', 'Misiones'),
(2, 46780, 3, 'NE', 'Neembucu'),
(2, 46780, 3, 'PA', 'Paraguari'),
(2, 46780, 3, 'PH', 'Presidente Hayes'),
(2, 46780, 3, 'SP', 'San Pedro');

--  'Qatar', 'QA', 'QAT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46790, 3, 'DW', 'Ad Dawhah'),
(2, 46790, 3, 'GW', 'Al Ghuwayriyah'),
(2, 46790, 3, 'JM', 'Al Jumayliyah'),
(2, 46790, 3, 'KR', 'Al Khawr'),
(2, 46790, 3, 'WK', 'Al Wakrah'),
(2, 46790, 3, 'RN', 'Ar Rayyan'),
(2, 46790, 3, 'JB', 'Jarayan al Batinah'),
(2, 46790, 3, 'MS', 'Madinat ash Shamal'),
(2, 46790, 3, 'UD', 'Umm Sa\'id'),
(2, 46790, 3, 'UL', 'Umm Salal');

--  'Reunion', 'RE', 'REU'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46800, 3, 'BN', 'Saint-Benoit'),
(2, 46800, 3, 'DE', 'Saint-Denis'),
(2, 46800, 3, 'PA', 'Saint-Paul'),
(2, 46800, 3, 'PI', 'Saint-Pierre');

--  'Romania', 'RO', 'ROM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46810, 3, 'AB', 'Alba'),
(2, 46810, 3, 'AR', 'Arad'),
(2, 46810, 3, 'AG', 'Arges'),
(2, 46810, 3, 'BC', 'Bacau'),
(2, 46810, 3, 'BH', 'Bihor'),
(2, 46810, 3, 'BN', 'Bistrita-Nasaud'),
(2, 46810, 3, 'BT', 'Botosani'),
(2, 46810, 3, 'BV', 'Brasov'),
(2, 46810, 3, 'BR', 'Braila'),
(2, 46810, 3, 'B', 'Bucuresti'),
(2, 46810, 3, 'BZ', 'Buzau'),
(2, 46810, 3, 'CS', 'Caras-Severin'),
(2, 46810, 3, 'CL', 'Calarasi'),
(2, 46810, 3, 'CJ', 'Cluj'),
(2, 46810, 3, 'CT', 'Constanta'),
(2, 46810, 3, 'CV', 'Covasna'),
(2, 46810, 3, 'DB', 'Dimbovita'),
(2, 46810, 3, 'DJ', 'Dolj'),
(2, 46810, 3, 'GL', 'Galati'),
(2, 46810, 3, 'GR', 'Giurgiu'),
(2, 46810, 3, 'GJ', 'Gorj'),
(2, 46810, 3, 'HR', 'Harghita'),
(2, 46810, 3, 'HD', 'Hunedoara'),
(2, 46810, 3, 'IL', 'Ialomita'),
(2, 46810, 3, 'IS', 'Iasi'),
(2, 46810, 3, 'IF', 'Ilfov'),
(2, 46810, 3, 'MM', 'Maramures'),
(2, 46810, 3, 'MH', 'Mehedinti'),
(2, 46810, 3, 'MS', 'Mures'),
(2, 46810, 3, 'NT', 'Neamt'),
(2, 46810, 3, 'OT', 'Olt'),
(2, 46810, 3, 'PH', 'Prahova'),
(2, 46810, 3, 'SM', 'Satu-Mare'),
(2, 46810, 3, 'SJ', 'Salaj'),
(2, 46810, 3, 'SB', 'Sibiu'),
(2, 46810, 3, 'SV', 'Suceava'),
(2, 46810, 3, 'TR', 'Teleorman'),
(2, 46810, 3, 'TM', 'Timis'),
(2, 46810, 3, 'TL', 'Tulcea'),
(2, 46810, 3, 'VS', 'Vaslui'),
(2, 46810, 3, 'VL', 'Valcea'),
(2, 46810, 3, 'VN', 'Vrancea');

--  'RS', 'SER', 'Serbia'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46820, 3, 'BE', 'Belgrade'),
(2, 46820, 3, 'ES', 'Eastern Serbia'),
(2, 46820, 3, 'KO', 'Kosovo'),
(2, 46820, 3, 'RA', 'Raska'),
(2, 46820, 3, 'SS', 'Southern Serbia'),
(2, 46820, 3, 'SU', 'Sumadija'),
(2, 46820, 3, 'WS', 'Western Serbia'),
(2, 46820, 3, 'VO', 'Vojvodina');

--  'Russia', 'RU', 'RUS'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 554, 3, 'ADG', 'Adygeya, Republic'),
(2, 554, 3, 'AGB', 'Aginskiy Buryatskiy avtonomnyy okrug'),
(2, 554, 3, 'ALR', 'Altay, Republic'),
(2, 554, 3, 'ALT', 'Altayskiy kray'),
(2, 554, 3, 'AMU', 'Amurskaya oblast'),
(2, 554, 3, 'ARK', 'Arkhangel\'skaya oblast'),
(2, 554, 3, 'AST', 'Astrakhanskaya oblast'),
(2, 554, 3, 'BAS', 'Bashkortostan, Republic'),
(2, 554, 3, 'BEL', 'Belgorodskaya oblast'),
(2, 554, 3, 'BRY', 'Bryanskaya oblast'),
(2, 554, 3, 'BUR', 'Buryatiya, Republic'),
(2, 554, 3, 'CEC', 'Chechnya, Republic'),
(2, 554, 3, 'CHE', 'Chelyabinskaya oblast'),
(2, 554, 3, 'CHI', 'Chitinskaya oblast'),
(2, 554, 3, 'CHK', 'Chukotskiy avtonomnyy okrug'),
(2, 554, 3, 'CHV', 'Chuvashiya, Republic'),
(2, 554, 3, 'DAG', 'Dagestan, Republic'),
(2, 554, 3, 'EVE', 'Evenkiyskiy avtonomniy okrug'),
(2, 554, 3, 'ING', 'Ingushetiya, Republic'),
(2, 554, 3, 'IRK', 'Irkutskaya oblast'),
(2, 554, 3, 'IVA', 'Ivanovskaya oblast'),
(2, 554, 3, 'KAM', 'Kamchatskaya oblast'),
(2, 554, 3, 'KAB', 'Kabardino-Balkariya, Republic'),
(2, 554, 3, 'KLG', 'Kaliningradskaya oblast'),
(2, 554, 3, 'KCH', 'Karachayevo-Cherkessiya, Republic'),
(2, 554, 3, 'KEM', 'Kemerovskaya oblast'),
(2, 554, 3, 'KHB', 'Khabarovskiy kray'),
(2, 554, 3, 'KHM', 'Khanty-Mansiyskiy avtonomnyy okrug'),
(2, 554, 3, 'KIR', 'Kirovskaya oblast'),
(2, 554, 3, 'KHK', 'Khakasiya, Republic'),
(2, 554, 3, 'KLM', 'Kalmykiya, Republic'),
(2, 554, 3, 'KLG', 'Kaluzhskaya oblast'),
(2, 554, 3, 'KOM', 'Komi, Republic'),
(2, 554, 3, 'KOR', 'Koryakskiy avtonomniy okrug'),
(2, 554, 3, 'KOS', 'Kostromskaya oblast'),
(2, 554, 3, 'KAR', 'Kareliya, Republic'),
(2, 554, 3, 'KRD', 'Krasnodarskiy kray'),
(2, 554, 3, 'KRY', 'Krasnoyarskiy kray'),
(2, 554, 3, 'KRG', 'Kurganskaya oblast'),
(2, 554, 3, 'KRS', 'Kurskaya oblast'),
(2, 554, 3, 'KRY', 'Krymskaya Republic'),
(2, 554, 3, 'LEN', 'Leningradskaya oblast'),
(2, 554, 3, 'LIP', 'Lipetskaya oblast'),
(2, 554, 3, 'MAG', 'Magadanskaya oblast'),
(2, 554, 3, 'MAR', 'Mariy El, Republic'),
(2, 554, 3, 'MOR', 'Mordoviya, Republic'),
(2, 554, 3, 'MOS', 'Moskovskaya oblast'),
(2, 554, 3, 'MSK', 'Moscow'),
(2, 554, 3, 'MUR', 'Murmanskaya oblast'),
(2, 554, 3, 'NEN', 'Nenetskiy avtonomniy okrug'),
(2, 554, 3, 'NOV', 'Novgorodskaya oblast'),
(2, 554, 3, 'NZH', 'Nizhegorodskaya oblast'),
(2, 554, 3, 'NSK', 'Novosibirskaya oblast'),
(2, 554, 3, 'OMS', 'Omskaya oblast'),
(2, 554, 3, 'ORE', 'Orenburgskaya oblast'),
(2, 554, 3, 'ORL', 'Orlovskaya oblast'),
(2, 554, 3, 'PER', 'Permskiy kray'),
(2, 554, 3, 'PEN', 'Penzenskaya oblast'),
(2, 554, 3, 'PRI', 'Primorskiy kray'),
(2, 554, 3, 'PSK', 'Pskovskaya oblast'),
(2, 554, 3, 'ROS', 'Rostovskaya oblast'),
(2, 554, 3, 'RYA', 'Ryazanskaya oblast'),
(2, 554, 3, 'SAH', 'Sakha, Republic'),
(2, 554, 3, 'SHL', 'Sakhalinskaya oblast'),
(2, 554, 3, 'SAM', 'Samarskaya oblast'),
(2, 554, 3, 'SAR', 'Saratovskaya oblast'),
(2, 554, 3, 'SEB', 'Sebastopol City'),
(2, 554, 3, 'SEO', 'Severnaya Osetiya, Republic'),
(2, 554, 3, 'SMO', 'Smolenskaya oblast'),
(2, 554, 3, 'SPB', 'Sankt-Petersburg'),
(2, 554, 3, 'STA', 'Stavropol\'skiy kray'),
(2, 554, 3, 'SVE', 'Sverdlovskaya oblast'),
(2, 554, 3, 'TAT', 'Tatarstan, Republic'),
(2, 554, 3, 'TMB', 'Tambovskaya oblast'),
(2, 554, 3, 'TAY', 'Taymyrskiy (Dolgano-Nenetskiy) avtonomnyy okrug'),
(2, 554, 3, 'TOM', 'Tomskaya oblast'),
(2, 554, 3, 'TUL', 'Tul\'skaya oblast'),
(2, 554, 3, 'TVE', 'Tverskaya oblast'),
(2, 554, 3, 'TYV', 'Tyva, Republic'),
(2, 554, 3, 'TMN', 'Tyumenskaya oblast'),
(2, 554, 3, 'UDM', 'Udmurtiya, Republic'),
(2, 554, 3, 'ULY', 'Ulyanovskaya oblast'),
(2, 554, 3, 'UOB', 'Ust\'-Ordyniskiy Buryatskiy avtonomnyy okrug'),
(2, 554, 3, 'VLG', 'Volgogradskaya oblast'),
(2, 554, 3, 'VLA', 'Vladimirskaya oblast'),
(2, 554, 3, 'VOL', 'Vologodskaya oblast'),
(2, 554, 3, 'VRN', 'Voronezhskaya oblast'),
(2, 554, 3, 'YAN', 'Yamalo-Nenetskiy avtonomnyy okrug'),
(2, 554, 3, 'YAR', 'Yaroslavskaya oblast'),
(2, 554, 3, 'YEV', 'Yevreyskaya avtonomnaya oblast');

--  'Rwanda', 'RW', 'RWA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46830, 3, 'BU', 'Butare'),
(2, 46830, 3, 'BY', 'Byumba'),
(2, 46830, 3, 'CY', 'Cyangugu'),
(2, 46830, 3, 'GK', 'Gikongoro'),
(2, 46830, 3, 'GS', 'Gisenyi'),
(2, 46830, 3, 'GT', 'Gitarama'),
(2, 46830, 3, 'KG', 'Kibungo'),
(2, 46830, 3, 'KY', 'Kibuye'),
(2, 46830, 3, 'KR', 'Kigali Rurale'),
(2, 46830, 3, 'KV', 'Kigali-ville'),
(2, 46830, 3, 'RU', 'Ruhengeri'),
(2, 46830, 3, 'UM', 'Umutara');

--  'Saudi Arabia', 'SA', 'SAU'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46840, 3, 'BH', 'Al Bahah'),
(2, 46840, 3, 'HS', 'Al Hudud ash Shamaliyah'),
(2, 46840, 3, 'JF', 'Al Jawf'),
(2, 46840, 3, 'MD', 'Al Madinah'),
(2, 46840, 3, 'QS', 'Al Qasim'),
(2, 46840, 3, 'RD', 'Ar Riyad'),
(2, 46840, 3, 'AQ', 'Ash Sharqiyah (Eastern)'),
(2, 46840, 3, 'AS', '\'Asir'),
(2, 46840, 3, 'HL', 'Ha\'il'),
(2, 46840, 3, 'JZ', 'Jizan'),
(2, 46840, 3, 'ML', 'Makkah'),
(2, 46840, 3, 'NR', 'Najran'),
(2, 46840, 3, 'TB', 'Tabuk');

--  'Solomon Islands', 'SB', 'SLB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46850, 3, 'CE', 'Central'),
(2, 46850, 3, 'CH', 'Choiseul'),
(2, 46850, 3, 'GC', 'Guadalcanal'),
(2, 46850, 3, 'HO', 'Honiara'),
(2, 46850, 3, 'IS', 'Isabel'),
(2, 46850, 3, 'MK', 'Makira'),
(2, 46850, 3, 'ML', 'Malaita'),
(2, 46850, 3, 'RB', 'Rennell and Bellona'),
(2, 46850, 3, 'TM', 'Temotu'),
(2, 46850, 3, 'WE', 'Western');

--  'Seychelles', 'SC', 'SYC'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46860, 3, 'AP', 'Anse aux Pins'),
(2, 46860, 3, 'AB', 'Anse Boileau'),
(2, 46860, 3, 'AE', 'Anse Etoile'),
(2, 46860, 3, 'AL', 'Anse Louis'),
(2, 46860, 3, 'AR', 'Anse Royale'),
(2, 46860, 3, 'BL', 'Baie Lazare'),
(2, 46860, 3, 'BS', 'Baie Sainte Anne'),
(2, 46860, 3, 'BV', 'Beau Vallon'),
(2, 46860, 3, 'BA', 'Bel Air'),
(2, 46860, 3, 'BO', 'Bel Ombre'),
(2, 46860, 3, 'CA', 'Cascade'),
(2, 46860, 3, 'GL', 'Glacis'),
(2, 46860, 3, 'GM', 'Grand\' Anse (on Mahe)'),
(2, 46860, 3, 'GP', 'Grand\' Anse (on Praslin)'),
(2, 46860, 3, 'DG', 'La Digue'),
(2, 46860, 3, 'RA', 'La Riviere Anglaise'),
(2, 46860, 3, 'MB', 'Mont Buxton'),
(2, 46860, 3, 'MF', 'Mont Fleuri'),
(2, 46860, 3, 'PL', 'Plaisance'),
(2, 46860, 3, 'PR', 'Pointe La Rue'),
(2, 46860, 3, 'PG', 'Port Glaud'),
(2, 46860, 3, 'SL', 'Saint Louis'),
(2, 46860, 3, 'TA', 'Takamaka');

--  'Sudan', 'SD', 'SDN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46870, 3, 'ANL', 'A\'ali an Nil'),
(2, 46870, 3, 'BAM', 'Al Bahr al Ahmar'),
(2, 46870, 3, 'BRT', 'Al Buhayrat'),
(2, 46870, 3, 'JZR', 'Al Jazirah'),
(2, 46870, 3, 'KRT', 'Al Khartum'),
(2, 46870, 3, 'QDR', 'Al Qadarif'),
(2, 46870, 3, 'WDH', 'Al Wahdah'),
(2, 46870, 3, 'ANB', 'An Nil al Abyad'),
(2, 46870, 3, 'ANZ', 'An Nil al Azraq'),
(2, 46870, 3, 'ASH', 'Ash Shamaliyah'),
(2, 46870, 3, 'BJA', 'Bahr al Jabal'),
(2, 46870, 3, 'GIS', 'Gharb al Istiwa\'iyah'),
(2, 46870, 3, 'GBG', 'Gharb Bahr al Ghazal'),
(2, 46870, 3, 'GDA', 'Gharb Darfur'),
(2, 46870, 3, 'GKU', 'Gharb Kurdufan'),
(2, 46870, 3, 'JDA', 'Janub Darfur'),
(2, 46870, 3, 'JKU', 'Janub Kurdufan'),
(2, 46870, 3, 'JQL', 'Junqali'),
(2, 46870, 3, 'KSL', 'Kassala'),
(2, 46870, 3, 'NNL', 'Nahr an Nil'),
(2, 46870, 3, 'SBG', 'Shamal Bahr al Ghazal'),
(2, 46870, 3, 'SDA', 'Shamal Darfur'),
(2, 46870, 3, 'SKU', 'Shamal Kurdufan'),
(2, 46870, 3, 'SIS', 'Sharq al Istiwa\'iyah'),
(2, 46870, 3, 'SNR', 'Sinnar'),
(2, 46870, 3, 'WRB', 'Warab');

--  'Sweden', 'SE', 'SWE'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 547, 3, 'AB', 'Stockholms lan'),
(2, 547, 3, 'AC', 'Vasterbottens lan'),
(2, 547, 3, 'BD', 'Norrbottens lan'),
(2, 547, 3, 'C', 'Uppsala lan'),
(2, 547, 3, 'D', 'Sodermanlands lan'),
(2, 547, 3, 'E', 'Ostergotlands lan'),
(2, 547, 3, 'F', 'Jonkopings lan'),
(2, 547, 3, 'G', 'Kronobergs lan'),
(2, 547, 3, 'H', 'Kalmar lan'),
(2, 547, 3, 'I', 'Gotlands lan'),
(2, 547, 3, 'K', 'Blekinge lan'),
(2, 547, 3, 'M', 'Skane lan'),
(2, 547, 3, 'N', 'Hallands lan'),
(2, 547, 3, 'O', 'Vastra Gotalands lan'),
(2, 547, 3, 'S', 'Varmlands lan'),
(2, 547, 3, 'T', 'Orebro lan'),
(2, 547, 3, 'U', 'Vastmanlands lan'),
(2, 547, 3, 'W', 'Dalarnas lan'),
(2, 547, 3, 'X', 'Gavleborgs lan'),
(2, 547, 3, 'Y', 'Vasternorrlands lan'),
(2, 547, 3, 'Z', 'Jamtlands lan');

--  'Singapore', 'SG', 'SGP'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 557, 3, 'CS', 'Central Singapore'),
(2, 557, 3, 'NE', 'North East'),
(2, 557, 3, 'NW', 'North West'),
(2, 557, 3, 'SE', 'South East'),
(2, 557, 3, 'SW', 'South West');

--  'Saint Helena', 'SH', 'SHN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46880, 3, 'A', 'Ascension'),
(2, 46880, 3, 'S', 'Saint Helena'),
(2, 46880, 3, 'T', 'Tristan da Cunha');

--  'Slovenia', 'SI', 'SVN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46890, 3, 'DO', 'Dolenjska'),
(2, 46890, 3, 'GO', 'Gorenjska'),
(2, 46890, 3, 'GI', 'Goriska'),
(2, 46890, 3, 'KO', 'Koroska'),
(2, 46890, 3, 'NO', 'Notranjska'),
(2, 46890, 3, 'OK', 'Obalno-kraska'),
(2, 46890, 3, 'OS', 'Osrednjeslovenska'),
(2, 46890, 3, 'PD', 'Podravska'),
(2, 46890, 3, 'PM', 'Pomurska'),
(2, 46890, 3, 'PS', 'Savinjska'),
(2, 46890, 3, 'SP', 'Spodnjeposavska'),
(2, 46890, 3, 'ZA', 'Zasavska');

--  'Svalbard and Jan Mayen Islands', 'SJ', 'SJM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46900, 3, 'JN', 'Jan Mayen'),
(2, 46900, 3, 'SV', 'Svalbard');

--  'Slovakia (Slovak Republic)', 'SK', 'SVK'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46910, 3, 'BA', 'Banskobystricky'),
(2, 46910, 3, 'BR', 'Bratislavsky'),
(2, 46910, 3, 'KO', 'Kosicky'),
(2, 46910, 3, 'NI', 'Nitriansky'),
(2, 46910, 3, 'PR', 'Presovsky'),
(2, 46910, 3, 'TC', 'Trenciansky'),
(2, 46910, 3, 'TV', 'Trnavsky'),
(2, 46910, 3, 'ZI', 'Zilinsky');

--  'Sierra Leone', 'SL', 'SLE'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46920, 3, 'E', 'Eastern'),
(2, 46920, 3, 'N', 'Northern'),
(2, 46920, 3, 'S', 'Southern'),
(2, 46920, 3, 'W', 'Western');

--  'San Marino', 'SM', 'SMR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46930, 3, 'AC', 'Acquaviva'),
(2, 46930, 3, 'BM', 'Borgo Maggiore'),
(2, 46930, 3, 'CH', 'Chiesanuova'),
(2, 46930, 3, 'DO', 'Domagnano'),
(2, 46930, 3, 'FA', 'Faetano'),
(2, 46930, 3, 'FI', 'Fiorentino'),
(2, 46930, 3, 'MO', 'Montegiardino'),
(2, 46930, 3, 'SM', 'Citta di San Marino'),
(2, 46930, 3, 'SE', 'Serravalle');

--  'Senegal', 'SN', 'SEN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46940, 3, 'DA', 'Dakar'),
(2, 46940, 3, 'DI', 'Diourbel'),
(2, 46940, 3, 'FA', 'Fatick'),
(2, 46940, 3, 'KA', 'Kaolack'),
(2, 46940, 3, 'KO', 'Kolda'),
(2, 46940, 3, 'LO', 'Louga'),
(2, 46940, 3, 'MA', 'Matam'),
(2, 46940, 3, 'SL', 'Saint-Louis'),
(2, 46940, 3, 'TA', 'Tambacounda'),
(2, 46940, 3, 'TH', 'Thies'),
(2, 46940, 3, 'ZI', 'Ziguinchor');

--  'Somalia', 'SO', 'SOM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46950, 3, 'AW', 'Awdal'),
(2, 46950, 3, 'BK', 'Bakool'),
(2, 46950, 3, 'BN', 'Banaadir'),
(2, 46950, 3, 'BR', 'Bari'),
(2, 46950, 3, 'BY', 'Bay'),
(2, 46950, 3, 'GA', 'Galguduud'),
(2, 46950, 3, 'GE', 'Gedo'),
(2, 46950, 3, 'HI', 'Hiiraan'),
(2, 46950, 3, 'JD', 'Jubbada Dhexe'),
(2, 46950, 3, 'JH', 'Jubbada Hoose'),
(2, 46950, 3, 'MU', 'Mudug'),
(2, 46950, 3, 'NU', 'Nugaal'),
(2, 46950, 3, 'SA', 'Sanaag'),
(2, 46950, 3, 'SD', 'Shabeellaha Dhexe'),
(2, 46950, 3, 'SH', 'Shabeellaha Hoose'),
(2, 46950, 3, 'SL', 'Sool'),
(2, 46950, 3, 'TO', 'Togdheer'),
(2, 46950, 3, 'WG', 'Woqooyi Galbeed');

--  'Suriname', 'SR', 'SUR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46960, 3, 'BR', 'Brokopondo'),
(2, 46960, 3, 'CM', 'Commewijne'),
(2, 46960, 3, 'CR', 'Coronie'),
(2, 46960, 3, 'MA', 'Marowijne'),
(2, 46960, 3, 'NI', 'Nickerie'),
(2, 46960, 3, 'PA', 'Para'),
(2, 46960, 3, 'PM', 'Paramaribo'),
(2, 46960, 3, 'SA', 'Saramacca'),
(2, 46960, 3, 'SI', 'Sipaliwini'),
(2, 46960, 3, 'WA', 'Wanica');

--  'SS', 'South Sudan'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46970, 3, 'EC', 'Central Equatoria'),
(2, 46970, 3, 'EE', 'East Equatoria'),
(2, 46970, 3, 'JG', 'Jungoli'),
(2, 46970, 3, 'LK', 'Lakes'),
(2, 46970, 3, 'BN', 'North Bahr-al-Ghazal'),
(2, 46970, 3, 'UY', 'Unity'),
(2, 46970, 3, 'NU', 'Upper Nile'),
(2, 46970, 3, 'WR', 'Warap'),
(2, 46970, 3, 'BW', 'West Bahr-al-Ghazal'),
(2, 46970, 3, 'EW', 'West Equatoria');

--  'Sao Tome and Principe', 'ST', 'STP'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 46980, 3, 'S', 'Sao Tome'),
(2, 46980, 3, 'P', 'Principe');

--  'SU', 'Soviet Union'

--  'El Salvador', 'SV', 'SLV'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47000, 3, 'AH', 'Ahuachapan'),
(2, 47000, 3, 'CA', 'Cabanas'),
(2, 47000, 3, 'CH', 'Chalatenango'),
(2, 47000, 3, 'CU', 'Cuscatlan'),
(2, 47000, 3, 'LB', 'La Libertad'),
(2, 47000, 3, 'PZ', 'La Paz'),
(2, 47000, 3, 'UN', 'La Union'),
(2, 47000, 3, 'MO', 'Morazan'),
(2, 47000, 3, 'SM', 'San Miguel'),
(2, 47000, 3, 'SS', 'San Salvador'),
(2, 47000, 3, 'SV', 'San Vicente'),
(2, 47000, 3, 'SA', 'Santa Ana'),
(2, 47000, 3, 'SO', 'Sonsonate'),
(2, 47000, 3, 'US', 'Usulutan');

--  'Syrian Arab Republic', 'SY', 'SYR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47010, 3, 'HA', 'Al Hasakah'),
(2, 47010, 3, 'LA', 'Al Ladhiqiyah'),
(2, 47010, 3, 'QU', 'Al Qunaytirah'),
(2, 47010, 3, 'RQ', 'Ar Raqqah'),
(2, 47010, 3, 'SU', 'As Suwayda'),
(2, 47010, 3, 'DA', 'Dara'),
(2, 47010, 3, 'DZ', 'Dayr az Zawr'),
(2, 47010, 3, 'DI', 'Dimashq'),
(2, 47010, 3, 'HL', 'Halab'),
(2, 47010, 3, 'HM', 'Hamah'),
(2, 47010, 3, 'HI', 'Hims'),
(2, 47010, 3, 'ID', 'Idlib'),
(2, 47010, 3, 'RD', 'Rif Dimashq'),
(2, 47010, 3, 'TA', 'Tartus');

--  'Swaziland', 'SZ', 'SWZ'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47020, 3, 'H', 'Hhohho'),
(2, 47020, 3, 'L', 'Lubombo'),
(2, 47020, 3, 'M', 'Manzini'),
(2, 47020, 3, 'S', 'Shishelweni');

--  'Turks and Caicos Islands', 'TC', 'TCA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47030, 3, 'AC', 'Ambergris Cays'),
(2, 47030, 3, 'DC', 'Dellis Cay'),
(2, 47030, 3, 'FC', 'French Cay'),
(2, 47030, 3, 'LW', 'Little Water Cay'),
(2, 47030, 3, 'RC', 'Parrot Cay'),
(2, 47030, 3, 'PN', 'Pine Cay'),
(2, 47030, 3, 'SL', 'Salt Cay'),
(2, 47030, 3, 'GT', 'Grand Turk'),
(2, 47030, 3, 'SC', 'South Caicos'),
(2, 47030, 3, 'EC', 'East Caicos'),
(2, 47030, 3, 'MC', 'Middle Caicos'),
(2, 47030, 3, 'NC', 'North Caicos'),
(2, 47030, 3, 'PR', 'Providenciales'),
(2, 47030, 3, 'WC', 'West Caicos');

--  'Chad', 'TD', 'TCD'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47040, 3, 'BA', 'Batha'),
(2, 47040, 3, 'BI', 'Biltine'),
(2, 47040, 3, 'BE', 'Borkou-Ennedi-Tibesti'),
(2, 47040, 3, 'CB', 'Chari-Baguirmi'),
(2, 47040, 3, 'GU', 'Guera'),
(2, 47040, 3, 'KA', 'Kanem'),
(2, 47040, 3, 'LA', 'Lac'),
(2, 47040, 3, 'LC', 'Logone Occidental'),
(2, 47040, 3, 'LR', 'Logone Oriental'),
(2, 47040, 3, 'MK', 'Mayo-Kebbi'),
(2, 47040, 3, 'MC', 'Moyen-Chari'),
(2, 47040, 3, 'OU', 'Ouaddai'),
(2, 47040, 3, 'SA', 'Salamat'),
(2, 47040, 3, 'TA', 'Tandjile');

--  'French Southern Territories', 'TF', 'ATF'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47050, 3, 'C', 'Iles Crozet'),
(2, 47050, 3, 'K', 'Iles Kerguelen'),
(2, 47050, 3, 'A', 'Ile Amsterdam'),
(2, 47050, 3, 'P', 'Ile Saint-Paul'),
(2, 47050, 3, 'D', 'Adelie Land');

--  'Togo', 'TG', 'TGO'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47060, 3, 'K', 'Kara'),
(2, 47060, 3, 'P', 'Plateaux'),
(2, 47060, 3, 'S', 'Savanes'),
(2, 47060, 3, 'C', 'Centrale'),
(2, 47060, 3, 'M', 'Maritime');

--  'Thailand', 'TH', 'THA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 560, 3, 'AC', 'Amnat Charoen'),
(2, 560, 3, 'AT', 'Ang Thong'),
(2, 560, 3, 'AY', 'Ayutthaya'),
(2, 560, 3, 'BM', 'Bangkok'),
(2, 560, 3, 'BR', 'Buriram'),
(2, 560, 3, 'CC', 'Chachoengsao'),
(2, 560, 3, 'CN', 'Chai Nat'),
(2, 560, 3, 'CY', 'Chaiyaphum'),
(2, 560, 3, 'CT', 'Chanthaburi'),
(2, 560, 3, 'CM', 'Chiang Mai'),
(2, 560, 3, 'CR', 'Chiang Rai'),
(2, 560, 3, 'CB', 'Chon Buri'),
(2, 560, 3, 'CP', 'Chumphon'),
(2, 560, 3, 'KL', 'Kalasin'),
(2, 560, 3, 'KP', 'Kamphaeng Phet'),
(2, 560, 3, 'KN', 'Kanchanaburi'),
(2, 560, 3, 'KK', 'Khon Kaen'),
(2, 560, 3, 'KR', 'Krabi'),
(2, 560, 3, 'LG', 'Lampang'),
(2, 560, 3, 'LN', 'Lamphun'),
(2, 560, 3, 'LE', 'Loei'),
(2, 560, 3, 'LB', 'Lop Buri'),
(2, 560, 3, 'MH', 'Mae Hong Son'),
(2, 560, 3, 'MS', 'Maha Sarakham'),
(2, 560, 3, 'MD', 'Mukdahan'),
(2, 560, 3, 'NN', 'Nakhon Nayok'),
(2, 560, 3, 'NP', 'Nakhon Pathom'),
(2, 560, 3, 'NF', 'Nakhon Phanom'),
(2, 560, 3, 'NR', 'Nakhon Ratchasima'),
(2, 560, 3, 'NS', 'Nakhon Sawan'),
(2, 560, 3, 'NT', 'Nakhon Si Thammarat'),
(2, 560, 3, 'NA', 'Nan'),
(2, 560, 3, 'NW', 'Narathiwat'),
(2, 560, 3, 'NB', 'Nong Bua Lamphu'),
(2, 560, 3, 'NH', 'Nong Khai'),
(2, 560, 3, 'NO', 'Nonthaburi'),
(2, 560, 3, 'PT', 'Pathum Thani'),
(2, 560, 3, 'PI', 'Pattani'),
(2, 560, 3, 'PG', 'Phangnga'),
(2, 560, 3, 'PL', 'Phatthalung'),
(2, 560, 3, 'PY', 'Phayao'),
(2, 560, 3, 'PH', 'Phetchabun'),
(2, 560, 3, 'PE', 'Phetchaburi'),
(2, 560, 3, 'PC', 'Phichit'),
(2, 560, 3, 'PS', 'Phitsanulok'),
(2, 560, 3, 'PR', 'Phrae'),
(2, 560, 3, 'PU', 'Phuket'),
(2, 560, 3, 'PB', 'Prachin Buri'),
(2, 560, 3, 'PK', 'Prachuap Khiri Khan'),
(2, 560, 3, 'RN', 'Ranong'),
(2, 560, 3, 'RT', 'Ratchaburi'),
(2, 560, 3, 'RY', 'Rayong'),
(2, 560, 3, 'RE', 'Roi Et'),
(2, 560, 3, 'SK', 'Sa Kaeo'),
(2, 560, 3, 'SN', 'Sakon Nakhon'),
(2, 560, 3, 'SP', 'Samut Prakan'),
(2, 560, 3, 'SS', 'Samut Sakhon'),
(2, 560, 3, 'SM', 'Samut Songkhram'),
(2, 560, 3, 'SR', 'Sara Buri'),
(2, 560, 3, 'SA', 'Satun'),
(2, 560, 3, 'SB', 'Sing Buri'),
(2, 560, 3, 'SI', 'Sisaket'),
(2, 560, 3, 'SG', 'Songkhla'),
(2, 560, 3, 'SO', 'Sukhothai'),
(2, 560, 3, 'SH', 'Suphan Buri'),
(2, 560, 3, 'ST', 'Surat Thani'),
(2, 560, 3, 'SU', 'Surin'),
(2, 560, 3, 'TK', 'Tak'),
(2, 560, 3, 'TG', 'Trang'),
(2, 560, 3, 'TT', 'Trat'),
(2, 560, 3, 'UR', 'Ubon Ratchathani'),
(2, 560, 3, 'UN', 'Udon Thani'),
(2, 560, 3, 'UT', 'Uthai Thani'),
(2, 560, 3, 'UD', 'Uttaradit'),
(2, 560, 3, 'YL', 'Yala'),
(2, 560, 3, 'YS', 'Yasothon');

--  'Tajikistan', 'TJ', 'TJK'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47070, 3, 'GB', 'Gorno-Badakhstan'),
(2, 47070, 3, 'KT', 'Khatlon'),
(2, 47070, 3, 'SU', 'Sughd');

--  'Tokelau', 'TK', 'TKL'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47080, 3, 'A', 'Atafu'),
(2, 47080, 3, 'F', 'Fakaofo'),
(2, 47080, 3, 'N', 'Nukunonu');

--  'TL', 'Timor-Leste'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47090, 3, 'AL', 'Aileu'),
(2, 47090, 3, 'AN', 'Ainaro'),
(2, 47090, 3, 'AM', 'Ambeno'),
(2, 47090, 3, 'BC', 'Baucau'),
(2, 47090, 3, 'BB', 'Bobonaro'),
(2, 47090, 3, 'CL', 'Cova Lima'),
(2, 47090, 3, 'DL', 'Dili'),
(2, 47090, 3, 'ER', 'Ermera'),
(2, 47090, 3, 'LA', 'Lautem'),
(2, 47090, 3, 'LQ', 'Liquica'),
(2, 47090, 3, 'MT', 'Manatuto'),
(2, 47090, 3, 'MF', 'Manufahi'),
(2, 47090, 3, 'VQ', 'Viqueque');

--  'Turkmenistan', 'TM', 'TKM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47100, 3, 'A', 'Ahal Welayaty'),
(2, 47100, 3, 'B', 'Balkan Welayaty'),
(2, 47100, 3, 'D', 'Dashhowuz Welayaty'),
(2, 47100, 3, 'L', 'Lebap Welayaty'),
(2, 47100, 3, 'M', 'Mary Welayaty');

--  'Tunisia', 'TN', 'TUN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47110, 3, 'AR', 'Ariana'),
(2, 47110, 3, 'BJ', 'Beja'),
(2, 47110, 3, 'BA', 'Ben Arous'),
(2, 47110, 3, 'BI', 'Bizerte'),
(2, 47110, 3, 'GB', 'Gabes'),
(2, 47110, 3, 'GF', 'Gafsa'),
(2, 47110, 3, 'JE', 'Jendouba'),
(2, 47110, 3, 'KR', 'Kairouan'),
(2, 47110, 3, 'KS', 'Kasserine'),
(2, 47110, 3, 'KB', 'Kebili'),
(2, 47110, 3, 'KF', 'Kef'),
(2, 47110, 3, 'MH', 'Mahdia'),
(2, 47110, 3, 'MN', 'Manouba'),
(2, 47110, 3, 'ME', 'Medenine'),
(2, 47110, 3, 'MO', 'Monastir'),
(2, 47110, 3, 'NA', 'Nabeul'),
(2, 47110, 3, 'SF', 'Sfax'),
(2, 47110, 3, 'SD', 'Sidi'),
(2, 47110, 3, 'SL', 'Siliana'),
(2, 47110, 3, 'SO', 'Sousse'),
(2, 47110, 3, 'TA', 'Tataouine'),
(2, 47110, 3, 'TO', 'Tozeur'),
(2, 47110, 3, 'TU', 'Tunis'),
(2, 47110, 3, 'ZA', 'Zaghouan');

--  'Tonga', 'TO', 'TON'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47120, 3, 'H', 'Ha\'apai'),
(2, 47120, 3, 'T', 'Tongatapu'),
(2, 47120, 3, 'V', 'Vava\'u');

--  'East (Portuguese) Timor', 'TP', 'TMP'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47130, 3, 'AL', 'Aileu'),
(2, 47130, 3, 'AN', 'Ainaro'),
(2, 47130, 3, 'BA', 'Baucau'),
(2, 47130, 3, 'BO', 'Bobonaro'),
(2, 47130, 3, 'CO', 'Cova Lima'),
(2, 47130, 3, 'DI', 'Dili'),
(2, 47130, 3, 'ER', 'Ermera'),
(2, 47130, 3, 'LA', 'Lautem'),
(2, 47130, 3, 'LI', 'Liquica'),
(2, 47130, 3, 'MT', 'Manatuto'),
(2, 47130, 3, 'MF', 'Manufahi'),
(2, 47130, 3, 'OE', 'Oecussi'),
(2, 47130, 3, 'VI', 'Viqueque');

--  'Turkey', 'TR', 'TUR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47140, 3, 'ADA', 'Adana'),
(2, 47140, 3, 'ADI', 'Adiyaman'),
(2, 47140, 3, 'AFY', 'Afyonkarahisar'),
(2, 47140, 3, 'AGR', 'Agri'),
(2, 47140, 3, 'AKS', 'Aksaray'),
(2, 47140, 3, 'AMA', 'Amasya'),
(2, 47140, 3, 'ANK', 'Ankara'),
(2, 47140, 3, 'ANT', 'Antalya'),
(2, 47140, 3, 'ARD', 'Ardahan'),
(2, 47140, 3, 'ART', 'Artvin'),
(2, 47140, 3, 'AYI', 'Aydin'),
(2, 47140, 3, 'BAL', 'Balikesir'),
(2, 47140, 3, 'BAR', 'Bartin'),
(2, 47140, 3, 'BAT', 'Batman'),
(2, 47140, 3, 'BAY', 'Bayburt'),
(2, 47140, 3, 'BIL', 'Bilecik'),
(2, 47140, 3, 'BIN', 'Bingol'),
(2, 47140, 3, 'BIT', 'Bitlis'),
(2, 47140, 3, 'BOL', 'Bolu'),
(2, 47140, 3, 'BRD', 'Burdur'),
(2, 47140, 3, 'BRS', 'Bursa'),
(2, 47140, 3, 'CKL', 'Canakkale'),
(2, 47140, 3, 'CKR', 'Cankiri'),
(2, 47140, 3, 'COR', 'Corum'),
(2, 47140, 3, 'DEN', 'Denizli'),
(2, 47140, 3, 'DIY', 'Diyarbakir'),
(2, 47140, 3, 'DUZ', 'Duzce'),
(2, 47140, 3, 'EDI', 'Edirne'),
(2, 47140, 3, 'ELA', 'Elazig'),
(2, 47140, 3, 'EZC', 'Erzincan'),
(2, 47140, 3, 'EZR', 'Erzurum'),
(2, 47140, 3, 'ESK', 'Eskisehir'),
(2, 47140, 3, 'GAZ', 'Gaziantep'),
(2, 47140, 3, 'GIR', 'Giresun'),
(2, 47140, 3, 'GMS', 'Gumushane'),
(2, 47140, 3, 'HKR', 'Hakkari'),
(2, 47140, 3, 'HTY', 'Hatay'),
(2, 47140, 3, 'IGD', 'Igdir'),
(2, 47140, 3, 'ISP', 'Isparta'),
(2, 47140, 3, 'IST', 'Istanbul'),
(2, 47140, 3, 'IZM', 'Izmir'),
(2, 47140, 3, 'KAH', 'Kahramanmaras'),
(2, 47140, 3, 'KRB', 'Karabuk'),
(2, 47140, 3, 'KRM', 'Karaman'),
(2, 47140, 3, 'KRS', 'Kars'),
(2, 47140, 3, 'KAS', 'Kastamonu'),
(2, 47140, 3, 'KAY', 'Kayseri'),
(2, 47140, 3, 'KLS', 'Kilis'),
(2, 47140, 3, 'KRK', 'Kirikkale'),
(2, 47140, 3, 'KLR', 'Kirklareli'),
(2, 47140, 3, 'KRH', 'Kirsehir'),
(2, 47140, 3, 'KOC', 'Kocaeli'),
(2, 47140, 3, 'KON', 'Konya'),
(2, 47140, 3, 'KUT', 'Kutahya'),
(2, 47140, 3, 'MAL', 'Malatya'),
(2, 47140, 3, 'MAN', 'Manisa'),
(2, 47140, 3, 'MAR', 'Mardin'),
(2, 47140, 3, 'MER', 'Mersin'),
(2, 47140, 3, 'MUG', 'Mugla'),
(2, 47140, 3, 'MUS', 'Mus'),
(2, 47140, 3, 'NEV', 'Nevsehir'),
(2, 47140, 3, 'NIG', 'Nigde'),
(2, 47140, 3, 'ORD', 'Ordu'),
(2, 47140, 3, 'OSM', 'Osmaniye'),
(2, 47140, 3, 'RIZ', 'Rize'),
(2, 47140, 3, 'SAK', 'Sakarya'),
(2, 47140, 3, 'SAM', 'Samsun'),
(2, 47140, 3, 'SAN', 'Sanliurfa'),
(2, 47140, 3, 'SII', 'Siirt'),
(2, 47140, 3, 'SIN', 'Sinop'),
(2, 47140, 3, 'SIR', 'Sirnak'),
(2, 47140, 3, 'SIV', 'Sivas'),
(2, 47140, 3, 'TEL', 'Tekirdag'),
(2, 47140, 3, 'TOK', 'Tokat'),
(2, 47140, 3, 'TRA', 'Trabzon'),
(2, 47140, 3, 'TUN', 'Tunceli'),
(2, 47140, 3, 'USK', 'Usak'),
(2, 47140, 3, 'VAN', 'Van'),
(2, 47140, 3, 'YAL', 'Yalova'),
(2, 47140, 3, 'YOZ', 'Yozgat'),
(2, 47140, 3, 'ZON', 'Zonguldak');

--  'Trinidad and Tobago', 'TT', 'TTO'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47150, 3, 'CT', 'Couva/Tabaquite/Talparo'),
(2, 47150, 3, 'DM', 'Diego Martin'),
(2, 47150, 3, 'MR', 'Mayaro/Rio Claro'),
(2, 47150, 3, 'PD', 'Penal/Debe'),
(2, 47150, 3, 'PT', 'Princes Town'),
(2, 47150, 3, 'SG', 'Sangre Grande'),
(2, 47150, 3, 'SL', 'San Juan/Laventille'),
(2, 47150, 3, 'SI', 'Siparia'),
(2, 47150, 3, 'TP', 'Tunapuna/Piarco'),
(2, 47150, 3, 'PS', 'Port of Spain'),
(2, 47150, 3, 'SF', 'San Fernando'),
(2, 47150, 3, 'AR', 'Arima'),
(2, 47150, 3, 'PF', 'Point Fortin'),
(2, 47150, 3, 'CH', 'Chaguanas'),
(2, 47150, 3, 'TO', 'Tobago');

--  'Tuvalu', 'TV', 'TUV'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47160, 3, 'NMG', 'Nanumanga'),
(2, 47160, 3, 'NLK', 'Niulakita'),
(2, 47160, 3, 'NTO', 'Niutao'),
(2, 47160, 3, 'FUN', 'Funafuti'),
(2, 47160, 3, 'NME', 'Nanumea'),
(2, 47160, 3, 'NUI', 'Nui'),
(2, 47160, 3, 'NFT', 'Nukufetau'),
(2, 47160, 3, 'NLL', 'Nukulaelae'),
(2, 47160, 3, 'VAI', 'Vaitupu');

--  'Taiwan', 'TW', 'TWN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47170, 3, 'CH', 'Chang-hua'),
(2, 47170, 3, 'CI', 'Chia-i'),
(2, 47170, 3, 'HS', 'Hsin-chu'),
(2, 47170, 3, 'HL', 'Hua-lien'),
(2, 47170, 3, 'IL', 'I-lan'),
(2, 47170, 3, 'KH', 'Kao-hsiung county'),
(2, 47170, 3, 'KM', 'Kin-men'),
(2, 47170, 3, 'LC', 'Lien-chiang'),
(2, 47170, 3, 'ML', 'Miao-li'),
(2, 47170, 3, 'NT', 'Nan-t\'ou'),
(2, 47170, 3, 'PH', 'P\'eng-hu'),
(2, 47170, 3, 'PT', 'P\'ing-tung'),
(2, 47170, 3, 'TG', 'T\'ai-chung'),
(2, 47170, 3, 'TA', 'T\'ai-nan'),
(2, 47170, 3, 'TP', 'T\'ai-pei county'),
(2, 47170, 3, 'TT', 'T\'ai-tung'),
(2, 47170, 3, 'TY', 'T\'ao-yuan'),
(2, 47170, 3, 'YL', 'Yun-lin'),
(2, 47170, 3, 'CC', 'Chia-i city'),
(2, 47170, 3, 'CL', 'Chi-lung'),
(2, 47170, 3, 'HC', 'Hsin-chu'),
(2, 47170, 3, 'TH', 'T\'ai-chung'),
(2, 47170, 3, 'TN', 'T\'ai-nan'),
(2, 47170, 3, 'KC', 'Kao-hsiung city'),
(2, 47170, 3, 'TC', 'T\'ai-pei city');

--  'Tanzania, United Republic of', 'TZ', 'TZA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47180, 3, 'AR', 'Arusha'),
(2, 47180, 3, 'DS', 'Dar es Salaam'),
(2, 47180, 3, 'DO', 'Dodoma'),
(2, 47180, 3, 'IR', 'Iringa'),
(2, 47180, 3, 'KA', 'Kagera'),
(2, 47180, 3, 'KI', 'Kigoma'),
(2, 47180, 3, 'KJ', 'Kilimanjaro'),
(2, 47180, 3, 'LN', 'Lindi'),
(2, 47180, 3, 'MY', 'Manyara'),
(2, 47180, 3, 'MR', 'Mara'),
(2, 47180, 3, 'MB', 'Mbeya'),
(2, 47180, 3, 'MO', 'Morogoro'),
(2, 47180, 3, 'MT', 'Mtwara'),
(2, 47180, 3, 'MW', 'Mwanza'),
(2, 47180, 3, 'PN', 'Pemba North'),
(2, 47180, 3, 'PS', 'Pemba South'),
(2, 47180, 3, 'PW', 'Pwani'),
(2, 47180, 3, 'RK', 'Rukwa'),
(2, 47180, 3, 'RV', 'Ruvuma'),
(2, 47180, 3, 'SH', 'Shinyanga'),
(2, 47180, 3, 'SI', 'Singida'),
(2, 47180, 3, 'TB', 'Tabora'),
(2, 47180, 3, 'TN', 'Tanga'),
(2, 47180, 3, 'ZC', 'Zanzibar Central/South'),
(2, 47180, 3, 'ZN', 'Zanzibar North'),
(2, 47180, 3, 'ZU', 'Zanzibar Urban/West');

--  'Ukraine', 'UA', 'UKR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 553, 3, 'CK', 'Cherkassy'),
(2, 553, 3, 'CH', 'Chernighov'),
(2, 553, 3, 'CV', 'Chernovtsy'),
(2, 553, 3, 'CR', 'Crimea'),
(2, 553, 3, 'DN', 'Dnepropetrovsk'),
(2, 553, 3, 'DO', 'Donetsk'),
(2, 553, 3, 'IV', 'Ivano-Frankovsk'),
(2, 553, 3, 'KA', 'Kharkov'),
(2, 553, 3, 'KE', 'Kherson'),
(2, 553, 3, 'KM', 'Khmelnitskiy'),
(2, 553, 3, 'KR', 'Kirovograd'),
(2, 553, 3, 'KV', 'Kiev'),
(2, 553, 3, 'LU', 'Lugansk'),
(2, 553, 3, 'LV', 'Lvov'),
(2, 553, 3, 'MY', 'Nikolayev'),
(2, 553, 3, 'OD', 'Odessa'),
(2, 553, 3, 'PO', 'Poltava'),
(2, 553, 3, 'RI', 'Rovno'),
(2, 553, 3, 'SE', 'Sebastopol'),
(2, 553, 3, 'SU', 'Sumy'),
(2, 553, 3, 'TE', 'Ternopol'),
(2, 553, 3, 'VI', 'Vinnytsa'),
(2, 553, 3, 'VO', 'Volyn'),
(2, 553, 3, 'ZK', 'Zakarpatye'),
(2, 553, 3, 'ZA', 'Zaporozhye'),
(2, 553, 3, 'ZH', 'Zhytomir');

--  'Uganda', 'UG', 'UGA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47190, 3, 'KAL', 'Kalangala'),
(2, 47190, 3, 'KMP', 'Kampala'),
(2, 47190, 3, 'KAY', 'Kayunga'),
(2, 47190, 3, 'KIB', 'Kiboga'),
(2, 47190, 3, 'LUW', 'Luwero'),
(2, 47190, 3, 'MAS', 'Masaka'),
(2, 47190, 3, 'MPI', 'Mpigi'),
(2, 47190, 3, 'MUB', 'Mubende'),
(2, 47190, 3, 'MUK', 'Mukono'),
(2, 47190, 3, 'NKS', 'Nakasongola'),
(2, 47190, 3, 'RAK', 'Rakai'),
(2, 47190, 3, 'SEM', 'Sembabule'),
(2, 47190, 3, 'WAK', 'Wakiso'),
(2, 47190, 3, 'BUG', 'Bugiri'),
(2, 47190, 3, 'BUS', 'Busia'),
(2, 47190, 3, 'IGA', 'Iganga'),
(2, 47190, 3, 'JIN', 'Jinja'),
(2, 47190, 3, 'KAB', 'Kaberamaido'),
(2, 47190, 3, 'KML', 'Kamuli'),
(2, 47190, 3, 'KPC', 'Kapchorwa'),
(2, 47190, 3, 'KTK', 'Katakwi'),
(2, 47190, 3, 'KUM', 'Kumi'),
(2, 47190, 3, 'MAY', 'Mayuge'),
(2, 47190, 3, 'MBA', 'Mbale'),
(2, 47190, 3, 'PAL', 'Pallisa'),
(2, 47190, 3, 'SIR', 'Sironko'),
(2, 47190, 3, 'SOR', 'Soroti'),
(2, 47190, 3, 'TOR', 'Tororo'),
(2, 47190, 3, 'ADJ', 'Adjumani'),
(2, 47190, 3, 'APC', 'Apac'),
(2, 47190, 3, 'ARU', 'Arua'),
(2, 47190, 3, 'GUL', 'Gulu'),
(2, 47190, 3, 'KIT', 'Kitgum'),
(2, 47190, 3, 'KOT', 'Kotido'),
(2, 47190, 3, 'LIR', 'Lira'),
(2, 47190, 3, 'MRT', 'Moroto'),
(2, 47190, 3, 'MOY', 'Moyo'),
(2, 47190, 3, 'NAK', 'Nakapiripirit'),
(2, 47190, 3, 'NEB', 'Nebbi'),
(2, 47190, 3, 'PAD', 'Pader'),
(2, 47190, 3, 'YUM', 'Yumbe'),
(2, 47190, 3, 'BUN', 'Bundibugyo'),
(2, 47190, 3, 'BSH', 'Bushenyi'),
(2, 47190, 3, 'HOI', 'Hoima'),
(2, 47190, 3, 'KBL', 'Kabale'),
(2, 47190, 3, 'KAR', 'Kabarole'),
(2, 47190, 3, 'KAM', 'Kamwenge'),
(2, 47190, 3, 'KAN', 'Kanungu'),
(2, 47190, 3, 'KAS', 'Kasese'),
(2, 47190, 3, 'KBA', 'Kibaale'),
(2, 47190, 3, 'KIS', 'Kisoro'),
(2, 47190, 3, 'KYE', 'Kyenjojo'),
(2, 47190, 3, 'MSN', 'Masindi'),
(2, 47190, 3, 'MBR', 'Mbarara'),
(2, 47190, 3, 'NTU', 'Ntungamo'),
(2, 47190, 3, 'RUK', 'Rukungiri');

-- 'UK', 'United Kingdom'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47200, 3, 'CHA', 'Channel Islands'),
(2, 47200, 3, 'ENG', 'England'),
(2, 47200, 3, 'IOM', 'Isle Of Man'),
(2, 47200, 3, 'NIR', 'Northern Ireland'),
(2, 47200, 3, 'SCT', 'Scotland'),
(2, 47200, 3, 'WLS', 'Wales');

--  'United States Minor Outlying Islands', 'UM', 'UMI'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47210, 3, 'BI', 'Baker Island'),
(2, 47210, 3, 'HI', 'Howland Island'),
(2, 47210, 3, 'JI', 'Jarvis Island'),
(2, 47210, 3, 'JA', 'Johnston Atoll'),
(2, 47210, 3, 'KR', 'Kingman Reef'),
(2, 47210, 3, 'MA', 'Midway Atoll'),
(2, 47210, 3, 'NI', 'Navassa Island'),
(2, 47210, 3, 'PA', 'Palmyra Atoll'),
(2, 47210, 3, 'WI', 'Wake Island');

--  'United States', 'US', 'USA'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 535, 3, 'AL', 'Alabama'),
(2, 535, 3, 'AK', 'Alaska'),
(2, 535, 3, 'AS', 'American Samoa'),
(2, 535, 3, 'AZ', 'Arizona'),
(2, 535, 3, 'AR', 'Arkansas'),
(2, 535, 3, 'AF', 'Armed Forces Africa'),
(2, 535, 3, 'AA', 'Armed Forces Americas'),
(2, 535, 3, 'AC', 'Armed Forces Canada'),
(2, 535, 3, 'AE', 'Armed Forces Europe'),
(2, 535, 3, 'AM', 'Armed Forces Middle East'),
(2, 535, 3, 'AP', 'Armed Forces Pacific'),
(2, 535, 3, 'CA', 'California'),
(2, 535, 3, 'CO', 'Colorado'),
(2, 535, 3, 'CT', 'Connecticut'),
(2, 535, 3, 'DE', 'Delaware'),
(2, 535, 3, 'DC', 'District of Columbia'),
(2, 535, 3, 'FM', 'Federated States Of Micronesia'),
(2, 535, 3, 'FL', 'Florida'),
(2, 535, 3, 'GA', 'Georgia'),
(2, 535, 3, 'GU', 'Guam'),
(2, 535, 3, 'HI', 'Hawaii'),
(2, 535, 3, 'ID', 'Idaho'),
(2, 535, 3, 'IL', 'Illinois'),
(2, 535, 3, 'IN', 'Indiana'),
(2, 535, 3, 'IA', 'Iowa'),
(2, 535, 3, 'KS', 'Kansas'),
(2, 535, 3, 'KY', 'Kentucky'),
(2, 535, 3, 'LA', 'Louisiana'),
(2, 535, 3, 'ME', 'Maine'),
(2, 535, 3, 'MH', 'Marshall Islands'),
(2, 535, 3, 'MD', 'Maryland'),
(2, 535, 3, 'MA', 'Massachusetts'),
(2, 535, 3, 'MI', 'Michigan'),
(2, 535, 3, 'MN', 'Minnesota'),
(2, 535, 3, 'MS', 'Mississippi'),
(2, 535, 3, 'MO', 'Missouri'),
(2, 535, 3, 'MT', 'Montana'),
(2, 535, 3, 'NE', 'Nebraska'),
(2, 535, 3, 'NV', 'Nevada'),
(2, 535, 3, 'NH', 'New Hampshire'),
(2, 535, 3, 'NJ', 'New Jersey'),
(2, 535, 3, 'NM', 'New Mexico'),
(2, 535, 3, 'NY', 'New York'),
(2, 535, 3, 'NC', 'North Carolina'),
(2, 535, 3, 'ND', 'North Dakota'),
(2, 535, 3, 'MP', 'Northern Mariana Islands'),
(2, 535, 3, 'OH', 'Ohio'),
(2, 535, 3, 'OK', 'Oklahoma'),
(2, 535, 3, 'OR', 'Oregon'),
(2, 535, 3, 'PW', 'Palau'),
(2, 535, 3, 'PA', 'Pennsylvania'),
(2, 535, 3, 'PR', 'Puerto Rico'),
(2, 535, 3, 'RI', 'Rhode Island'),
(2, 535, 3, 'SC', 'South Carolina'),
(2, 535, 3, 'SD', 'South Dakota'),
(2, 535, 3, 'TN', 'Tennessee'),
(2, 535, 3, 'TX', 'Texas'),
(2, 535, 3, 'UT', 'Utah'),
(2, 535, 3, 'VT', 'Vermont'),
(2, 535, 3, 'VI', 'Virgin Islands'),
(2, 535, 3, 'VA', 'Virginia'),
(2, 535, 3, 'WA', 'Washington'),
(2, 535, 3, 'WV', 'West Virginia'),
(2, 535, 3, 'WI', 'Wisconsin'),
(2, 535, 3, 'WY', 'Wyoming');

--  'Uruguay', 'UY', 'URY'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47220, 3, 'AR', 'Artigas'),
(2, 47220, 3, 'CA', 'Canelones'),
(2, 47220, 3, 'CL', 'Cerro Largo'),
(2, 47220, 3, 'CO', 'Colonia'),
(2, 47220, 3, 'DU', 'Durazno'),
(2, 47220, 3, 'FS', 'Flores'),
(2, 47220, 3, 'FA', 'Florida'),
(2, 47220, 3, 'LA', 'Lavalleja'),
(2, 47220, 3, 'MA', 'Maldonado'),
(2, 47220, 3, 'MO', 'Montevideo'),
(2, 47220, 3, 'PA', 'Paysandu'),
(2, 47220, 3, 'RN', 'Rio Negro'),
(2, 47220, 3, 'RV', 'Rivera'),
(2, 47220, 3, 'RO', 'Rocha'),
(2, 47220, 3, 'SL', 'Salto'),
(2, 47220, 3, 'SJ', 'San Jose'),
(2, 47220, 3, 'SO', 'Soriano'),
(2, 47220, 3, 'TA', 'Tacuarembo'),
(2, 47220, 3, 'TT', 'Treinta y Tres');

--  'Uzbekistan', 'UZ', 'UZB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47230, 3, 'AN', 'Andijon'),
(2, 47230, 3, 'BU', 'Buxoro'),
(2, 47230, 3, 'FA', 'Farg\'ona'),
(2, 47230, 3, 'JI', 'Jizzax'),
(2, 47230, 3, 'NG', 'Namangan'),
(2, 47230, 3, 'NW', 'Navoiy'),
(2, 47230, 3, 'QA', 'Qashqadaryo'),
(2, 47230, 3, 'QR', 'Qoraqalpog\'iston Republikasi'),
(2, 47230, 3, 'SA', 'Samarqand'),
(2, 47230, 3, 'SI', 'Sirdaryo'),
(2, 47230, 3, 'SU', 'Surxondaryo'),
(2, 47230, 3, 'TK', 'Toshkent City'),
(2, 47230, 3, 'TO', 'Toshkent Region'),
(2, 47230, 3, 'XO', 'Xorazm');

--  'Vatican City State (Holy See)', 'VA', 'VAT'

--  'Saint Vincent and the Grenadines', 'VC', 'VCT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47250, 3, 'C', 'Charlotte'),
(2, 47250, 3, 'R', 'Grenadines'),
(2, 47250, 3, 'A', 'Saint Andrew'),
(2, 47250, 3, 'D', 'Saint David'),
(2, 47250, 3, 'G', 'Saint George'),
(2, 47250, 3, 'P', 'Saint Patrick');

--  'Venezuela', 'VE', 'VEN'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47260, 3, 'AM', 'Amazonas'),
(2, 47260, 3, 'AN', 'Anzoategui'),
(2, 47260, 3, 'AP', 'Apure'),
(2, 47260, 3, 'AR', 'Aragua'),
(2, 47260, 3, 'BA', 'Barinas'),
(2, 47260, 3, 'BO', 'Bolivar'),
(2, 47260, 3, 'CA', 'Carabobo'),
(2, 47260, 3, 'CO', 'Cojedes'),
(2, 47260, 3, 'DA', 'Delta Amacuro'),
(2, 47260, 3, 'DF', 'Dependencias Federales'),
(2, 47260, 3, 'DI', 'Distrito Federal'),
(2, 47260, 3, 'FA', 'Falcon'),
(2, 47260, 3, 'GU', 'Guarico'),
(2, 47260, 3, 'LA', 'Lara'),
(2, 47260, 3, 'ME', 'Merida'),
(2, 47260, 3, 'MI', 'Miranda'),
(2, 47260, 3, 'MO', 'Monagas'),
(2, 47260, 3, 'NE', 'Nueva Esparta'),
(2, 47260, 3, 'PO', 'Portuguesa'),
(2, 47260, 3, 'SU', 'Sucre'),
(2, 47260, 3, 'TA', 'Tachira'),
(2, 47260, 3, 'TR', 'Trujillo'),
(2, 47260, 3, 'VA', 'Vargas'),
(2, 47260, 3, 'YA', 'Yaracuy'),
(2, 47260, 3, 'ZU', 'Zulia');

--  'Virgin Islands (British)', 'VG', 'VGB'

--  'Virgin Islands (U.S.)', 'VI', 'VIR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47280, 3, 'C', 'Saint Croix'),
(2, 47280, 3, 'J', 'Saint John'),
(2, 47280, 3, 'T', 'Saint Thomas');

--  'Viet Nam', 'VN', 'VNM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47290, 3, 'AG', 'An Giang'),
(2, 47290, 3, 'BG', 'Bac Giang'),
(2, 47290, 3, 'BK', 'Bac Kan'),
(2, 47290, 3, 'BL', 'Bac Lieu'),
(2, 47290, 3, 'BC', 'Bac Ninh'),
(2, 47290, 3, 'BR', 'Ba Ria-Vung Tau'),
(2, 47290, 3, 'BN', 'Ben Tre'),
(2, 47290, 3, 'BH', 'Binh Dinh'),
(2, 47290, 3, 'BU', 'Binh Duong'),
(2, 47290, 3, 'BP', 'Binh Phuoc'),
(2, 47290, 3, 'BT', 'Binh Thuan'),
(2, 47290, 3, 'CM', 'Ca Mau'),
(2, 47290, 3, 'CT', 'Can Tho'),
(2, 47290, 3, 'CB', 'Cao Bang'),
(2, 47290, 3, 'DL', 'Dak Lak'),
(2, 47290, 3, 'DG', 'Dak Nong'),
(2, 47290, 3, 'DN', 'Da Nang'),
(2, 47290, 3, 'DB', 'Dien Bien'),
(2, 47290, 3, 'DI', 'Dong Nai'),
(2, 47290, 3, 'DT', 'Dong Thap'),
(2, 47290, 3, 'GL', 'Gia Lai'),
(2, 47290, 3, 'HG', 'Ha Giang'),
(2, 47290, 3, 'HD', 'Hai Duong'),
(2, 47290, 3, 'HP', 'Hai Phong'),
(2, 47290, 3, 'HM', 'Ha Nam'),
(2, 47290, 3, 'HI', 'Ha Noi'),
(2, 47290, 3, 'HT', 'Ha Tay'),
(2, 47290, 3, 'HH', 'Ha Tinh'),
(2, 47290, 3, 'HB', 'Hoa Binh'),
(2, 47290, 3, 'HC', 'Ho Chin Minh'),
(2, 47290, 3, 'HU', 'Hau Giang'),
(2, 47290, 3, 'HY', 'Hung Yen');

--  'Vanuatu', 'VU', 'VUT'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47300, 3, 'MA', 'Malampa'),
(2, 47300, 3, 'PE', 'Penama'),
(2, 47300, 3, 'SA', 'Sanma'),
(2, 47300, 3, 'SH', 'Shefa'),
(2, 47300, 3, 'TA', 'Tafea'),
(2, 47300, 3, 'TO', 'Torba');

--  'Wallis and Futuna Islands', 'WF', 'WLF'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47310, 3, 'A', 'Alo'),
(2, 47310, 3, 'S', 'Sigave'),
(2, 47310, 3, 'W', 'Wallis');

--  'Samoa', 'WS', 'WSM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47320, 3, 'AN', 'A\'ana'),
(2, 47320, 3, 'AI', 'Aiga-i-le-Tai'),
(2, 47320, 3, 'AT', 'Atua'),
(2, 47320, 3, 'FA', 'Fa\'asaleleaga'),
(2, 47320, 3, 'GE', 'Gaga\'emauga'),
(2, 47320, 3, 'GF', 'Gagaifomauga'),
(2, 47320, 3, 'PA', 'Palauli'),
(2, 47320, 3, 'SA', 'Satupa\'itea'),
(2, 47320, 3, 'TU', 'Tuamasaga'),
(2, 47320, 3, 'VF', 'Va\'a-o-Fonoti'),
(2, 47320, 3, 'VS', 'Vaisigano');

--  'Yemen', 'YE', 'YEM'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47330, 3, 'AB', 'Abyan'),
(2, 47330, 3, 'AD', 'Adan'),
(2, 47330, 3, 'AM', 'Amran'),
(2, 47330, 3, 'BA', 'Al Bayda'),
(2, 47330, 3, 'DA', 'Ad Dali'),
(2, 47330, 3, 'DH', 'Dhamar'),
(2, 47330, 3, 'HD', 'Hadramawt'),
(2, 47330, 3, 'HJ', 'Hajjah'),
(2, 47330, 3, 'HU', 'Al Hudaydah'),
(2, 47330, 3, 'IB', 'Ibb'),
(2, 47330, 3, 'JA', 'Al Jawf'),
(2, 47330, 3, 'LA', 'Lahij'),
(2, 47330, 3, 'MA', 'Ma\'rib'),
(2, 47330, 3, 'MR', 'Al Mahrah'),
(2, 47330, 3, 'MW', 'Al Mahwit'),
(2, 47330, 3, 'SD', 'Sa\'dah'),
(2, 47330, 3, 'SN', 'San\'a'),
(2, 47330, 3, 'SH', 'Shabwah'),
(2, 47330, 3, 'TA', 'Ta\'izz');

--  'Mayotte', 'YT', 'MYT'

--  'Yugoslavia', 'YU', 'YUG'
--  'YU', 'KOS', 'Kosovo',

--  'South Africa', 'ZA', 'ZAF'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 564, 3, 'EC', 'Eastern Cape'),
(2, 564, 3, 'FS', 'Free State'),
(2, 564, 3, 'GT', 'Gauteng'),
(2, 564, 3, 'KN', 'KwaZulu-Natal'),
(2, 564, 3, 'LP', 'Limpopo'),
(2, 564, 3, 'MP', 'Mpumalanga'),
(2, 564, 3, 'NW', 'North West'),
(2, 564, 3, 'NC', 'Northern Cape'),
(2, 564, 3, 'WC', 'Western Cape');

--  'Zambia', 'ZM', 'ZMB'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47360, 3, 'CE', 'Central'),
(2, 47360, 3, 'CB', 'Copperbelt'),
(2, 47360, 3, 'EA', 'Eastern'),
(2, 47360, 3, 'LP', 'Luapula'),
(2, 47360, 3, 'LK', 'Lusaka'),
(2, 47360, 3, 'NO', 'Northern'),
(2, 47360, 3, 'NW', 'North-Western'),
(2, 47360, 3, 'SO', 'Southern'),
(2, 47360, 3, 'WE', 'Western');

--  'Zaire', 'ZR', 'ZAR'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47370, 3, 'BC', 'Bas-Congo'),
(2, 47370, 3, 'BN', 'Bandundu'),
(2, 47370, 3, 'EQ', 'Equateur'),
(2, 47370, 3, 'KA', 'Katanga'),
(2, 47370, 3, 'KE', 'Kasai-Oriental'),
(2, 47370, 3, 'KN', 'Kinshasa'),
(2, 47370, 3, 'KW', 'Kasai-Occidental'),
(2, 47370, 3, 'MA', 'Maniema'),
(2, 47370, 3, 'NK', 'Nord-Kivu'),
(2, 47370, 3, 'OR', 'Orientale'),
(2, 47370, 3, 'SK', 'Sud-Kivu');

--  'Zimbabwe', 'ZW', 'ZWE'
INSERT INTO `pre_common_district`
(`level`, `upid`, `usetype`, `code`, `name`) VALUES
(2, 47380, 3, 'BU', 'Bulawayo'),
(2, 47380, 3, 'HA', 'Harare'),
(2, 47380, 3, 'ML', 'Manicaland'),
(2, 47380, 3, 'MC', 'Mashonaland Central'),
(2, 47380, 3, 'ME', 'Mashonaland East'),
(2, 47380, 3, 'MW', 'Mashonaland West'),
(2, 47380, 3, 'MV', 'Masvingo'),
(2, 47380, 3, 'MN', 'Matabeleland North'),
(2, 47380, 3, 'MS', 'Matabeleland South'),
(2, 47380, 3, 'MD', 'Midlands');

