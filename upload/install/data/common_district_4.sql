-- ------------------------------------------------------------
-- Discuz!ML (Multilingual) (C) 2008-2014 Codersclub.org
--
-- All the COUNTRIES
--
-- by Valery Votintsev, http://codersclub.org/discuzx/?1
-- ------------------------------------------------------------

-- 1) ADD THE LOCATION CODE FIELD
-- ALTER TABLE `pre_common_district` ADD `code` VARCHAR( 64 ) NOT NULL;


-- 2) UPDATE EXISTING COUNTRIES:

UPDATE `pre_common_district` SET `code`='CN', `name`='China', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1405 WHERE `id`=35;
UPDATE `pre_common_district` SET `code`='XX', `name`='Other', `level`=0, `upid`=0, `usetype`=3, `displayorder`=9998  WHERE `id`=36;
UPDATE `pre_common_district` SET `code`='US', `name`='USA', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3380 WHERE `id`=535;
UPDATE `pre_common_district` SET `code`='CA', `name`='Canada', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1400 WHERE `id`=536;
UPDATE `pre_common_district` SET `code`='AU', `name`='Australia', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1160 WHERE `id`=537;
UPDATE `pre_common_district` SET `code`='NZ', `name`='New Zealand', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2740 WHERE `id`=538;
UPDATE `pre_common_district` SET `code`='GB', `name`='Great Britain', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1800 WHERE `id`=539;
UPDATE `pre_common_district` SET `code`='FR', `name`='France', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1770 WHERE `id`=540;
UPDATE `pre_common_district` SET `code`='DE', `name`='Germany', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1580 WHERE `id`=541;
UPDATE `pre_common_district` SET `code`='CZ', `name`='Czech Republic', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1570 WHERE `id`=542;
UPDATE `pre_common_district` SET `code`='NL', `name`='Netherlands', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2690 WHERE `id`=543;
UPDATE `pre_common_district` SET `code`='CH', `name`='Switzerland', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1450 WHERE `id`=544;
UPDATE `pre_common_district` SET `code`='GR', `name`='Greece', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1920 WHERE `id`=545;
UPDATE `pre_common_district` SET `code`='NO', `name`='Norway', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2700 WHERE `id`=546;
UPDATE `pre_common_district` SET `code`='SE', `name`='Sweden', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3010 WHERE `id`=547;
UPDATE `pre_common_district` SET `code`='DK', `name`='Denmark', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1600 WHERE `id`=548;
UPDATE `pre_common_district` SET `code`='FI', `name`='Finland', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1720 WHERE `id`=549;
UPDATE `pre_common_district` SET `code`='IE', `name`='Ireland', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2050 WHERE `id`=550;
UPDATE `pre_common_district` SET `code`='AT', `name`='Austria', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1150 WHERE `id`=551;
UPDATE `pre_common_district` SET `code`='IT', `name`='Italy', `level`=0,`upid`=0, `usetype`=3, `displayorder`=2130 WHERE `id`=552;
UPDATE `pre_common_district` SET `code`='UA', `name`='Ukraine', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3350 WHERE `id`=553;
UPDATE `pre_common_district` SET `code`='RU', `name`='Russia', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2950 WHERE `id`=554;
UPDATE `pre_common_district` SET `code`='ES', `name`='Spain', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1690 WHERE `id`=555;
UPDATE `pre_common_district` SET `code`='KR', `name`='Korea, Republic of', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2250 WHERE `id`=556;
UPDATE `pre_common_district` SET `code`='SG', `name`='Singapore', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3020 WHERE `id`=557;
UPDATE `pre_common_district` SET `code`='MY', `name`='Malaysia', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2605 WHERE `id`=558;
UPDATE `pre_common_district` SET `code`='IN', `name`='India', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2080 WHERE `id`=559;
UPDATE `pre_common_district` SET `code`='TH', `name`='Thailand', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3220 WHERE `id`=560;
UPDATE `pre_common_district` SET `code`='JP', `name`='Japan', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2170 WHERE `id`=561;
UPDATE `pre_common_district` SET `code`='BR', `name`='Brazil', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1330 WHERE `id`=562;
UPDATE `pre_common_district` SET `code`='AR', `name`='Argentina', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1130 WHERE `id`=563;
UPDATE `pre_common_district` SET `code`='ZA', `name`='South Africa', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3540 WHERE `id`=564;
UPDATE `pre_common_district` SET `code`='EG', `name`='Egypt', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1660 WHERE `id`=565;



-- 3) ADD NEW COUNTRIES

INSERT INTO `pre_common_district`
(`id`, `code`, `name`, `level`, `upid`, `usetype`, `displayorder`) VALUES
(45100, 'A1', 'Anonymous Proxy', 0, 0, 0, 9999),
(45110, 'A2', 'Satellite Provider', 0, 0, 0, 9999),

(45120, 'AB', 'Abkhazia', 0, 0, 3, 1010),
(45130, 'AD', 'Andorra', 0, 0, 3, 1020),
(45140, 'AE', 'United Arab Emirates', 0, 0, 3, 1030),
(45150, 'AF', 'Afghanistan', 0, 0, 3, 1040),
(45160, 'AG', 'Antigua and Barbuda', 0, 0, 3, 1050),
(45170, 'AI', 'Anguilla', 0, 0, 3, 1060),
(45180, 'AL', 'Albania', 0, 0, 3, 1070),
(45190, 'AM', 'Armenia', 0, 0, 3, 1080),
(45200, 'AN', 'Netherlands Antilles', 0, 0, 3, 1090),
(45210, 'AO', 'Angola', 0, 0, 3, 1100),
(45220, 'AP', 'Asia/Pacific Region', 0, 0, 0, 1110),
(45230, 'AQ', 'Antarctica', 0, 0, 0, 1120),
-- `code`='AR', `name`='Argentina', `displayorder`=1130 WHERE `id`=563;
(45240, 'AS', 'American Samoa', 0, 0, 3, 1140),
-- `code`='AT', `name`='Austria', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1150 WHERE `id`=551;
-- `code`='AU', `name`='Australia', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1160 WHERE `id`=537;
(45250, 'AW', 'Aruba', 0, 0, 3, 1170),
(45260, 'AX', 'Aland Islands', 0, 0, 3, 1180),
(45270, 'AZ', 'Azerbaijan', 0, 0, 3, 1190),
(45280, 'BA', 'Bosnia and Herzegovina', 0, 0, 3, 1200),
(45290, 'BB', 'Barbados', 0, 0, 3, 1210),
(45300, 'BD', 'Bangladesh', 0, 0, 3, 1220),
(45310, 'BE', 'Belgium', 0, 0, 3, 1230),
(45320, 'BF', 'Burkina Faso', 0, 0, 3, 1240),
(45330, 'BG', 'Bulgaria', 0, 0, 3, 1250),
(45340, 'BH', 'Bahrain', 0, 0, 3, 1260),
(45350, 'BI', 'Burundi', 0, 0, 3, 1270),
(45360, 'BJ', 'Benin', 0, 0, 3, 1280),
(45370, 'BL', 'Saint Barthelemy', 0, 0, 3, 1290),
(45380, 'BM', 'Bermuda', 0, 0, 3, 1300),
(45390, 'BN', 'Brunei Darussalam', 0, 0, 3, 1310),
(45400, 'BO', 'Bolivia', 0, 0, 3, 1320),
-- `code`='BR', `name`='Brazil', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1330 WHERE `id`=562;
(45410, 'BS', 'Bahamas', 0, 0, 3, 1340),
(45420, 'BT', 'Bhutan', 0, 0, 3, 1350),
(45430, 'BV', 'Bouvet Island', 0, 0, 3, 1360),
(45440, 'BW', 'Botswana', 0, 0, 3, 1370),
(45450, 'BY', 'Belarus', 0, 0, 3, 1380),
(45460, 'BZ', 'Belize', 0, 0, 3, 1390),
-- `code`='CA', `name`='Canada', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1400 WHERE `id`=536;
-- `code`='CN', `name`='China', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1405 WHERE `id`=35;
(45470, 'CC', 'Cocos (Keeling) Islands', 0, 0, 3, 1410),
(45480, 'CD', 'Congo, The Democratic Republic of the', 0, 0, 3, 1420),
(45490, 'CF', 'Central African Republic', 0, 0, 3, 1430),
(45500, 'CG', 'Congo', 0, 0, 3, 1440),
-- `code`='CH', `name`='Switzerland', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1450 WHERE `id`=544;
(45510, 'CI', 'Cote D\'Ivoire', 0, 0, 3, 1460),
(45520, 'CK', 'Cook Islands', 0, 0, 3, 1470),
(45530, 'CL', 'Chile', 0, 0, 3, 1480),
(45540, 'CM', 'Cameroon', 0, 0, 3, 1490),
(45550, 'CN', 'China', 0, 0, 3, 1500),
(45560, 'CO', 'Colombia', 0, 0, 3, 1510),
(45570, 'CR', 'Costa Rica', 0, 0, 3, 1520),
(45580, 'CU', 'Cuba', 0, 0, 3, 1530),
(45590, 'CV', 'Cape Verde', 0, 0, 3, 1540),
(45600, 'CX', 'Christmas Island', 0, 0, 3, 1550),
(45610, 'CY', 'Cyprus', 0, 0, 3, 1560),
-- `code`='CZ', `name`='Czech Republic', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1570 WHERE `id`=542;
-- `code`='DE', `name`='Germany', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1580 WHERE `id`=541;
(45620, 'DJ', 'Djibouti', 0, 0, 3, 1590),
-- `code`='DK', `name`='Denmark', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1600 WHERE `id`=548;
(45630, 'DM', 'Dominica', 0, 0, 3, 1610),
(45640, 'DO', 'Dominican Republic', 0, 0, 3, 1620),
(45650, 'DZ', 'Algeria', 0, 0, 3, 1630),
(45660, 'EC', 'Ecuador', 0, 0, 3, 1640),
(45670, 'EE', 'Estonia', 0, 0, 3, 1650),
-- `code`='EG', `name`='Egypt', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1660 WHERE `id`=565;
(45690, 'EH', 'Western Sahara', 0, 0, 3, 1670),
(45700, 'ER', 'Eritrea', 0, 0, 3, 1680),
-- `code`='ES', `name`='Spain', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1690 WHERE `id`=555;
(45710, 'ET', 'Ethiopia', 0, 0, 3, 1700),
(45720, 'EU', 'Europe', 0, 0, 3, 1710),
-- `code`='FI', `name`='Finland', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1720 WHERE `id`=549;
(45730, 'FJ', 'Fiji', 0, 0, 3, 1730),
(45740, 'FK', 'Falkland Islands (Malvinas)', 0, 0, 3, 1740),
(45750, 'FM', 'Micronesia, Federated States of', 0, 0, 3, 1750),
(45760, 'FO', 'Faroe Islands', 0, 0, 3, 1760),
(45770, 'FX', 'France, Metropolitan', 0, 0, 3, 1780),
(45780, 'GA', 'Gabon', 0, 0, 3, 1790),
-- `code`='GB', `name`='Great Britain', `level`=0, `upid`=0, `usetype`=3, `displayorder`=1800 WHERE `id`=539;
(45790, 'GD', 'Grenada', 0, 0, 3, 1810),
(45800, 'GE', 'Georgia', 0, 0, 3, 1820),
(45810, 'GF', 'French Guiana', 0, 0, 3, 1830),
(45820, 'GG', 'Guernsey', 0, 0, 3, 1840),
(45830, 'GH', 'Ghana', 0, 0, 3, 1850),
(45840, 'GI', 'Gibraltar', 0, 0, 3, 1860),
(45850, 'GL', 'Greenland', 0, 0, 3, 1870),
(45860, 'GM', 'Gambia', 0, 0, 3, 1880),
(45870, 'GN', 'Guinea', 0, 0, 3, 1890),
(45880, 'GP', 'Guadeloupe', 0, 0, 3, 1900),
(45890, 'GQ', 'Equatorial Guinea', 0, 0, 3, 1910),
(45900, 'GS', 'South Georgia and the South Sandwich Islands', 0, 0, 3, 1930),
(45910, 'GT', 'Guatemala', 0, 0, 3, 1940),
(45920, 'GU', 'Guam', 0, 0, 3, 1950),
(45930, 'GW', 'Guinea-Bissau', 0, 0, 3, 1960),
(45940, 'GY', 'Guyana', 0, 0, 3, 1970),
(45950, 'HK', 'Hong Kong', 0, 0, 3, 1980),
(45960, 'HM', 'Heard and McDonald Islands', 0, 0, 3, 1990),
(45970, 'HN', 'Honduras', 0, 0, 3, 2000),
(45980, 'HR', 'Croatia', 0, 0, 3, 2010),
(45990, 'HT', 'Haiti', 0, 0, 3, 2020),
(46000, 'HU', 'Hungary', 0, 0, 3, 2030),
(46010, 'ID', 'Indonesia', 0, 0, 3, 2040),
-- `code`='IE', `name`='Ireland', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2050 WHERE `id`=550;
(46020, 'IL', 'Israel', 0, 0, 3, 2060),
(46030, 'IM', 'Isle of Man', 0, 0, 3, 2070),
-- `code`='IN', `name`='India', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2080 WHERE `id`=559;
(46040, 'IO', 'British Indian Ocean Territory', 0, 0, 3, 2090),
(46050, 'IQ', 'Iraq', 0, 0, 3, 2100),
(46060, 'IR', 'Iran, Islamic Republic of', 0, 0, 3, 2110),
(46070, 'IS', 'Iceland', 0, 0, 3, 2120),
-- `code`='IT', `name`='Italy', `level`=0,`upid`=0, `usetype`=3, `displayorder`=2130 WHERE `id`=552;
(46080, 'JE', 'Jersey', 0, 0, 3, 2140),
(46090, 'JM', 'Jamaica', 0, 0, 3, 2150),
(46100, 'JO', 'Jordan', 0, 0, 3, 2160),
-- `code`='JP', `name`='Japan', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2170 WHERE `id`=561;
(46110, 'KE', 'Kenya', 0, 0, 3, 2180),
(46120, 'KG', 'Kyrgyzstan', 0, 0, 3, 2190),
(46130, 'KH', 'Cambodia', 0, 0, 3, 2200),
(46140, 'KI', 'Kiribati', 0, 0, 3, 2210),
(46150, 'KM', 'Comoros', 0, 0, 3, 2220),
(46160, 'KN', 'Saint Kitts and Nevis', 0, 0, 3, 2230),
(46170, 'KP', 'Korea, Democratic People\'s Republic of', 0, 0, 3, 2240),
-- `code`='KR', `name`='Korea, Republic of', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2250 WHERE `id`=556;
(46180, 'KW', 'Kuwait', 0, 0, 3, 2260),
(46190, 'KY', 'Cayman Islands', 0, 0, 3, 2270),
(46200, 'KZ', 'Kazakhstan', 0, 0, 3, 2280),
(46210, 'LA', 'Lao People\'s Democratic Republic', 0, 0, 3, 2290),
(46220, 'LB', 'Lebanon', 0, 0, 3, 2300),
(46230, 'LC', 'Saint Lucia', 0, 0, 3, 2310),
(46240, 'LI', 'Liechtenstein', 0, 0, 3, 2320),
(46250, 'LK', 'Sri Lanka', 0, 0, 3, 2330),
(46260, 'LR', 'Liberia', 0, 0, 3, 2340),
(46270, 'LS', 'Lesotho', 0, 0, 3, 2350),
(46280, 'LT', 'Lithuania', 0, 0, 3, 2360),
(46290, 'LU', 'Luxembourg', 0, 0, 3, 2370),
(46300, 'LV', 'Latvia', 0, 0, 3, 2380),
(46310, 'LY', 'Libyan Arab Jamahiriya', 0, 0, 3, 2390),
(46320, 'MA', 'Morocco', 0, 0, 3, 2400),
(46330, 'MC', 'Monaco', 0, 0, 3, 2410),
(46340, 'MD', 'Moldova, Republic of', 0, 0, 3, 2420),
(46350, 'ME', 'Montenegro', 0, 0, 3, 2430),
(46360, 'MF', 'Saint Martin', 0, 0, 3, 2440),
(46370, 'MG', 'Madagascar', 0, 0, 3, 2450),
(46380, 'MH', 'Marshall Islands', 0, 0, 3, 2460),
(46390, 'MK', 'Macedonia', 0, 0, 3, 2470),
(46400, 'ML', 'Mali', 0, 0, 3, 2480),
(46410, 'MM', 'Myanmar', 0, 0, 3, 2490),
(46420, 'MN', 'Mongolia', 0, 0, 3, 2500),
(46430, 'MO', 'Macau', 0, 0, 3, 2510),
(46440, 'MP', 'Northern Mariana Islands', 0, 0, 3, 2520),
(46450, 'MQ', 'Martinique', 0, 0, 3, 2530),
(46460, 'MR', 'Mauritania', 0, 0, 3, 2540),
(46470, 'MS', 'Montserrat', 0, 0, 3, 2550),
(46480, 'MT', 'Malta', 0, 0, 3, 2560),
(46490, 'MU', 'Mauritius', 0, 0, 3, 2570),
(46500, 'MV', 'Maldives', 0, 0, 3, 2580),
(46510, 'MW', 'Malawi', 0, 0, 3, 2590),
(46520, 'MX', 'Mexico', 0, 0, 3, 2600),
-- `code`='MY', `name`='Malaysia', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2605 WHERE `id`=558;
(46530, 'MZ', 'Mozambique', 0, 0, 3, 2610),
(46540, 'NA', 'Namibia', 0, 0, 3, 2630),
(46550, 'NC', 'New Caledonia', 0, 0, 3, 2640),
(46560, 'NE', 'Niger', 0, 0, 3, 2650),
(46570, 'NF', 'Norfolk Island', 0, 0, 3, 2660),
(46580, 'NG', 'Nigeria', 0, 0, 3, 2670),
(46590, 'NI', 'Nicaragua', 0, 0, 3, 2680),
-- `code`='NL', `name`='Netherlands', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2690 WHERE `id`=543;
-- `code`='NO', `name`='Norway', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2700 WHERE `id`=546;
(46600, 'NP', 'Nepal', 0, 0, 3, 2710),
(46610, 'NR', 'Nauru', 0, 0, 3, 2720),
(46620, 'NU', 'Niue', 0, 0, 3, 2730),
-- `code`='NZ', `name`='New Zealand', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2740 WHERE `id`=538;
(46630, 'OM', 'Oman', 0, 0, 3, 2750),
(46640, 'OS', 'South Ossetia', 0, 0, 3, 2760),
(46650, 'PA', 'Panama', 0, 0, 3, 2770),
(46660, 'PE', 'Peru', 0, 0, 3, 2780),
(46670, 'PF', 'French Polynesia', 0, 0, 3, 2790),
(46680, 'PG', 'Papua New Guinea', 0, 0, 3, 2800),
(46690, 'PH', 'Philippines', 0, 0, 3, 2810),
(46700, 'PK', 'Pakistan', 0, 0, 3, 2820),
(46710, 'PL', 'Poland', 0, 0, 3, 2830),
(46720, 'PM', 'Saint Pierre and Miquelon', 0, 0, 3, 2840),
(46730, 'PN', 'Pitcairn', 0, 0, 3, 2850),
(46740, 'PR', 'Puerto Rico', 0, 0, 3, 2860),
(46750, 'PS', 'Palestine', 0, 0, 3, 2870),
(46760, 'PT', 'Portugal', 0, 0, 3, 2880),
(46770, 'PW', 'Palau', 0, 0, 3, 2890),
(46780, 'PY', 'Paraguay', 0, 0, 3, 2900),
(46790, 'QA', 'Qatar', 0, 0, 3, 2910),
(46800, 'RE', 'Reunion', 0, 0, 3, 2920),
(46810, 'RO', 'Romania', 0, 0, 3, 2930),
(46820, 'RS', 'Serbia', 0, 0, 3, 2940),
-- `code`='RU', `name`='Russia', `level`=0, `upid`=0, `usetype`=3, `displayorder`=2950 WHERE `id`=554;
(46830, 'RW', 'Rwanda', 0, 0, 3, 2960),
(46840, 'SA', 'Saudi Arabia', 0, 0, 3, 2970),
(46850, 'SB', 'Solomon Islands', 0, 0, 3, 2980),
(46860, 'SC', 'Seychelles', 0, 0, 3, 2990),
(46870, 'SD', 'Sudan', 0, 0, 3, 3000),
-- `code`='SE', `name`='Sweden', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3010 WHERE `id`=547;
-- `code`='SG', `name`='Singapore', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3020 WHERE `id`=557;
(46880, 'SH', 'Saint Helena', 0, 0, 3, 3030),
(46890, 'SI', 'Slovenia', 0, 0, 3, 3040),
(46900, 'SJ', 'Svalbard and Jan Mayen', 0, 0, 3, 3050),
(46910, 'SK', 'Slovakia', 0, 0, 3, 3060),
(46920, 'SL', 'Sierra Leone', 0, 0, 3, 3070),
(46930, 'SM', 'San Marino', 0, 0, 3, 3080),
(46940, 'SN', 'Senegal', 0, 0, 3, 3090),
(46950, 'SO', 'Somalia', 0, 0, 3, 3100),
(46960, 'SR', 'Suriname', 0, 0, 3, 3110),
(46970, 'SS', 'South Sudan', 0, 0, 3, 3120),
(46980, 'ST', 'Sao Tome and Principe', 0, 0, 3, 3130),
(46990, 'SU', 'Soviet Union', 0, 0, 3, 3140),
(47000, 'SV', 'El Salvador', 0, 0, 3, 3150),
(47010, 'SY', 'Syrian Arab Republic', 0, 0, 3, 3160),
(47020, 'SZ', 'Swaziland', 0, 0, 3, 3170),
(47030, 'TC', 'Turks and Caicos Islands', 0, 0, 3, 3180),
(47040, 'TD', 'Chad', 0, 0, 3, 3190),
(47050, 'TF', 'French Southern Territories', 0, 0, 3, 3200),
(47060, 'TG', 'Togo', 0, 0, 3, 3210),
-- `code`='TH', `name`='Thailand', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3220 WHERE `id`=560;
(47070, 'TJ', 'Tajikistan', 0, 0, 3, 3230),
(47080, 'TK', 'Tokelau', 0, 0, 3, 3240),
(47090, 'TL', 'Timor-Leste', 0, 0, 3, 3250),
(47100, 'TM', 'Turkmenistan', 0, 0, 3, 3260),
(47110, 'TN', 'Tunisia', 0, 0, 3, 3270),
(47120, 'TO', 'Tonga', 0, 0, 3, 3280),
(47130, 'TP', 'East (Portuguese) Timor', 0, 0, 3, 3290),
(47140, 'TR', 'Turkey', 0, 0, 3, 3300),
(47150, 'TT', 'Trinidad and Tobago', 0, 0, 3, 3310),
(47160, 'TV', 'Tuvalu', 0, 0, 3, 3320),
(47170, 'TW', 'Taiwan', 0, 0, 3, 3330),
(47180, 'TZ', 'Tanzania, United Republic of', 0, 0, 3, 3340),
-- `code`='UA', `name`='Ukraine', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3350 WHERE `id`=553;
(47190, 'UG', 'Uganda', 0, 0, 3, 3360),
(47200, 'UK', 'United Kingdom', 0, 0, 3, 3370),
(47210, 'UM', 'United States Minor Outlying Islands', 0, 0, 3, 3380),

(47220, 'UY', 'Uruguay', 0, 0, 3, 3400),
(47230, 'UZ', 'Uzbekistan', 0, 0, 3, 3410),
(47240, 'VA', 'Holy See (Vatican City State)', 0, 0, 3, 3420),
(47250, 'VC', 'Saint Vincent and the Grenadines', 0, 0, 3, 3430),
(47260, 'VE', 'Venezuela', 0, 0, 3, 3440),
(47270, 'VG', 'Virgin Islands, British', 0, 0, 3, 3450),
(47280, 'VI', 'Virgin Islands, U.S.', 0, 0, 3, 3460),
(47290, 'VN', 'Vietnam', 0, 0, 3, 3470),
(47300, 'VU', 'Vanuatu', 0, 0, 3, 3480),
(47310, 'WF', 'Wallis and Futuna', 0, 0, 3, 3490),
(47320, 'WS', 'Samoa', 0, 0, 3, 3500),
(47330, 'YE', 'Yemen', 0, 0, 3, 3510),
(47340, 'YT', 'Mayotte', 0, 0, 3, 3520),
(47350, 'YU', 'Yugoslavia', 0, 0, 3, 3530),
-- `code`='ZA', `name`='South Africa', `level`=0, `upid`=0, `usetype`=3, `displayorder`=3540 WHERE `id`=564;
(47360, 'ZM', 'Zambia', 0, 0, 3, 3550),
(47370, 'ZR', 'Zaire', 0, 0, 3, 3560),
(47380, 'ZW', 'Zimbabwe', 0, 0, 3, 3570),

(47390, '??', 'Unknown', 0, 0, 0, 9999),
(47400, 'LAN', 'LAN', 0, 0, 0, 9999),
(47410, 'LOC', 'Localhost', 0, 0, 0, 9999),
(47420, 'ERR', 'Invalid IP Address', 0, 0, 0, 9999)
;


-- 4) SET AUTO_INCREMENT VALUE
ALTER TABLE `pre_common_district` AUTO_INCREMENT =48001;



