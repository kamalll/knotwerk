-- --
-- Setup geo package db tables for SQLite.
--
-- @author Rob Tuley
-- @version SVN: $Id$
-- --

CREATE TABLE country
(
id INTEGER PRIMARY KEY ASC, -- alias for sqlite rowid
code TEXT COLLATE NOCASE NOT NULL,
name TEXT NOT NULL,
url TEXT COLLATE NOCASE NOT NULL
);
CREATE UNIQUE INDEX country_url_idx ON country (url);

INSERT INTO country (code,name,url) VALUES ('AD','Andorra','andorra');
INSERT INTO country (code,name,url) VALUES ('AE','United Arab Emirates','united-arab-emirates');
INSERT INTO country (code,name,url) VALUES ('AF','Afghanistan','afghanistan');
INSERT INTO country (code,name,url) VALUES ('AG','Antigua and Barbuda','antigua-and-barbuda');
INSERT INTO country (code,name,url) VALUES ('AI','Anguilla','anguilla');
INSERT INTO country (code,name,url) VALUES ('AL','Albania','albania');
INSERT INTO country (code,name,url) VALUES ('AM','Armenia','armenia');
INSERT INTO country (code,name,url) VALUES ('AN','Netherlands Antilles','netherlands-antilles');
INSERT INTO country (code,name,url) VALUES ('AO','Angola','angola');
INSERT INTO country (code,name,url) VALUES ('AQ','Antarctica','antarctica');
INSERT INTO country (code,name,url) VALUES ('AR','Argentina','argentina');
INSERT INTO country (code,name,url) VALUES ('AS','American Samoa','american-samoa');
INSERT INTO country (code,name,url) VALUES ('AT','Austria','austria');
INSERT INTO country (code,name,url) VALUES ('AU','Australia','australia');
INSERT INTO country (code,name,url) VALUES ('AW','Aruba','aruba');
INSERT INTO country (code,name,url) VALUES ('AX','Aland Islands','aland-islands');
INSERT INTO country (code,name,url) VALUES ('AZ','Azerbaijan','azerbaijan');
INSERT INTO country (code,name,url) VALUES ('BA','Bosnia and Herzegovina','bosnia-and-herzegovina');
INSERT INTO country (code,name,url) VALUES ('BB','Barbados','barbados');
INSERT INTO country (code,name,url) VALUES ('BD','Bangladesh','bangladesh');
INSERT INTO country (code,name,url) VALUES ('BE','Belgium','belgium');
INSERT INTO country (code,name,url) VALUES ('BF','Burkina Faso','burkina-faso');
INSERT INTO country (code,name,url) VALUES ('BG','Bulgaria','bulgaria');
INSERT INTO country (code,name,url) VALUES ('BH','Bahrain','bahrain');
INSERT INTO country (code,name,url) VALUES ('BI','Burundi','burundi');
INSERT INTO country (code,name,url) VALUES ('BJ','Benin','benin');
INSERT INTO country (code,name,url) VALUES ('BM','Bermuda','bermuda');
INSERT INTO country (code,name,url) VALUES ('BN','Brunei Darussalam','brunei-darussalam');
INSERT INTO country (code,name,url) VALUES ('BO','Bolivia','bolivia');
INSERT INTO country (code,name,url) VALUES ('BR','Brazil','brazil');
INSERT INTO country (code,name,url) VALUES ('BS','Bahamas','bahamas');
INSERT INTO country (code,name,url) VALUES ('BT','Bhutan','bhutan');
INSERT INTO country (code,name,url) VALUES ('BW','Botswana','botswana');
INSERT INTO country (code,name,url) VALUES ('BY','Belarus','belarus');
INSERT INTO country (code,name,url) VALUES ('BZ','Belize','belize');
INSERT INTO country (code,name,url) VALUES ('CA','Canada','canada');
INSERT INTO country (code,name,url) VALUES ('CC','Cocos INSERT INTO country (code,name,url) VALUES (Keeling) Islands','cocos-keeling-islands');
INSERT INTO country (code,name,url) VALUES ('CD','Congo INSERT INTO country (code,name,url) VALUES (Democratic Republic)','congo-democratic-republic');
INSERT INTO country (code,name,url) VALUES ('CF','Central African Republic','central-african-republic');
INSERT INTO country (code,name,url) VALUES ('CG','Congo','congo');INSERT INTO country (code,name,url) VALUES ('CH','Switzerland','switzerland');
INSERT INTO country (code,name,url) VALUES ('CI','Cote D''Ivoire','cote-d-ivoire');
INSERT INTO country (code,name,url) VALUES ('CK','Cook Islands','cook-islands');
INSERT INTO country (code,name,url) VALUES ('CL','Chile','chile');
INSERT INTO country (code,name,url) VALUES ('CM','Cameroon','cameroon');
INSERT INTO country (code,name,url) VALUES ('CN','China','china');
INSERT INTO country (code,name,url) VALUES ('CO','Colombia','colombia');
INSERT INTO country (code,name,url) VALUES ('CR','Costa Rica','costa-rica');
INSERT INTO country (code,name,url) VALUES ('CS','Serbia and Montenegro','serbia-and-montenegro');
INSERT INTO country (code,name,url) VALUES ('CU','Cuba','cuba');
INSERT INTO country (code,name,url) VALUES ('CV','Cape Verde','cape-verde');
INSERT INTO country (code,name,url) VALUES ('CX','Christmas Island','christmas-island');
INSERT INTO country (code,name,url) VALUES ('CY','Cyprus','cyprus');
INSERT INTO country (code,name,url) VALUES ('CZ','Czech Republic','czech-republic');
INSERT INTO country (code,name,url) VALUES ('DE','Germany','germany');
INSERT INTO country (code,name,url) VALUES ('DJ','Djibouti','djibouti');
INSERT INTO country (code,name,url) VALUES ('DK','Denmark','denmark');
INSERT INTO country (code,name,url) VALUES ('DM','Dominica','dominica');
INSERT INTO country (code,name,url) VALUES ('DO','Dominican Republic','dominican-republic');
INSERT INTO country (code,name,url) VALUES ('DZ','Algeria','algeria');
INSERT INTO country (code,name,url) VALUES ('EC','Ecuador','ecuador');
INSERT INTO country (code,name,url) VALUES ('EE','Estonia','estonia');
INSERT INTO country (code,name,url) VALUES ('EG','Egypt','egypt');
INSERT INTO country (code,name,url) VALUES ('EH','Western Sahara','western-sahara');
INSERT INTO country (code,name,url) VALUES ('ER','Eritrea','eritrea');
INSERT INTO country (code,name,url) VALUES ('ES','Spain','spain');
INSERT INTO country (code,name,url) VALUES ('ET','Ethiopia','ethiopia');
INSERT INTO country (code,name,url) VALUES ('FI','Finland','finland');
INSERT INTO country (code,name,url) VALUES ('FJ','Fiji','fiji');
INSERT INTO country (code,name,url) VALUES ('FK','Falkland Islands INSERT INTO country (code,name,url) VALUES (Malvinas)','falkland-islands-malvinas');
INSERT INTO country (code,name,url) VALUES ('FM','Micronesia','micronesia');
INSERT INTO country (code,name,url) VALUES ('FO','Faroe Islands','faroe-islands');
INSERT INTO country (code,name,url) VALUES ('FR','France','france');
INSERT INTO country (code,name,url) VALUES ('GA','Gabon','gabon');
INSERT INTO country (code,name,url) VALUES ('GB','United Kingdom','united-kingdom');
INSERT INTO country (code,name,url) VALUES ('GD','Grenada','grenada');
INSERT INTO country (code,name,url) VALUES ('GE','Georgia','georgia');
INSERT INTO country (code,name,url) VALUES ('GF','French Guiana','french-guiana');
INSERT INTO country (code,name,url) VALUES ('GH','Ghana','ghana');
INSERT INTO country (code,name,url) VALUES ('GI','Gibraltar','gibraltar');
INSERT INTO country (code,name,url) VALUES ('GL','Greenland','greenland');
INSERT INTO country (code,name,url) VALUES ('GM','Gambia','gambia');
INSERT INTO country (code,name,url) VALUES ('GN','Guinea','guinea');
INSERT INTO country (code,name,url) VALUES ('GP','Guadeloupe','guadeloupe');
INSERT INTO country (code,name,url) VALUES ('GQ','Equatorial Guinea','equatorial-guinea');
INSERT INTO country (code,name,url) VALUES ('GR','Greece','greece');
INSERT INTO country (code,name,url) VALUES ('GT','Guatemala','guatemala');
INSERT INTO country (code,name,url) VALUES ('GU','Guam','guam');
INSERT INTO country (code,name,url) VALUES ('GW','Guinea-bissau','guinea-bissau');
INSERT INTO country (code,name,url) VALUES ('GY','Guyana','guyana');
INSERT INTO country (code,name,url) VALUES ('HK','Hong Kong','hong-kong');
INSERT INTO country (code,name,url) VALUES ('HM','Heard Island and Mcdonald Islands','heard-island-and-mcdonald-islands');
INSERT INTO country (code,name,url) VALUES ('HN','Honduras','honduras');
INSERT INTO country (code,name,url) VALUES ('HR','Croatia','croatia');
INSERT INTO country (code,name,url) VALUES ('HT','Haiti','haiti');
INSERT INTO country (code,name,url) VALUES ('HU','Hungary','hungary');
INSERT INTO country (code,name,url) VALUES ('ID','Indonesia','indonesia');
INSERT INTO country (code,name,url) VALUES ('IE','Ireland','ireland');
INSERT INTO country (code,name,url) VALUES ('IL','Israel','israel');
INSERT INTO country (code,name,url) VALUES ('IN','India','india');
INSERT INTO country (code,name,url) VALUES ('IQ','Iraq','iraq');
INSERT INTO country (code,name,url) VALUES ('IR','Iran','iran');
INSERT INTO country (code,name,url) VALUES ('IS','Iceland','iceland');
INSERT INTO country (code,name,url) VALUES ('IT','Italy','italy');
INSERT INTO country (code,name,url) VALUES ('JM','Jamaica','jamaica');
INSERT INTO country (code,name,url) VALUES ('JO','Jordan','jordan');
INSERT INTO country (code,name,url) VALUES ('JP','Japan','japan');
INSERT INTO country (code,name,url) VALUES ('KE','Kenya','kenya');
INSERT INTO country (code,name,url) VALUES ('KG','Kyrgyzstan','kyrgyzstan');
INSERT INTO country (code,name,url) VALUES ('KH','Cambodia','cambodia');
INSERT INTO country (code,name,url) VALUES ('KI','Kiribati','kiribati');
INSERT INTO country (code,name,url) VALUES ('KM','Comoros','comoros');
INSERT INTO country (code,name,url) VALUES ('KN','Saint Kitts and Nevis','saint-kitts-and-nevis');
INSERT INTO country (code,name,url) VALUES ('KP','Korea, North','korea-north');
INSERT INTO country (code,name,url) VALUES ('KR','Korea, South','korea-south');
INSERT INTO country (code,name,url) VALUES ('KW','Kuwait','kuwait');
INSERT INTO country (code,name,url) VALUES ('KY','Cayman Islands','cayman-islands');
INSERT INTO country (code,name,url) VALUES ('KZ','Kazakhstan','kazakhstan');
INSERT INTO country (code,name,url) VALUES ('LA','Laos','laos');
INSERT INTO country (code,name,url) VALUES ('LB','Lebanon','lebanon');
INSERT INTO country (code,name,url) VALUES ('LC','Saint Lucia','saint-lucia');
INSERT INTO country (code,name,url) VALUES ('LI','Liechtenstein','liechtenstein');
INSERT INTO country (code,name,url) VALUES ('LK','Sri Lanka','sri-lanka');
INSERT INTO country (code,name,url) VALUES ('LR','Liberia','liberia');
INSERT INTO country (code,name,url) VALUES ('LS','Lesotho','lesotho');
INSERT INTO country (code,name,url) VALUES ('LT','Lithuania','lithuania');
INSERT INTO country (code,name,url) VALUES ('LU','Luxembourg','luxembourg');
INSERT INTO country (code,name,url) VALUES ('LV','Latvia','latvia');
INSERT INTO country (code,name,url) VALUES ('LY','Libyan Arab Jamahiriya','libyan-arab-jamahiriya');
INSERT INTO country (code,name,url) VALUES ('MA','Morocco','morocco');
INSERT INTO country (code,name,url) VALUES ('MC','Monaco','monaco');
INSERT INTO country (code,name,url) VALUES ('MD','Moldova','moldova');
INSERT INTO country (code,name,url) VALUES ('MG','Madagascar','madagascar');
INSERT INTO country (code,name,url) VALUES ('MH','Marshall Islands','marshall-islands');
INSERT INTO country (code,name,url) VALUES ('MK','Macedonia','macedonia');
INSERT INTO country (code,name,url) VALUES ('ML','Mali','mali');
INSERT INTO country (code,name,url) VALUES ('MM','Myanmar','myanmar');
INSERT INTO country (code,name,url) VALUES ('MN','Mongolia','mongolia');
INSERT INTO country (code,name,url) VALUES ('MO','Macao','macao');
INSERT INTO country (code,name,url) VALUES ('MP','Northern Mariana Islands','northern-mariana-islands');
INSERT INTO country (code,name,url) VALUES ('MQ','Martinique','martinique');
INSERT INTO country (code,name,url) VALUES ('MR','Mauritania','mauritania');
INSERT INTO country (code,name,url) VALUES ('MS','Montserrat','montserrat');
INSERT INTO country (code,name,url) VALUES ('MT','Malta','malta');
INSERT INTO country (code,name,url) VALUES ('MU','Mauritius','mauritius');
INSERT INTO country (code,name,url) VALUES ('MV','Maldives','maldives');
INSERT INTO country (code,name,url) VALUES ('MW','Malawi','malawi');
INSERT INTO country (code,name,url) VALUES ('MX','Mexico','mexico');
INSERT INTO country (code,name,url) VALUES ('MY','Malaysia','malaysia');
INSERT INTO country (code,name,url) VALUES ('MZ','Mozambique','mozambique');
INSERT INTO country (code,name,url) VALUES ('NA','Namibia','namibia');
INSERT INTO country (code,name,url) VALUES ('NC','New Caledonia','new-caledonia');
INSERT INTO country (code,name,url) VALUES ('NE','Niger','niger');
INSERT INTO country (code,name,url) VALUES ('NF','Norfolk Island','norfolk-island');
INSERT INTO country (code,name,url) VALUES ('NG','Nigeria','nigeria');
INSERT INTO country (code,name,url) VALUES ('NI','Nicaragua','nicaragua');
INSERT INTO country (code,name,url) VALUES ('NL','Netherlands','netherlands');
INSERT INTO country (code,name,url) VALUES ('NO','Norway','norway');
INSERT INTO country (code,name,url) VALUES ('NP','Nepal','nepal');
INSERT INTO country (code,name,url) VALUES ('NR','Nauru','nauru');
INSERT INTO country (code,name,url) VALUES ('NU','Niue','niue');
INSERT INTO country (code,name,url) VALUES ('NZ','New Zealand','new-zealand');
INSERT INTO country (code,name,url) VALUES ('OM','Oman','oman');
INSERT INTO country (code,name,url) VALUES ('PA','Panama','panama');
INSERT INTO country (code,name,url) VALUES ('PE','Peru','peru');
INSERT INTO country (code,name,url) VALUES ('PF','French Polynesia','french-polynesia');
INSERT INTO country (code,name,url) VALUES ('PG','Papua New Guinea','papua-new-guinea');
INSERT INTO country (code,name,url) VALUES ('PH','Philippines','philippines');
INSERT INTO country (code,name,url) VALUES ('PK','Pakistan','pakistan');
INSERT INTO country (code,name,url) VALUES ('PL','Poland','poland');
INSERT INTO country (code,name,url) VALUES ('PM','Saint Pierre and Miquelon','saint-pierre-and-miquelon');
INSERT INTO country (code,name,url) VALUES ('PN','Pitcairn','pitcairn');
INSERT INTO country (code,name,url) VALUES ('PR','Puerto Rico','puerto-rico');
INSERT INTO country (code,name,url) VALUES ('PS','Palestinian Territory','palestinian-territory');
INSERT INTO country (code,name,url) VALUES ('PT','Portugal','portugal');
INSERT INTO country (code,name,url) VALUES ('PW','Palau','palau');
INSERT INTO country (code,name,url) VALUES ('PY','Paraguay','paraguay');
INSERT INTO country (code,name,url) VALUES ('QA','Qatar','qatar');
INSERT INTO country (code,name,url) VALUES ('RE','Reunion','reunion');
INSERT INTO country (code,name,url) VALUES ('RO','Romania','romania');
INSERT INTO country (code,name,url) VALUES ('RU','Russian Federation','russian-federation');
INSERT INTO country (code,name,url) VALUES ('RW','Rwanda','rwanda');
INSERT INTO country (code,name,url) VALUES ('SA','Saudi Arabia','saudi-arabia');
INSERT INTO country (code,name,url) VALUES ('SB','Solomon Islands','solomon-islands');
INSERT INTO country (code,name,url) VALUES ('SC','Seychelles','seychelles');
INSERT INTO country (code,name,url) VALUES ('SD','Sudan','sudan');
INSERT INTO country (code,name,url) VALUES ('SE','Sweden','sweden');
INSERT INTO country (code,name,url) VALUES ('SG','Singapore','singapore');
INSERT INTO country (code,name,url) VALUES ('SH','Saint Helena','saint-helena');
INSERT INTO country (code,name,url) VALUES ('SI','Slovenia','slovenia');
INSERT INTO country (code,name,url) VALUES ('SJ','Svalbard and Jan Mayen','svalbard-and-jan-mayen');
INSERT INTO country (code,name,url) VALUES ('SK','Slovakia','slovakia');
INSERT INTO country (code,name,url) VALUES ('SL','Sierra Leone','sierra-leone');
INSERT INTO country (code,name,url) VALUES ('SM','San Marino','san-marino');
INSERT INTO country (code,name,url) VALUES ('SN','Senegal','senegal');
INSERT INTO country (code,name,url) VALUES ('SO','Somalia','somalia');
INSERT INTO country (code,name,url) VALUES ('SR','Suriname','suriname');
INSERT INTO country (code,name,url) VALUES ('ST','Sao Tome and Principe','sao-tome-and-principe');
INSERT INTO country (code,name,url) VALUES ('SV','El Salvador','el-salvador');
INSERT INTO country (code,name,url) VALUES ('SY','Syrian Arab Republic','syrian-arab-republic');
INSERT INTO country (code,name,url) VALUES ('SZ','Swaziland','swaziland');
INSERT INTO country (code,name,url) VALUES ('TC','Turks and Caicos Islands','turks-and-caicos-islands');
INSERT INTO country (code,name,url) VALUES ('TD','Chad','chad');
INSERT INTO country (code,name,url) VALUES ('TF','French Southern Territories','french-southern-territories');
INSERT INTO country (code,name,url) VALUES ('TG','Togo','togo');
INSERT INTO country (code,name,url) VALUES ('TH','Thailand','thailand');
INSERT INTO country (code,name,url) VALUES ('TJ','Tajikistan','tajikistan');
INSERT INTO country (code,name,url) VALUES ('TK','Tokelau','tokelau');
INSERT INTO country (code,name,url) VALUES ('TL','Timor-leste','timor-leste');
INSERT INTO country (code,name,url) VALUES ('TM','Turkmenistan','turkmenistan');
INSERT INTO country (code,name,url) VALUES ('TN','Tunisia','tunisia');
INSERT INTO country (code,name,url) VALUES ('TO','Tonga','tonga');
INSERT INTO country (code,name,url) VALUES ('TR','Turkey','turkey');
INSERT INTO country (code,name,url) VALUES ('TT','Trinidad and Tobago','trinidad-and-tobago');
INSERT INTO country (code,name,url) VALUES ('TV','Tuvalu','tuvalu');
INSERT INTO country (code,name,url) VALUES ('TW','Taiwan','taiwan');
INSERT INTO country (code,name,url) VALUES ('TZ','Tanzania','tanzania');
INSERT INTO country (code,name,url) VALUES ('UA','Ukraine','ukraine');
INSERT INTO country (code,name,url) VALUES ('UG','Uganda','uganda');
INSERT INTO country (code,name,url) VALUES ('US','United States','united-states');
INSERT INTO country (code,name,url) VALUES ('UY','Uruguay','uruguay');
INSERT INTO country (code,name,url) VALUES ('UZ','Uzbekistan','uzbekistan');
INSERT INTO country (code,name,url) VALUES ('VA','Holy See (Vatican City State)','holy-see-vatican-city-state');
INSERT INTO country (code,name,url) VALUES ('VC','Saint Vincent and the Grenadines','saint-vincent-and-the-grenadines');
INSERT INTO country (code,name,url) VALUES ('VE','Venezuela','venezuela');
INSERT INTO country (code,name,url) VALUES ('VG','Virgin Islands, British','virgin-islands-british');
INSERT INTO country (code,name,url) VALUES ('VI','Virgin Islands, U.S.','virgin-islands-us');
INSERT INTO country (code,name,url) VALUES ('VN','Vietnam','vietnam');
INSERT INTO country (code,name,url) VALUES ('VU','Vanuatu','vanuatu');
INSERT INTO country (code,name,url) VALUES ('WF','Wallis and Futuna','wallis-and-futuna');
INSERT INTO country (code,name,url) VALUES ('WS','Samoa','samoa');
INSERT INTO country (code,name,url) VALUES ('YE','Yemen','yemen');
INSERT INTO country (code,name,url) VALUES ('YT','Mayotte','mayotte');
INSERT INTO country (code,name,url) VALUES ('ZA','South Africa','south-africa');
INSERT INTO country (code,name,url) VALUES ('ZM','Zambia','zambia');
INSERT INTO country (code,name,url) VALUES ('ZW','Zimbabwe','zimbabwe');
