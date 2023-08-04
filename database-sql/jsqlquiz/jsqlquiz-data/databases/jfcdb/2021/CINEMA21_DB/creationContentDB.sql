-- Contenu de la base de données CINEMA21
-- Jean-François Condotta
-- 30/08/2021

DELETE FROM APPARTIENT;
DELETE FROM REALISE;
DELETE FROM REALISATEUR;
DELETE FROM GENRE;
DELETE FROM FILM;

INSERT INTO FILM VALUES
(0,'A jamais',2016,90),
(1,'Au fond des bois',2010,102),
(2,'La fille seule',1995,90),
(3,'Elle',2016,130),
(4,'There will be blood',2008,158),
(5,'Magnolia',2000,184),
(6,'Gangs of New York',2003,170),
(7,'Taxi driver',1976,115),
(8,'Arrête ou je continue',2014,102),
(9,'Arès',2016,80),
(10,'Vendeur',2016,89),
(11,'Les noces de Dieu',1999,150),
(12,'Souvenirs de la maison jaune',1989,122),
(13,'La comédie de Dieu',1995,163),
(14,'Django unchained',2012,164),
(15,'Les huit salopards',2016,168),
(16,'Kill Bill volume 1',2003,112),
(17,'Mon âme par toi guérie',2013,124),
(18,'Le promeneur d''oiseau',2014,100),
(19,'La maman et la putain',1973,220),
(20,'Ghost in the shell',2017,107),
(21,'Conjuring : les dossiers Warren',2013,110),
(22,'Blade runner',1982,117),
(23,'Au-delà des collines',2012,152),
(24,'Le retour',2003,106),
(25,'Julieta',2016,100),
(26,'The lobster',2015,114),
(27,'Taxi Téhéran',2015,86),
(28,'Les innocentes',2016,115),
(29,'Dune',1985,140),
(30,'The big Lebowski',1998,117),
(31,'Moka',2016,90),
(32,'Le client',2016,123),
(33,'EXAM',2012,101),
(34,'Ugly',2014,126),
(35,'La soif du mal',1958,95),
(36,'Bad Day for the Cut',2018,99),
(37,'Pars vite et reviens tard',2007,115),
(38,'Légitime défense',2011,82),
(39,'Cart',2014,110),
(40,'Temporada de Caza',2018,105),
(41,'Bottom of the world',2017,85),
(42,'Incendies',2011,123),
(43,'Mister Babadook',2014,94),
(44,'Zodiac',2007,156),
(45,'26 Years',2012,135),
(46,'Kenshin le vagabond',2016,134),
(47,'Lady Bird',2018,95),
(48,'Patti Cake$',2017,109),
(49,'Valley of love',2015,93),
(50,'Psychokinesis',2018,101),
(51,'Gone Baby Gone',2007,115),
(52,'Paterson',2016,118),
(53,'Dead Man',1996,134),
(54,'Broken Flowers',2005,105),
(55,'Big Fish',2004,125),
(56,'Whiplash',2014,107),
(57,'Little Odessa',1995,98),
(58,'Good Time',2017,101),
(59,'Drishyam',2017,163),
(60,'Moonlight',2017,111),
(61,'The grand budapest hotel',2014,100),
(62,'L''adversaire',2002,129),
(63,'Compliance',2012,90),
(64,'Paradise Lost',2014,120),
(65,'Oslo, 31 août',2012,96),
(66,'A l''origine',2009,130),
(67,'La loi du marché',2015,93),
(68,'The Equalizer',2014,132),
(69,'Ma vie sans moi',2003,102),
(70,'A tombeau ouvert',2000,121),
(71,'L''âge atomique',2012,68),
(72,'Fargo',1996,97),
(73,'Monster',2004,111),
(74,'Ne le dis à personne',2006,131),
(75,'Kenshin: Le commencement',2021,137),
(76,'Puis respirer normalement',2020,95),
(77,'Kenshin: l''Achèvement',2021,138),
(78,'Night Run',2015,125),
(79,'San Andreas',2015,114),
(80,'Dernier train pour Busan',2016,118),
(81,'A Family',2021,136),
(82,'Snowpiercer',2013,126),
(83,'Mother',2009,128),
(84,'Okja',2017,120),
(85,'Parasite',2019,132),
(86,'Blade of the Immortal',2017,140);

INSERT INTO GENRE VALUES
(0,'Drame'),
(1,'Thriller'),
(2,'Historique'),
(3,'Action'),
(4,'Policier'),
(5,'Comédie'),
(6,'Science fiction'),
(7,'Western'),
(8,'Comédie dramatique'),
(9,'Famille'),
(10,'Romance'),
(11,'Biopic'),
(12,'Musical'),
(13,'Epouvante-horreur'),
(14,'Fantastique'),
(15,'Catastrophe'),
(16,'Espionnage'),
(17,'Chanbara');

INSERT INTO APPARTIENT VALUES
(0,0),
(1,0),
(2,0),
(3,1),
(4,0),
(5,0),
(6,2),
(6,3),
(6,0),
(7,0),
(7,4),
(8,5),
(9,3),
(9,6),
(10,0),
(11,5),
(11,0),
(12,5),
(12,0),
(13,5),
(13,0),
(14,7),
(15,7),
(16,3),
(16,0),
(16,1),
(17,0),
(18,8),
(18,9),
(19,0),
(19,10),
(20,3),
(20,6),
(21,13),
(22,6),
(23,0),
(24,0),
(25,0),
(26,6),
(26,0),
(26,5),
(27,0),
(27,5),
(28,0),
(28,2),
(29,14),
(29,6),
(29,3),
(30,5),
(30,4),
(31,0),
(32,0),
(33,0),
(34,0),
(34,4),
(34,1),
(35,4),
(36,1),
(37,4),
(37,1),
(38,4),
(39,0),
(40,0),
(41,1),
(42,0),
(43,1),
(43,0),
(43,13),
(44,1),
(47,0),
(47,5),
(48,0),
(48,12),
(49,0),
(50,14),
(50,3),
(51,4),
(51,0),
(52,5),
(52,10),
(52,0),
(54,5),
(55,0),
(55,5),
(56,12),
(56,0),
(58,1),
(58,4),
(59,0),
(59,1),
(60,0),
(61,5),
(61,0),
(62,0),
(63,1),
(63,0),
(64,1),
(64,10),
(65,0),
(66,0),
(67,0),
(68,3),
(68,0),
(72,4),
(72,0),
(73,0),
(73,11),
(74,0),
(74,1),
(74,4),
(75,3),
(76,0),
(77,3),
(78,1),
(79,15),
(80,13),
(85,0),
(85,1),
(86,3);


INSERT INTO REALISATEUR VALUES
(0,'Benoît','Jacquot',1947,'Paris','France'),
(1,'Paul','Verhoeven',1938,'Amsterdam','Pays-Bas'),
(2,'Paul Thomas','Anderson',1970,'Los Angeles','Etats-Unis'),
(3,'Martin','Scorsese',1942,'New York','Etats-Unis'),
(4,'Sophie','Fillières',1964,'Paris','France'),
(5,'Jean-Patrick','Benes',NULL,NULL,NULL),		
(6,'Sylvain','Desclous',NULL,NULL,NULL),		
(7,'João César','Monteiro',1939,'Figueira da Foz','Portugal'),
(8,'Quentin','Tarantino',1963,'Knoxville','Etats-Unis'),
(9,'François','Dupeyron',1950,'Tartas','France'),
(10,'Philippe','Muyl',1953,'Lille','France'),
(11,'Jean','Eustache',1938,'Pessac','France'),
(12,'Rupert','Sanders',1971,'Westminster','Royaume-Uni'),
(13,'James','Wan',1977,'Kuching','Malaisie'),
(14,'Ridley','Scott',1937,'South Shields','Royaume-Uni'),
(15,'Cristian','Mungiu',1968,'Iasi','Roumanie'),
(16,'Andrey','Zvyagintsev',1964,'Novossibirsk','Russie'),
(17,'Pedro','Almodóvar',1949,'Calzada de Calatrava','Espagne'),
(18,'Yórgos','Lánthimos',1973,'Athènes','Grèce'),
(19,'Jafar','Panahi',1960,'Mianeh','Iran'),
(20,'Anne','Fontaine',1959,'Luxembourg','Luxembourg'),
(21,'David','Lynch',1946,'Missoula','Etats-Unis'),
(22,'Joel','Coen',1953,'Minneapolis','Etats-Unis'),
(23,'Ethan','Coen',1957,'Minneapolis','Etats-Unis'),
(24,'Frédéric','Mermoud',1969,'Sion','Suisse'),
(25,'Asghar','Farhadi',1972,'Ispahan','Iran'),
(26,'Stuart','Hazeldine',1957,NULL,'Royaume-Uni'),
(27,'Anurag','Kashyap',1972,NULL,'Inde'),
(28,'Orson','Welles',1937,'Kenosha','Etats-Unis'),
(29,'Chris','Baugh',NULL,NULL,NULL),
(30,'Régis','Wargnier',1948,'Metz','France'),
(31,'Pierre','Lacan',NULL,NULL,'France'),
(32,'Boo','Ji-Young',1971,NULL,'Corée du sud'),
(33,'Natalia','Garagiola',1982,'Buenos Aires','Argentine'),
(34,'Richard','Sears',1969,NULL,'Etats-Unis'),
(35,'Denis','Villeneuve',1967,'Trois-rivières','Canada'),
(36,'Jennifer','Kent',NULL,NULL,'Australie'),
(37,'David','Fincher',1962,'Denver','Etats-Unis'),
(38,'Keishi','Ohtomo',1966,NULL,'Japon'),
(39,'Andreï','Tarkovski',1932,NULL,'Russie'),
(40,'Jean-Luc','Godard',1930,'Paris','France'),
(41,'Geremy','Jasper',NULL,NULL,NULL),
(42,'Guillaume','Nicloux',1966,NULL,'France'),
(43,'Sang-Ho','Yeon',NULL,NULL,'Corée du sud'),
(44,'Ben','Affleck',1972,'Berkeley','Etats-Unis'),
(45,'Federico','Fellini',1920,'Rimini','Italie'),
(46,'Luchino','Visconti',1906,'Milan','Italie'),
(47,'Jim','Jarmusch',1953,'Akron','Etats-Unis'),
(48,'Tim','Burton',1958,'Burbank','Etats-Unis'),
(49,'Ben','Safdie',NULL,NULL,'Etats-Unis'),
(50,'Joshua','Safdie',1984,NULL,'Etats-Unis'),
(51,'Nishikant','Kamat',1969,'Dadar','Inde'),
(52,'Barry','Jenkins',NULL,NULL,'Etats-Unis'),
(53,'Wes','Anderson',1969,'Huston','Etats-Unis'),
(54,'Nicole','Garcia',1946,'Oran','Algérie'),
(55,'Craig','Zobel',NULL,NULL,'Etats-Unis'),
(56,'Andrea','Di Stefano',1972,'Rome','Italie'),
(57,'Joachim','Trier',1974,'Copenhague','Danemark'),
(58,'Patty','Jenkins',1971,'Victorville','Etats-Unis'),
(59,'Guillaume','Canet',1973,'Boulogne-Billancourt','France'),
(60,'Keishi','Otomo',1966,'Morioka','Japon'),
(61,'Brad','Peyton',1979,NULL,'Canada'),
(62,'Joon-ho','Bong',1969,'Daegu','Corée du sud'),
(63,'Michihito','Fujii',1986,NULL,'Japon'),
(64,'Takashi','Miike',1960,'Yao','Japon');

INSERT INTO REALISE VALUES
(0,0),
(1,0),
(2,0),
(3,1),
(4,2),
(5,2),
(6,3),
(7,3),
(8,4),
(9,5),
(10,6),
(11,7),
(12,7),
(13,7),
(14,8),
(15,8),
(16,8),
(17,9),
(18,10),
(19,11),
(20,12),
(21,13),
(22,14),
(23,15),
(24,16),
(25,17),
(26,18),
(27,19),
(28,20),
(29,21),
(30,22),
(30,23),
(31,24),
(32,25),
(33,26),
(34,27),
(35,28),
(36,29),
(37,30),
(38,31),
(39,32),
(40,33),
(41,34),
(42,35),
(43,36),
(44,37),
(46,38),
(48,41),
(49,42),
(50,43),
(51,44),
(52,47),
(53,47),
(54,47),
(55,48),
(58,49),
(58,50),
(59,51),
(60,52),
(61,53),
(62,54),
(63,55),
(64,56),
(65,57),
(70,3),
(72,22),
(72,23),
(73,58),
(74,59),
(75,60),
(77,60),
(79,61),
(80,43),
(81,63),
(82,62),
(83,62),
(84,62),
(85,62),
(86,64);