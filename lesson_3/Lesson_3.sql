-- users
-- profiles
-- posts
-- communities
-- messages
-- media
-- likes
-- friends

DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    INDEX users_phone_idx(phone), -- как выбирать индексы?
    INDEX users_firstname_lastname_idx(firstname, lastname)
);
use vk;
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Destinee', 'McCullough', 'yvonne.russel@example.net', '257353');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Narciso', 'Halvorson', 'yzulauf@example.net', '88');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Dangelo', 'Orn', 'hgottlieb@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Deontae', 'Rippin', 'mertz.earl@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Constantin', 'Mosciski', 'conner62@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Justice', 'Reichel', 'pzemlak@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('7', 'Nicholaus', 'Farrell', 'zryan@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('8', 'Darby', 'Morissette', 'aliya.harris@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('9', 'Dino', 'Williamson', 'ledner.cleveland@example.org', '331');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('10', 'Jacinto', 'Will', 'littel.adolphus@example.net', '4927977746');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('11', 'Mariana', 'Kovacek', 'lela86@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('12', 'Orlo', 'VonRueden', 'shana.towne@example.net', '44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('13', 'Sarai', 'Kutch', 'kschulist@example.org', '899');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('14', 'Fabian', 'Okuneva', 'lydia68@example.org', '375');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('15', 'Branson', 'Howell', 'rath.max@example.org', '452384');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('16', 'Cassandre', 'Breitenberg', 'hermina.cummings@example.org', '828307');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('17', 'Bud', 'Medhurst', 'carlie.oberbrunner@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('18', 'Georgette', 'Altenwerth', 'metz.serena@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('19', 'Rhiannon', 'Smitham', 'keagan75@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('20', 'Dillon', 'Von', 'joshua.batz@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('21', 'Kellen', 'Gislason', 'mohr.andy@example.net', '691');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('22', 'Aliya', 'Cartwright', 'umiller@example.com', '80');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('23', 'Faye', 'Wolf', 'abbie.gleichner@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('24', 'Cyril', 'Blick', 'christine.mcdermott@example.net', '662290');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('25', 'Joelle', 'Pouros', 'windler.christine@example.com', '958');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('26', 'Judge', 'Gusikowski', 'garry84@example.com', '498577');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('27', 'Johanna', 'Reinger', 'casper.ross@example.com', '499');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('28', 'Noble', 'Kutch', 'alda52@example.org', '49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('29', 'Garrick', 'Waters', 'cole.graham@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('30', 'Allison', 'Hartmann', 'mossie77@example.com', '386');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('31', 'Murphy', 'Stokes', 'grady.vida@example.net', '944166');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('32', 'Jeromy', 'Labadie', 'carolyne00@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('33', 'Cloyd', 'Bayer', 'reilly.halie@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('34', 'Marco', 'Toy', 'luettgen.gerry@example.com', '187492');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('35', 'Chauncey', 'Wintheiser', 'pcorkery@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('36', 'Destini', 'Koelpin', 'grant.mertie@example.org', '816216');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('37', 'Marilou', 'Willms', 'rosario.steuber@example.org', '641');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('38', 'Dorian', 'Davis', 'darien88@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('39', 'Quincy', 'Hahn', 'emerald73@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('40', 'Anika', 'McLaughlin', 'rafael79@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('41', 'Elwyn', 'Dare', 'caufderhar@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('42', 'Ines', 'Lockman', 'mya.dubuque@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('43', 'Mable', 'Feil', 'whitney.schmidt@example.net', '362815');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('44', 'Crawford', 'Lynch', 'dameon.langosh@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('45', 'Kobe', 'Dietrich', 'ihammes@example.org', '5031750413');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('46', 'Danial', 'Huel', 'feil.audrey@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('47', 'Marcelina', 'Bartell', 'marlon98@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('48', 'Parker', 'Kessler', 'ferry.estevan@example.com', '919507');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('49', 'Arnoldo', 'Hansen', 'phaag@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('50', 'Alvena', 'DuBuque', 'prohaska.alexane@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('51', 'Nicholaus', 'Veum', 'snitzsche@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('52', 'Derrick', 'Wilderman', 'crooks.derick@example.com', '7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('53', 'Jaren', 'Medhurst', 'bkassulke@example.net', '375');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('54', 'Vance', 'Feeney', 'laurence16@example.org', '314284');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('55', 'Molly', 'Daniel', 'fay.romaine@example.org', '2337707555');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('56', 'Melba', 'Moore', 'mcdermott.faye@example.net', '224005');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('57', 'Albin', 'Heathcote', 'sstiedemann@example.com', '393');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('58', 'Sabryna', 'Kreiger', 'emard.marlon@example.org', '872361');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('59', 'Sydni', 'Cummerata', 'lia61@example.com', '294820');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('60', 'Lurline', 'Wolf', 'elizabeth03@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('61', 'Mandy', 'Ullrich', 'xzavier83@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('62', 'Wilfred', 'Fadel', 'vgislason@example.com', '8667899072');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('63', 'Alisha', 'Roob', 'alana61@example.com', '385692');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('64', 'Randi', 'Leannon', 'rae.mccullough@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('65', 'Cydney', 'Sawayn', 'fdoyle@example.org', '867680936');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('66', 'Alfonso', 'Harris', 'bweber@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('67', 'Rowan', 'McClure', 'woodrow95@example.com', '384');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('68', 'Nadia', 'Rice', 'stroman.mittie@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('69', 'Jedidiah', 'Goyette', 'robel.sophie@example.net', '3081745002');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('70', 'Alva', 'Yundt', 'derick67@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('71', 'Laverna', 'Swaniawski', 'alfred.kunde@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('72', 'Torrance', 'Gibson', 'balistreri.kenna@example.net', '684');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('73', 'Savanah', 'Altenwerth', 'allie60@example.org', '406035');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('74', 'Elvie', 'Koelpin', 'leannon.millie@example.com', '641205');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('75', 'Jillian', 'Green', 'ycruickshank@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('76', 'Marielle', 'Gaylord', 'lauren79@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('77', 'Cortez', 'Keebler', 'valentina55@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('78', 'Marta', 'Morissette', 'alivia.wuckert@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('79', 'Vickie', 'Kohler', 'ayana04@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('80', 'Hermann', 'Ondricka', 'kwiza@example.org', '940');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('81', 'Breanne', 'Douglas', 'christy.hamill@example.net', '505');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('82', 'Ellen', 'Weimann', 'ttillman@example.com', '37');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('83', 'Gabriella', 'D\'Amore', 'moses59@example.net', '435917');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('84', 'Durward', 'Kuphal', 'rschowalter@example.org', '347');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('85', 'Haley', 'Reichel', 'collier.wendell@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('86', 'Santos', 'Quigley', 'hkunde@example.net', '1665515492');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('87', 'Reyna', 'Carter', 'jeffry77@example.net', '377');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('88', 'Monserrat', 'Vandervort', 'ocorwin@example.net', '239077');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('89', 'Violette', 'McKenzie', 'lang.caleigh@example.com', '999625');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('90', 'Forest', 'Volkman', 'abbott.colby@example.org', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('91', 'Austyn', 'McGlynn', 'gerry19@example.net', '934007');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('92', 'America', 'Wunsch', 'ohane@example.net', '7879492423');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('93', 'Elisabeth', 'Crona', 'mariela77@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('94', 'Adan', 'Sauer', 'ncrooks@example.org', '40862');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('95', 'Augustine', 'Roberts', 'edna07@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('96', 'Deshaun', 'Dooley', 'runte.savion@example.com', '508778');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('97', 'Mateo', 'Hessel', 'bgrady@example.net', '354019');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('98', 'Tanner', 'Corwin', 'jess.rau@example.net', '270903');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('99', 'Mack', 'Braun', 'demario.king@example.com', '9663305789');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('100', 'Herta', 'Lynch', 'gia.zboncak@example.com', '353235');


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id) -- что за зверь в целом?
    	ON UPDATE CASCADE -- как это работает? Какие варианты?
    	ON DELETE restrict -- как это работает? Какие варианты?
    -- , FOREIGN KEY (photo_id) REFERENCES media(id) -- пока рано, т.к. таблицы media еще нет
);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', NULL, '1991-02-16', '1', '1984-11-23 05:48:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', NULL, '1999-04-21', '2', '1980-11-19 20:18:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', NULL, '2013-08-25', '3', '2004-04-25 04:30:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', NULL, '2010-03-16', '4', '2012-02-11 14:16:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', NULL, '1981-01-26', '5', '1991-02-09 15:31:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', NULL, '1974-04-25', '6', '1992-11-11 13:59:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', NULL, '1976-02-26', '7', '2004-11-11 08:28:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', NULL, '1970-09-06', '8', '1981-03-29 17:06:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', NULL, '1974-08-18', '9', '2007-01-13 04:46:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', NULL, '1977-05-12', '10', '2010-08-28 08:00:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', NULL, '2010-05-11', '11', '2005-05-29 02:45:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', NULL, '1994-10-20', '12', '1972-09-05 20:04:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', NULL, '1993-04-16', '13', '1978-12-03 14:21:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', NULL, '2015-08-24', '14', '2014-04-10 11:34:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', NULL, '2011-06-30', '15', '1999-07-04 12:17:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', NULL, '2014-01-08', '16', '2013-05-10 15:50:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', NULL, '2004-08-28', '17', '1986-06-03 04:19:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', NULL, '1973-12-20', '18', '2014-03-13 07:34:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', NULL, '2000-06-22', '19', '1982-02-23 03:52:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', NULL, '2019-12-06', '20', '1979-05-18 07:01:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', NULL, '1988-08-07', '21', '2003-05-03 02:21:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', NULL, '1991-11-10', '22', '2014-11-20 21:19:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', NULL, '2006-06-01', '23', '2008-07-30 06:42:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', NULL, '1975-07-20', '24', '2010-04-04 05:31:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', NULL, '2020-02-04', '25', '2006-10-04 04:39:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', NULL, '1982-08-20', '26', '1999-07-30 04:48:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', NULL, '1970-10-11', '27', '1994-01-06 01:11:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', NULL, '2004-06-02', '28', '2003-02-19 23:38:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', NULL, '1997-08-27', '29', '1992-11-06 01:33:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', NULL, '2009-12-08', '30', '2019-02-08 02:09:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', NULL, '1994-10-01', '31', '2008-01-23 13:28:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', NULL, '1975-08-21', '32', '1994-09-07 13:46:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', NULL, '1973-09-09', '33', '1977-03-06 07:35:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', NULL, '2000-06-16', '34', '2011-12-21 16:46:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', NULL, '1985-08-28', '35', '2010-06-02 13:39:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', NULL, '2003-10-13', '36', '2005-12-01 10:01:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', NULL, '2001-03-03', '37', '2013-12-17 10:18:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', NULL, '1986-09-13', '38', '2007-03-21 12:19:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', NULL, '1979-06-22', '39', '2012-09-30 00:58:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', NULL, '2002-05-06', '40', '1991-03-16 08:01:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', NULL, '1970-09-10', '41', '2017-07-02 22:14:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', NULL, '1970-06-07', '42', '1977-12-22 16:34:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', NULL, '2020-01-08', '43', '2008-01-01 14:08:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', NULL, '1991-09-09', '44', '1992-05-10 23:39:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', NULL, '1972-04-13', '45', '1989-05-10 17:03:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', NULL, '2019-07-02', '46', '2017-01-22 14:11:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', NULL, '1996-05-19', '47', '2019-07-19 09:23:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', NULL, '1987-07-10', '48', '1984-04-08 17:32:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', NULL, '2007-08-03', '49', '2020-03-02 19:04:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', NULL, '2011-08-18', '50', '2015-09-15 19:32:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', NULL, '1977-06-19', '51', '1974-02-07 13:13:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', NULL, '1982-10-28', '52', '1984-01-15 01:04:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', NULL, '1988-05-31', '53', '1970-01-26 08:12:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', NULL, '1976-06-02', '54', '2000-08-19 14:00:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', NULL, '2018-01-12', '55', '1976-10-21 23:12:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', NULL, '1971-02-05', '56', '1983-07-01 11:52:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', NULL, '1998-04-19', '57', '2013-03-18 08:35:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', NULL, '2004-02-22', '58', '1988-04-21 09:29:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', NULL, '1973-12-17', '59', '2011-03-26 09:11:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', NULL, '1975-12-15', '60', '1973-08-31 14:57:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', NULL, '2002-08-18', '61', '2008-04-10 12:42:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', NULL, '1993-11-15', '62', '2000-09-04 14:24:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', NULL, '1985-11-15', '63', '2003-04-25 01:13:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', NULL, '2011-10-26', '64', '1999-07-29 06:04:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', NULL, '1978-01-02', '65', '1971-05-21 01:14:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', NULL, '1980-06-21', '66', '1990-11-01 12:14:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', NULL, '2009-09-22', '67', '2016-10-07 09:05:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', NULL, '1985-05-13', '68', '2012-03-17 16:24:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', NULL, '1999-12-03', '69', '1971-03-23 21:12:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', NULL, '2005-05-24', '70', '1970-02-03 08:05:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', NULL, '1979-07-06', '71', '2005-12-19 02:24:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', NULL, '2009-04-17', '72', '1985-03-25 16:46:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', NULL, '1998-08-20', '73', '1971-10-11 22:29:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', NULL, '2016-09-22', '74', '1970-09-19 06:25:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', NULL, '2003-04-24', '75', '2013-02-28 12:59:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', NULL, '2013-02-26', '76', '1990-12-27 01:09:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', NULL, '2001-11-01', '77', '1974-05-30 17:41:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', NULL, '1977-01-05', '78', '1993-11-24 14:05:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', NULL, '1993-05-15', '79', '2001-12-17 05:53:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', NULL, '1987-07-12', '80', '1982-02-07 23:01:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', NULL, '1996-06-15', '1', '1978-10-09 16:43:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', NULL, '2004-05-25', '2', '1987-05-19 19:19:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', NULL, '2007-05-09', '3', '2001-11-10 12:54:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', NULL, '1986-03-04', '4', '1983-08-23 19:28:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', NULL, '1973-08-14', '5', '2003-01-14 06:45:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', NULL, '1998-08-03', '6', '2008-01-22 10:53:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', NULL, '1984-03-11', '7', '2002-12-12 12:32:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', NULL, '1980-03-31', '8', '1988-02-17 19:08:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', NULL, '1973-10-12', '9', '1984-09-16 21:31:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', NULL, '1994-11-20', '10', '2013-04-25 03:43:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', NULL, '2016-09-21', '11', '1976-06-08 13:52:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', NULL, '2007-09-19', '12', '2001-05-19 23:30:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', NULL, '1999-12-16', '13', '1996-03-20 17:54:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', NULL, '1999-10-30', '14', '1991-02-07 06:18:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', NULL, '2004-09-15', '15', '2019-07-03 06:27:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', NULL, '1983-09-10', '16', '1997-04-23 05:58:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', NULL, '1978-08-02', '17', '2011-12-30 18:32:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', NULL, '1971-06-25', '18', '1985-12-05 07:03:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', NULL, '1994-03-23', '19', '1977-05-11 01:20:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', NULL, '1974-11-08', '20', '1978-08-15 11:58:14', NULL);


DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), -- можно будет даже не упоминать это поле при вставке
    INDEX messages_from_user_id (from_user_id),
    INDEX messages_to_user_id (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '59', '24', 'Optio aliquam sapiente id vel ut. Quas quia et esse atque. Qui aspernatur aut blanditiis distinctio eum deleniti. Mollitia ipsum voluptatem aut ipsum commodi inventore repellat.', '1990-01-15 19:21:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '25', '29', 'Sapiente consequatur praesentium reiciendis nam accusantium velit. Quos dignissimos odio provident consequatur autem. Consequatur sed aut qui ut inventore. Recusandae maxime consequatur blanditiis sit culpa magni.', '2007-01-09 09:52:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '15', '52', 'Totam omnis inventore nam ad illum. Voluptatem illo et explicabo.', '2019-05-22 11:07:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '92', '19', 'Molestiae architecto consequatur distinctio magni est. Fugiat nihil cum quibusdam enim quibusdam. Natus et autem culpa ipsum velit inventore. Vitae magnam illo numquam ut.', '1983-04-02 20:44:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '49', '40', 'Eos rem quos esse dicta nihil nihil facilis. Omnis ut voluptatem est dolorem. Nesciunt rerum libero omnis ut.', '1995-09-07 00:14:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '66', '83', 'Facilis fuga sed blanditiis vel. Occaecati consequatur hic rerum eius ad. Harum ipsum omnis ratione similique odio consectetur.', '2009-04-03 05:21:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '8', '23', 'Molestiae delectus nihil consequatur omnis ut velit. Nostrum cumque labore inventore qui consequatur nihil harum deleniti. Nihil delectus est impedit sed non. Inventore laboriosam ut veritatis porro quas necessitatibus est est.', '1980-11-07 22:57:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '25', '20', 'Odit qui quidem itaque eum. Et explicabo qui explicabo.', '2003-04-18 12:20:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '10', '94', 'Enim suscipit recusandae ea soluta quisquam ratione. Veritatis nostrum enim ut sed. Qui laudantium vel qui. Voluptatem ut quae velit.', '1990-09-09 06:42:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '66', '41', 'Nihil repudiandae provident culpa fugiat vero explicabo. Distinctio est qui iusto nemo ratione veritatis. Consequatur laborum quia aut. Perferendis ad ullam aliquid sapiente incidunt nihil. Earum minus mollitia recusandae aspernatur voluptates.', '1987-06-30 03:15:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '35', '19', 'Dolores itaque dignissimos perferendis. Aut voluptatem atque quia deleniti soluta. Quod aut asperiores voluptatem dolorem sit itaque accusamus. Consequuntur architecto voluptatem eos sed. Voluptatem earum eligendi perferendis eum.', '1995-05-28 02:32:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '92', '58', 'Quasi debitis hic illum officia magni. Sed numquam magnam recusandae est dolorem dignissimos. Velit et consequuntur officiis. Dolor error nulla rerum quia placeat corrupti. Consequuntur ut aut inventore tempore vel deleniti.', '1972-11-24 09:32:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '20', '80', 'Cumque nisi iure provident autem. Quis exercitationem dignissimos ut quia quae velit adipisci. Doloremque ex ut debitis officiis eum nesciunt vel. Et in et doloribus blanditiis.', '1999-10-25 21:12:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '26', '53', 'Numquam voluptatem aut esse praesentium cumque. Praesentium harum fugiat laboriosam dolorem harum accusamus minima. Sapiente nostrum non rerum mollitia doloribus eaque.', '1971-01-01 15:06:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '23', '24', 'Et cumque recusandae aut rem nisi quis adipisci. Soluta esse non fuga minus quia sit assumenda. Et vitae deserunt ut sed eos veritatis commodi.', '1991-08-19 07:19:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '36', '81', 'Tempore eum odio tempore ut. Nobis quae dolorem maiores non debitis. Aspernatur odit beatae est animi.', '2013-11-04 23:31:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '47', '60', 'In inventore est molestiae ipsam numquam. Eius modi repudiandae architecto explicabo aut voluptatem molestiae. Et explicabo cupiditate mollitia nam a eos corrupti. Mollitia soluta voluptatem at saepe sit.', '1997-09-01 11:34:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '10', '62', 'Rerum aut nihil nemo rem aperiam est quibusdam et. Repudiandae voluptatem a dolor excepturi necessitatibus id. Veritatis ut enim eaque rerum.', '1993-11-14 14:30:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '12', '2', 'Tempore sit voluptas ut qui suscipit. Libero unde harum velit sequi. Natus ut voluptatem assumenda et aliquam nemo. Et a vel eos vel.', '2005-03-18 12:02:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '80', '60', 'Temporibus ipsam quia perferendis quis tenetur et. Voluptatem quasi expedita sit mollitia. Corporis voluptates aperiam labore porro adipisci ullam quisquam. Totam rerum voluptatem dignissimos maiores.', '1988-05-05 06:50:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '42', '46', 'Et est blanditiis et nemo vero dolore accusantium. Quod magni earum quae quae ratione quae repellat sunt. Consequuntur voluptatem harum aut ipsam neque quis aut. Voluptas expedita debitis error laborum quibusdam animi ut. Quas eligendi sed rerum facilis itaque.', '1996-12-21 14:37:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '43', '50', 'Assumenda nam exercitationem voluptates est consequatur illo modi repudiandae. Qui qui omnis similique adipisci voluptas officia quia rem. Nihil soluta facilis reprehenderit delectus quasi amet.', '2017-10-16 02:53:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '69', '67', 'Ducimus vitae deserunt ab ab aut quaerat. Delectus impedit odit tempore mollitia ad laborum porro magni. Ea iusto nihil consequatur cupiditate. Quia porro nisi cumque saepe minus doloribus deserunt.', '2001-04-10 14:57:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '70', '78', 'Nisi voluptatibus ipsam molestiae sit non sunt enim. Dignissimos sit fugit voluptatibus animi. Voluptatem facilis quo quia et fuga.', '1980-09-01 13:39:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '60', '35', 'Tempora totam saepe est autem eos numquam amet. Placeat et et et et. Cumque eum expedita accusamus vero voluptates consectetur. Perferendis aliquid similique eum.', '1998-01-27 11:48:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '18', '95', 'Deleniti quam labore velit maiores reiciendis sit. Veritatis molestiae sapiente velit itaque maxime ea et. Recusandae ut et dolore qui veniam vero neque.', '1986-06-12 00:12:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '54', '10', 'Ut beatae nihil nihil explicabo. Est natus velit cupiditate quas velit vitae. Illum quia inventore cupiditate porro. Totam consequatur qui placeat praesentium velit aut alias.', '1998-06-25 08:19:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '53', '74', 'Veniam et nostrum ut harum sed impedit. Autem sint a tenetur est. Maiores cumque harum non aut.', '2008-08-06 18:33:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '89', '78', 'Et id id explicabo. Aut adipisci soluta modi saepe sit ipsa. Deserunt quia illum sunt ad harum. Ab hic non in quia. Est molestias temporibus soluta.', '1980-03-05 05:59:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '26', '12', 'Rerum dignissimos quia quia et qui commodi. Ex ut ipsam quas sequi et in exercitationem beatae. Id voluptate quisquam et fugiat reprehenderit. Quis doloremque labore sed nobis.', '1980-06-11 08:02:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '1', '62', 'Et cum suscipit libero consectetur voluptatem quia cupiditate. Culpa architecto hic et. Illum dolores earum et excepturi cum voluptate.', '2002-05-17 07:25:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '93', '48', 'Sunt in officia aut fuga sequi voluptate animi laudantium. Beatae reiciendis nobis eos repellat quia itaque suscipit. Iure nihil aliquam similique vero facilis dignissimos ipsa. Ut nam dicta voluptas voluptatibus in iure totam.', '1971-08-07 15:39:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '22', '3', 'Qui deserunt est incidunt. Occaecati omnis et facere esse. Voluptatem unde sequi quo totam. Rerum qui nulla iusto ut.', '1975-09-24 11:00:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '10', '33', 'Qui debitis quas quo vero totam. Quo ratione suscipit voluptatem aliquam qui blanditiis provident. Consequuntur eos labore enim quod.', '1997-01-21 03:03:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '4', '90', 'Dolor eum quia excepturi et assumenda officiis. Ut qui temporibus suscipit cupiditate non. Facere nobis itaque ut quibusdam beatae eaque dolorem.', '1985-06-25 06:24:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '93', '46', 'Quo velit rem ducimus distinctio. Voluptas nihil optio velit non. Rerum aut reiciendis perferendis illo voluptas.', '2014-02-09 01:20:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '35', '35', 'Architecto nobis quidem atque nihil doloribus quam. Aperiam amet expedita odit voluptas animi sit. Laborum sit ut itaque vero soluta ducimus neque. Praesentium perspiciatis odit aut excepturi ipsa cumque. Inventore deserunt et qui omnis veniam.', '1999-08-23 16:09:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '95', '3', 'Est perferendis ducimus harum maxime est. Eum nihil quaerat dolor qui quos aperiam vel. Cupiditate in quae ut vel asperiores quia.', '2011-11-08 16:03:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '2', '64', 'Laudantium et numquam beatae molestiae nesciunt nihil. Sunt vitae eum et voluptatem veritatis. Culpa aut esse placeat sit vitae iste incidunt.', '1995-07-03 23:36:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '81', '62', 'Commodi labore non et quis et dicta consequatur. Quia et sequi dolor. Delectus molestiae rerum itaque itaque.', '1980-11-02 23:20:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '99', '98', 'Sapiente dolore id distinctio optio. Et sit quisquam dolorem qui voluptatibus sed molestias. Consectetur ipsum officia temporibus accusamus.', '2015-04-07 17:40:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '56', '53', 'Impedit aut provident repellendus sapiente ad. Provident alias blanditiis optio quia id. Sed atque veritatis et molestias dolores. Et voluptatibus corrupti nesciunt culpa voluptatem iure.', '2010-09-13 21:31:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '7', '8', 'Labore ipsa aspernatur consequatur vitae. Est consectetur sint distinctio voluptatem assumenda. Consequatur unde omnis distinctio facere laboriosam ipsum ullam sit. Et hic expedita quas dicta quia.', '2017-12-13 03:28:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '26', '96', 'Est consequuntur nobis delectus quae sed. Modi libero non itaque quam et quisquam. Et et officiis dolorem quis. Ut ab qui est maxime et est est ut.', '2005-09-03 03:24:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '85', '52', 'Non nulla nihil vel nihil repellat numquam laudantium. Architecto cumque sunt doloribus sed autem. Earum hic et iusto officiis ullam illum blanditiis occaecati.', '1988-06-10 00:54:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '7', '86', 'Culpa et ut rerum saepe maxime iure provident vero. Quod sed ratione odio expedita sit dicta. Quo nam consectetur dolor ullam rerum.', '1983-11-09 09:11:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '13', '100', 'Quidem quo et itaque aperiam placeat. Asperiores voluptas consequatur fuga quas et voluptatem. Quia officiis voluptatum dolorem est necessitatibus minima suscipit. Velit et veniam nihil aut omnis aut sunt.', '2003-11-25 05:25:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '34', '35', 'Et quia ut beatae ut omnis voluptas. Magni molestiae voluptas voluptatum minus officia quasi nobis. Voluptatem qui dolor enim numquam error autem magnam error.', '1991-07-23 07:56:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '2', '44', 'Tenetur distinctio officia nostrum impedit quisquam. Molestiae delectus inventore distinctio molestias id accusantium voluptas. Vitae aliquid perspiciatis ratione consequatur voluptatibus. Error perferendis eos veniam soluta velit. Ex nobis culpa autem consequatur assumenda dolorem tempora.', '1985-02-12 20:11:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '67', '5', 'Beatae voluptate eveniet vero cupiditate perferendis voluptatem quo. Molestiae quia fuga quod explicabo. Est voluptas quia deserunt mollitia autem dolores et. Omnis molestiae dolores omnis quas et.', '2013-09-17 12:58:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '33', '59', 'Amet aperiam qui reprehenderit. Rerum molestias tenetur id quia perferendis consequatur. In consequatur qui nihil fugiat ratione aut commodi.', '2011-09-19 09:02:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '50', '68', 'Voluptatem aliquam mollitia aperiam repellendus sint et. Ut dicta nobis odit dolorum laudantium dolorem explicabo.', '1984-01-09 22:07:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '94', '45', 'Ratione officiis ab id et consequatur nobis maxime dolore. Aut voluptatibus voluptatem dolores iste. Sed accusantium eligendi ut repellendus beatae vitae consectetur in. Impedit sit nemo doloribus inventore voluptates.', '2006-07-14 06:47:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '71', '96', 'Dolor unde ea ut dolores vero. Tenetur voluptatum mollitia officiis ut. Sed velit eum et commodi. Temporibus impedit commodi et ut doloribus recusandae. Cupiditate consequatur necessitatibus placeat delectus.', '2005-06-02 17:40:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '8', '51', 'Dignissimos exercitationem ad similique. Iusto eos illo qui voluptatem temporibus. Suscipit aut omnis atque perspiciatis minima dolores nemo. Nihil accusantium deleniti quibusdam provident ut reiciendis beatae.', '1996-05-09 00:55:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '57', '6', 'Suscipit quia eaque molestiae eligendi ab eligendi quibusdam. Nisi quaerat voluptatibus sit dolore qui sunt repellat ipsam. Tenetur nihil aliquam voluptatem dolorem. Facere est magni qui aut earum molestiae corporis.', '1999-04-17 00:17:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '48', '12', 'Nam dolorem quod ad sed dolore ut. Aliquam ipsa aperiam voluptatem rerum hic pariatur. Sequi esse quaerat vel temporibus et in.', '2017-10-20 13:14:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '59', '55', 'Assumenda et ut tempore delectus ipsa omnis sint. Ea vel magnam natus et. Officia voluptas nihil facere et quaerat libero officiis explicabo. Et totam quasi iure dolorem dolor alias.', '2015-09-01 07:48:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '20', '84', 'Aliquam soluta placeat accusantium eum corporis consectetur quibusdam. Consequatur in laboriosam ipsum quia ad. Perspiciatis sed accusamus dolor aut sunt. Reiciendis corporis dolorem cumque autem inventore sed.', '1986-07-15 08:28:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '51', '5', 'A consequatur aperiam quia sed doloribus ut ut dolor. Et autem quia ut nisi facere saepe. Saepe voluptas hic quam labore et hic molestiae blanditiis.', '1978-11-05 12:53:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '35', '58', 'A quidem vel quo rem est eaque ab. Laboriosam id quod magni cumque omnis. Accusamus voluptatum eius sed labore quibusdam rem mollitia eos. Assumenda voluptatem est inventore vero provident laboriosam.', '2013-09-15 16:17:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '91', '48', 'Doloribus molestias vitae nesciunt et. Ut repellendus tempora distinctio sapiente commodi doloremque. Ut magni debitis magni magni.', '2016-01-15 14:01:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '57', '24', 'Voluptatibus adipisci tempore quia ab repudiandae voluptatem. Ipsam quis omnis modi cum non. Et distinctio commodi laborum molestiae at labore.', '1982-09-10 02:01:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '82', '58', 'Aut nobis repudiandae at quaerat. Aut eius dolores et sunt quam aut optio. Est esse est id quidem eum illo. Sunt sint distinctio ex consectetur.', '2013-10-23 06:41:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '67', '49', 'Perspiciatis non et quas quidem molestiae dolor. Recusandae esse suscipit non voluptatem. Vel culpa consequatur reiciendis sapiente. Et esse exercitationem est quis.', '2005-09-17 04:06:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '63', '100', 'Voluptas qui unde ad officiis est ut et neque. In voluptatem optio perferendis omnis quibusdam. Sequi dolor optio ut eos commodi nulla.', '1980-01-24 21:32:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '8', '13', 'Et amet aut officiis ipsa saepe quae. Quibusdam odio tenetur quis quidem non voluptatem sequi perspiciatis.', '2011-07-08 01:09:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '67', '1', 'Animi aut et reiciendis sunt quam et. Aut qui temporibus consequuntur cum impedit ipsa ea. Sed autem omnis voluptatem numquam eveniet.', '2001-05-29 19:38:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '57', '37', 'Ut facere quo dolores nihil quaerat. Molestiae atque reprehenderit earum possimus qui. Voluptatem dolor autem ut provident perspiciatis molestiae. Ut quidem voluptatibus quas sunt voluptatum non eos velit.', '2011-02-26 14:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '96', '65', 'Aut est totam ut velit doloremque. Ut occaecati neque ullam sit. Labore fuga dolorum fuga officiis porro temporibus.', '1985-09-16 22:24:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '87', '53', 'Excepturi magni impedit nemo voluptas voluptates aut consectetur. Sequi aut vel tenetur maiores earum quisquam voluptatem. Autem sed minus ipsam et et aut.', '1992-11-09 08:06:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '71', '35', 'Rerum consequuntur qui minus non. Quo voluptates dolores error corporis. Quia tempora et blanditiis sunt neque. Optio quos recusandae sed dicta id nisi tempore.', '1994-07-02 17:38:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '65', '29', 'Et molestiae placeat veniam sequi sint aut consequatur. Dolorum molestiae reiciendis est id aperiam eligendi modi. Vitae exercitationem at neque aspernatur consequatur occaecati velit est.', '2014-04-12 15:51:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '90', '84', 'Et vel ducimus tenetur. Qui adipisci optio repellat suscipit. Omnis est sequi sequi non minima magni. Temporibus rerum pariatur quod culpa at nihil odio ullam.', '2003-10-14 10:44:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '13', '40', 'Illum sit eveniet distinctio eaque sequi sint. Est esse eius perspiciatis labore voluptatem et.', '2007-09-07 03:00:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '89', '48', 'Est libero sed et. Maiores voluptas aperiam et id porro qui. Illo nemo enim pariatur fuga ut hic accusantium. Id reprehenderit itaque commodi ad quo et vel.', '2019-05-22 04:23:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '97', '79', 'Mollitia nihil a qui accusamus. Blanditiis perferendis quae sapiente et dicta enim odio. Numquam rem est est ex earum ipsa vel.', '1990-07-26 00:51:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '95', '54', 'Ut natus enim quis. Tempora vero temporibus voluptas. Aut esse excepturi reiciendis rerum fuga autem et et.', '2001-05-24 17:00:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '2', '77', 'Ad illum incidunt numquam sequi. Veniam quam quisquam quo laborum ipsum. Autem veniam cum facere doloremque et est et.', '2012-01-16 10:38:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '12', '69', 'Maiores voluptatem pariatur quae voluptas voluptas magni. Corrupti et voluptatem voluptas eius dolor. Praesentium voluptatem optio non culpa est dicta. Reprehenderit at omnis reiciendis est rem atque sit.', '1993-02-24 00:00:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '25', '74', 'Non veniam nemo quia repellat quis suscipit est. Laudantium dolorum iure fugiat qui. Et nisi suscipit fuga enim ratione blanditiis omnis et.', '1997-12-25 13:19:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '69', '32', 'Vel occaecati enim saepe minima inventore nobis accusantium. Dolores veniam minus dolore itaque ut. Dignissimos dolorum consequuntur perspiciatis aperiam. Enim non tempore facere aperiam dicta rerum ratione.', '1978-06-14 20:10:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '87', '35', 'Cum omnis reiciendis iure dicta alias aut. Et eum voluptas explicabo quo rem. Rerum maiores dolorem quasi odio consequatur vel provident.', '1987-07-10 08:46:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '33', '44', 'Id autem ut qui deserunt aut nostrum est. Commodi molestias quia saepe animi explicabo culpa.', '2019-05-18 03:18:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '72', '29', 'Qui ut occaecati ipsam debitis optio. Doloremque at excepturi assumenda temporibus aut. Libero eveniet quos sit dolorem qui. Et eum possimus non quo.', '1995-04-20 11:37:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '9', '59', 'Quos enim laboriosam doloremque enim nemo blanditiis. Consectetur assumenda dolorem aut ut. Pariatur vel culpa ad aut.', '1979-03-16 22:05:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '82', '79', 'Porro quisquam vel est architecto sit. Sit blanditiis minus expedita ipsum accusamus ipsa qui. Et libero quo laborum.', '2010-12-17 10:10:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '94', '46', 'Sit iusto pariatur labore quas. Incidunt temporibus magni nostrum et quidem. Eius laudantium odit ut accusamus. Voluptatem est rem repellat ut debitis voluptatem.', '2000-02-03 08:12:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '8', '83', 'Corrupti omnis aliquam aut facere et quibusdam. Voluptatem inventore velit quo reprehenderit dignissimos.', '2000-08-29 13:19:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '30', '20', 'Sit nemo doloremque quia ab. Qui aliquam ratione sunt pariatur earum id et nemo. Quo fugit omnis molestiae. Nesciunt consequatur exercitationem molestiae.', '1975-04-06 16:05:48');

DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	-- id SERIAL PRIMARY KEY, -- изменили на композитный ключ (initiator_user_id, target_user_id)
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    -- `status` TINYINT UNSIGNED,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
    -- `status` TINYINT UNSIGNED, -- в этом случае в коде хранили бы цифирный enum (0, 1, 2, 3...)
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	
    PRIMARY KEY (initiator_user_id, target_user_id),
	INDEX (initiator_user_id), -- потому что обычно будем искать друзей конкретного пользователя
    INDEX (target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '46', 'unfriended', '1984-03-21 18:16:01', '1996-05-22 21:14:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '45', 'approved', '1985-04-14 09:51:27', '1995-10-04 08:39:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '52', 'requested', '1998-09-20 05:12:14', '2001-07-05 23:16:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '98', 'declined', '2020-02-06 05:36:52', '1993-06-12 17:44:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '4', 'approved', '1990-09-15 04:17:41', '1983-11-06 17:18:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '22', 'unfriended', '1988-02-13 05:57:22', '2014-08-14 07:16:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '72', 'requested', '2014-02-28 03:55:04', '2008-07-31 19:37:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '5', 'requested', '2014-04-17 07:46:24', '2004-10-05 02:42:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '18', 'approved', '1989-07-21 04:55:49', '1978-04-15 10:18:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '17', 'declined', '2003-01-27 21:37:13', '2013-06-12 23:31:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '22', 'declined', '1984-09-11 00:54:47', '1990-07-06 20:17:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '96', 'declined', '2018-06-25 17:54:02', '1989-01-01 19:32:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '32', 'declined', '1975-03-21 04:51:41', '1996-09-11 10:31:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '8', 'unfriended', '2004-05-30 12:55:47', '1971-07-27 17:54:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('12', '5', 'declined', '1985-10-22 03:39:01', '2012-02-11 12:52:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '2', 'requested', '1990-11-27 00:37:00', '1998-09-01 06:13:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '35', 'requested', '1983-05-21 17:22:33', '1996-09-07 15:33:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('16', '15', 'declined', '1991-04-03 03:07:45', '1978-05-11 22:40:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('17', '81', 'unfriended', '1970-06-25 15:03:41', '2015-08-25 08:16:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('19', '51', 'requested', '1985-11-20 00:05:17', '1977-04-25 13:05:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('20', '46', 'requested', '2010-09-30 04:40:01', '1980-12-14 21:30:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('20', '96', 'unfriended', '2005-06-16 18:46:28', '1979-02-17 03:57:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '7', 'declined', '1972-02-25 02:03:42', '1986-07-21 04:26:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '29', 'declined', '1970-11-19 07:25:22', '1987-07-09 12:54:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '36', 'declined', '2006-03-14 22:46:09', '1980-03-24 06:21:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '69', 'unfriended', '2014-07-12 21:34:15', '2017-03-30 14:29:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '19', 'approved', '2009-08-14 18:49:17', '1989-12-17 00:58:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('23', '96', 'approved', '1998-04-08 15:35:05', '1994-02-05 21:56:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '4', 'declined', '2008-05-05 16:57:04', '2009-09-15 01:56:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '21', 'declined', '1985-08-20 19:37:25', '2012-03-02 19:42:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('26', '87', 'declined', '2014-11-18 08:21:55', '1999-01-25 21:29:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '58', 'requested', '2016-11-29 13:56:37', '2018-06-02 10:42:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '3', 'unfriended', '2002-07-23 00:08:25', '1994-11-30 07:04:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '32', 'declined', '1993-04-12 08:16:13', '2015-08-23 06:47:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '36', 'declined', '2018-12-27 07:02:23', '2006-10-01 06:57:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('33', '40', 'approved', '1974-03-13 20:11:29', '1992-02-03 02:50:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '3', 'approved', '1990-08-10 19:00:46', '2007-09-25 22:41:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '47', 'approved', '1989-10-28 13:36:13', '2005-01-27 16:37:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('39', '42', 'unfriended', '2003-05-18 13:19:49', '1983-11-04 02:40:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('40', '94', 'requested', '2019-07-20 11:33:13', '1980-08-01 00:20:56');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('41', '30', 'declined', '1987-08-31 17:46:26', '2002-02-24 13:17:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('41', '77', 'declined', '1983-12-18 05:23:53', '1984-01-22 02:57:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '22', 'requested', '1993-08-18 05:40:20', '1975-06-29 20:58:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '23', 'approved', '1971-02-18 03:28:40', '1994-05-28 07:28:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '49', 'approved', '2012-09-05 17:24:26', '1978-07-11 12:51:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('44', '35', 'requested', '2007-05-17 03:44:10', '2011-02-13 22:15:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('44', '50', 'approved', '2012-02-29 07:44:23', '2014-10-09 01:46:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('44', '52', 'requested', '1983-06-04 12:27:15', '1988-06-27 09:14:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('45', '17', 'requested', '2020-01-23 04:26:06', '2000-07-24 10:50:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('45', '50', 'unfriended', '1991-02-16 12:38:22', '1996-01-28 15:58:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('46', '72', 'declined', '1981-03-03 11:58:12', '2013-01-06 18:40:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('48', '46', 'approved', '2018-03-14 21:44:49', '1987-06-24 08:12:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('49', '43', 'requested', '2009-06-19 04:07:30', '1970-03-27 05:30:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('53', '25', 'requested', '1988-06-08 00:33:07', '1978-05-23 01:04:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '27', 'requested', '2016-07-31 11:24:23', '2014-12-17 07:35:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '100', 'requested', '2015-05-14 18:28:39', '2005-09-22 21:47:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('59', '2', 'approved', '1985-01-06 15:55:35', '2013-11-30 01:45:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('61', '42', 'unfriended', '2015-05-24 07:33:27', '1974-10-20 00:21:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('61', '50', 'requested', '1998-04-19 12:36:24', '1987-01-23 08:03:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('61', '60', 'requested', '1990-09-10 04:53:29', '2005-02-05 03:43:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('63', '23', 'declined', '1975-04-14 22:19:07', '2006-07-29 14:05:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('65', '80', 'requested', '1972-07-23 09:06:03', '1985-11-01 18:13:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('66', '56', 'unfriended', '2012-11-22 14:18:17', '1997-11-01 10:29:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('66', '80', 'requested', '2018-02-04 08:44:45', '1978-02-27 04:10:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('66', '95', 'unfriended', '1991-12-18 03:31:56', '1985-10-15 05:56:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('67', '56', 'requested', '2010-08-30 05:13:00', '1983-11-10 16:23:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('69', '24', 'declined', '1977-05-16 18:38:32', '2012-07-14 13:47:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('69', '74', 'requested', '2014-08-25 07:38:38', '1982-09-30 18:19:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('71', '6', 'unfriended', '1980-09-13 22:41:02', '2000-03-23 14:11:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('74', '5', 'requested', '2001-06-08 15:23:07', '1973-11-24 18:02:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('74', '86', 'approved', '2016-04-30 08:05:47', '2010-03-16 22:28:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('74', '92', 'approved', '1989-01-13 15:15:27', '1993-02-09 19:12:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('76', '46', 'approved', '2019-10-01 18:50:10', '1985-10-21 20:38:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('77', '7', 'declined', '2018-10-12 03:18:18', '1974-06-29 05:05:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('77', '24', 'approved', '1981-05-10 23:23:07', '1986-02-28 03:58:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('79', '68', 'approved', '1985-04-17 19:04:27', '2013-06-14 11:44:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('80', '42', 'requested', '2013-04-29 08:48:48', '1971-05-01 00:42:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('81', '31', 'declined', '2016-10-23 00:09:30', '1988-05-09 07:44:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('81', '43', 'declined', '1996-06-05 17:57:00', '2017-01-31 09:56:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('84', '24', 'requested', '2006-01-09 15:53:30', '1996-06-10 15:59:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('84', '38', 'declined', '1994-06-28 17:03:11', '2009-11-02 08:28:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('86', '67', 'requested', '2001-05-30 01:30:01', '2005-06-03 13:14:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('87', '3', 'unfriended', '2013-07-13 15:37:11', '1990-08-28 07:17:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('88', '86', 'unfriended', '1974-01-26 23:23:05', '1979-03-27 08:15:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('89', '89', 'unfriended', '1986-03-29 18:03:12', '2002-05-30 10:09:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('92', '33', 'approved', '1985-06-03 14:31:58', '1992-11-04 01:26:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('94', '28', 'declined', '2008-10-20 01:41:48', '1978-10-27 21:18:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('94', '66', 'approved', '2011-09-18 16:30:54', '1998-12-02 21:21:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('98', '59', 'approved', '1976-10-03 12:02:55', '2005-10-15 06:44:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('100', '57', 'approved', '1974-03-11 05:19:46', '2012-07-14 09:32:45');

DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),

	INDEX communities_name_idx(name)
);

INSERT INTO `communities` (`id`, `name`) VALUES ('46', 'accusamus');
INSERT INTO `communities` (`id`, `name`) VALUES ('38', 'adipisci');
INSERT INTO `communities` (`id`, `name`) VALUES ('42', 'alias');
INSERT INTO `communities` (`id`, `name`) VALUES ('43', 'aliquid');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'commodi');
INSERT INTO `communities` (`id`, `name`) VALUES ('23', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'cum');
INSERT INTO `communities` (`id`, `name`) VALUES ('29', 'deleniti');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'deserunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('37', 'dolorem');
INSERT INTO `communities` (`id`, `name`) VALUES ('40', 'dolores');
INSERT INTO `communities` (`id`, `name`) VALUES ('44', 'dolores');
INSERT INTO `communities` (`id`, `name`) VALUES ('26', 'eaque');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'eos');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'eos');
INSERT INTO `communities` (`id`, `name`) VALUES ('35', 'eos');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('39', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('41', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES ('32', 'hic');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'id');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'impedit');
INSERT INTO `communities` (`id`, `name`) VALUES ('47', 'in');
INSERT INTO `communities` (`id`, `name`) VALUES ('22', 'iste');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'libero');
INSERT INTO `communities` (`id`, `name`) VALUES ('33', 'magni');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'molestias');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES ('27', 'nihil');
INSERT INTO `communities` (`id`, `name`) VALUES ('45', 'nulla');
INSERT INTO `communities` (`id`, `name`) VALUES ('50', 'officia');
INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'praesentium');
INSERT INTO `communities` (`id`, `name`) VALUES ('30', 'praesentium');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'quasi');
INSERT INTO `communities` (`id`, `name`) VALUES ('34', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES ('21', 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES ('48', 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES ('24', 'repudiandae');
INSERT INTO `communities` (`id`, `name`) VALUES ('49', 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES ('31', 'saepe');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'sunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('28', 'ullam');
INSERT INTO `communities` (`id`, `name`) VALUES ('25', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('36', 'velit');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'voluptatum');

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id), -- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
)ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '32');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '41');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '35');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('21', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('22', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('25', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('25', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('25', '36');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('28', '39');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('32', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('32', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '37');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('38', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '43');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('42', '46');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '50');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('51', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('53', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('53', '38');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('55', '44');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '39');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('61', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('61', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('63', '34');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '47');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('71', '41');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('74', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('84', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '43');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('89', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('89', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '44');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '35');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '39');

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

    -- записей мало, поэтому индекс будет лишним (замедлит работу)!
);
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'quo', '2016-04-01 05:16:13', '1984-12-05 05:28:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'suscipit', '1992-08-15 18:24:34', '1987-07-11 23:29:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'culpa', '2000-01-10 17:57:21', '2004-03-27 07:18:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'quia', '1985-06-22 14:55:39', '2017-02-06 21:23:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'adipisci', '1999-09-08 08:25:18', '1970-11-27 17:15:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'quia', '2003-10-28 12:03:29', '2016-05-29 08:32:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'est', '2006-04-24 00:19:08', '1993-11-08 15:18:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'exercitationem', '1971-11-04 01:42:53', '2016-03-20 12:27:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'sed', '1996-04-20 00:04:53', '1993-03-15 09:21:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'quibusdam', '1986-12-25 22:06:09', '2002-01-29 23:53:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'qui', '1973-03-20 11:48:17', '2019-01-29 08:05:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'laborum', '1972-09-17 04:33:27', '1971-09-30 09:33:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'nisi', '2000-12-23 14:35:42', '2001-06-12 12:10:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'aut', '1991-06-23 10:39:22', '2000-01-22 18:29:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'modi', '2004-06-20 00:47:59', '1996-12-09 02:38:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'soluta', '2018-03-27 08:42:05', '1991-11-30 01:35:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'eos', '2011-11-16 22:09:18', '2019-07-15 22:32:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'ullam', '1991-01-03 00:57:03', '1973-01-04 18:14:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'optio', '1982-03-24 20:33:28', '1995-05-18 11:59:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'rem', '2014-05-25 06:16:11', '1986-02-24 16:14:55');


DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '4', '41', 'Reiciendis iste aliquam id omnis voluptas eos. Neque quis aperiam et vero quod incidunt. Sed laborum fugit dolorem et unde et.', 'quia', 800, NULL, '2013-10-23 16:23:49', '2012-02-25 13:33:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '12', '66', 'Accusantium debitis et aut qui rerum nisi. Aspernatur animi vitae voluptatum et dolorum doloribus sit suscipit. Corrupti aut ducimus est occaecati. Facilis voluptas autem perspiciatis doloremque suscipit corporis distinctio.', 'ea', 61884789, NULL, '1979-09-24 01:33:48', '1999-10-08 10:32:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '6', '86', 'Non inventore minus voluptatem neque. Aut exercitationem est reiciendis sapiente repellendus necessitatibus.', 'id', 8384, NULL, '1982-11-29 05:06:32', '1981-11-22 06:28:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '20', '92', 'Sunt eum laudantium et labore. Temporibus veniam illo id quia. Ad esse qui placeat et. Aut tempore eius perferendis tempora libero.', 'quaerat', 32077, NULL, '1997-10-18 21:39:30', '1974-09-30 15:03:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '14', '13', 'Labore distinctio deleniti rerum aut velit esse quia. Qui voluptatem sapiente eum reiciendis laborum doloremque qui sint. Repellendus consectetur eveniet mollitia molestiae enim error dolor. Accusamus veritatis vel officia fuga qui nam.', 'voluptatem', 3705, NULL, '1982-04-01 05:57:33', '1974-07-08 08:45:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '15', '47', 'Laudantium quae sit eum sed eum dolores consectetur. Voluptatem ullam adipisci aut non vel magnam. Vel laborum amet enim nihil molestiae quas. Ut autem voluptatem consequatur.', 'nam', 40964882, NULL, '2000-09-20 21:04:53', '1998-12-10 20:26:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '12', '85', 'Illo porro qui ex et in. Itaque eos expedita sunt eaque reprehenderit sint ab. Suscipit non blanditiis in architecto cum amet. Dolor enim et animi officia consequuntur.', 'quia', 15312, NULL, '1987-07-15 17:20:20', '1979-09-19 04:49:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '69', 'Facere asperiores facilis velit cupiditate enim. Animi nobis eos rerum ducimus eos tempora iure.', 'id', 732033, NULL, '1994-01-13 20:12:32', '1995-07-27 15:07:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '17', '30', 'Voluptatem tempore magni natus voluptas aperiam a et. Maiores consequatur tempora distinctio ut odio. Id qui quis maiores omnis sapiente.', 'recusandae', 24444, NULL, '2004-10-31 18:44:58', '1987-05-07 05:56:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '1', '75', 'In aut officiis impedit maxime. Aut dolores odit vel occaecati atque quidem. Repellendus voluptatem rerum quia cumque eos. Dolores aut aliquam tenetur perspiciatis porro consequatur nostrum.', 'nulla', 13050587, NULL, '1996-05-02 11:48:19', '1991-05-24 11:05:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '1', '52', 'Reprehenderit qui rerum nisi. Voluptatum accusamus excepturi reprehenderit omnis dolor. Quae error quia sit eos rem voluptatum.', 'ad', 232, NULL, '1982-01-07 00:59:13', '1974-06-07 09:44:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '12', '24', 'Et et eius blanditiis perspiciatis. Beatae eaque reiciendis quidem qui. Non et dolores voluptatem molestiae.', 'aut', 2865, NULL, '2005-04-10 23:01:12', '1972-05-15 06:11:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '16', '76', 'Perferendis qui reprehenderit eum nam. Quod quaerat voluptatum laudantium qui earum. Ut error labore ut rerum nihil hic.', 'iste', 98128697, NULL, '2017-01-23 01:34:11', '2016-12-29 10:51:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '14', '73', 'Occaecati consequuntur dolor rem et voluptatem et. Impedit sit et et. Et vel autem fugiat doloribus laudantium ut quia. Est numquam ut facere nam non vero qui vitae.', 'quidem', 738257662, NULL, '2014-11-28 23:59:59', '2013-10-27 00:17:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '10', '48', 'Corporis aut dignissimos earum est rerum natus. Consequatur omnis tempora ut porro provident fugiat odio. Unde laborum in voluptas laborum et.', 'ullam', 4504, NULL, '1972-10-11 23:28:00', '1973-05-21 22:47:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '3', '67', 'Eveniet ab repudiandae iste omnis quibusdam quidem accusantium numquam. Animi et omnis in impedit ipsum. Sint doloribus sint aut omnis debitis non. Sint blanditiis consequatur voluptas commodi nihil occaecati.', 'ducimus', 561, NULL, '1999-04-21 06:19:59', '2014-07-04 20:42:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '18', '73', 'Delectus id beatae sint. Sapiente nobis quam quae quo libero. Doloribus voluptate veritatis aut aut mollitia.', 'in', 5937, NULL, '2019-11-03 07:59:45', '1994-07-14 18:30:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '7', '16', 'Ullam rem expedita voluptatibus. Sit odit aut et eligendi unde officiis. Ut voluptate culpa in eaque mollitia. Perferendis ut beatae natus voluptatibus sed id.', 'delectus', 661518, NULL, '2003-12-29 12:13:35', '2000-11-11 16:17:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '12', '30', 'Et rerum minus tenetur provident. Porro molestiae debitis quia distinctio nihil. Quasi eveniet voluptas nulla et illo at quisquam.', 'ut', 88, NULL, '2005-12-22 08:23:22', '2000-09-07 08:44:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '2', '25', 'Quis voluptas quia et nulla odit. Facere voluptas recusandae eum et. Ut accusamus quia non provident blanditiis rerum necessitatibus.', 'ut', 2373, NULL, '2012-08-14 08:20:02', '2017-08-09 10:03:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '9', '82', 'Qui dicta laborum dolor in culpa accusantium numquam. Omnis aut qui ut fugiat quia minus commodi dolore.', 'ut', 6300, NULL, '1980-03-31 19:07:00', '1986-04-03 08:25:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '15', '2', 'Dolores quaerat sit aut maiores possimus ut voluptatum. Maxime temporibus molestiae omnis praesentium soluta est. Eaque sapiente perspiciatis nulla iste fuga corporis.', 'tempore', 4, NULL, '1976-06-22 12:17:03', '2015-05-30 05:43:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '14', '7', 'Eos quasi cumque voluptas. Repellat dolorem impedit quam sint.', 'nesciunt', 0, NULL, '2010-04-13 16:15:17', '1973-02-28 19:42:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '14', '52', 'Et impedit repellendus dolor qui itaque. Placeat laborum in accusamus corrupti. Sit in est ab a. Quia reiciendis delectus molestias sequi.', 'repellat', 127048, NULL, '2001-07-30 09:07:27', '2006-06-22 09:57:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '8', '73', 'Nostrum quia aliquid harum neque quasi vel esse asperiores. Vel libero eum soluta veniam inventore rerum rem sed. Expedita iusto corrupti dolores.', 'omnis', 835, NULL, '1972-12-23 18:08:47', '2006-11-01 16:42:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '6', '42', 'Eos culpa eum sunt qui. Et perspiciatis aut reprehenderit assumenda facere maxime reprehenderit. Esse vero inventore aut similique ut qui. Sit voluptatem voluptates sed et.', 'perspiciatis', 9, NULL, '1984-07-15 01:22:33', '1983-05-31 15:10:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '5', '82', 'Nobis eum et eaque eveniet et. Consequatur enim deserunt ducimus in facere suscipit voluptatum ducimus.', 'minima', 768526, NULL, '1991-04-17 09:52:20', '2002-06-17 18:48:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '13', '3', 'Consequatur autem non odit molestias. Ipsum beatae consequuntur sapiente quia nihil quisquam saepe. Ipsum omnis odit officiis consequuntur. Dolores ratione eos qui.', 'placeat', 543715, NULL, '1976-09-17 05:10:21', '1992-07-15 05:43:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '12', '33', 'Eos maiores aut impedit qui deleniti. Voluptatibus tempora aut non eaque. Optio dolore est rerum ullam. Est animi ut et non sit.', 'assumenda', 70, NULL, '1989-06-27 23:27:30', '1980-07-15 07:50:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '16', '8', 'Maxime doloremque dignissimos corrupti culpa. Est dolorum minus vel rem. Est fugit placeat et dignissimos autem ipsum. Velit sit totam voluptatem ipsum praesentium.', 'quisquam', 87594, NULL, '1970-02-25 19:38:12', '2006-04-25 08:59:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '17', '88', 'Unde deleniti architecto officia impedit. Reiciendis et aperiam corrupti commodi et deserunt.', 'consequuntur', 537, NULL, '1972-10-27 09:22:42', '2002-10-07 10:39:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '15', '69', 'Nam temporibus enim officia quia. Iusto qui ipsam qui sint voluptatem nesciunt sint. Cumque distinctio aliquam nisi et.', 'a', 426044, NULL, '1990-06-16 00:11:23', '1993-09-29 18:10:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '13', '6', 'Iusto dolorem optio expedita quia laborum sit. Amet magni earum quaerat. Exercitationem voluptates corrupti corporis quia laudantium voluptates dolores.', 'enim', 22227, NULL, '2004-06-23 14:37:25', '2003-12-29 07:54:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '17', '18', 'Et magnam asperiores modi ex porro tempore accusamus sit. Iste quia ut aut laborum. Ex qui quo est saepe.', 'ab', 875, NULL, '2012-06-29 13:08:18', '2000-12-01 13:11:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '8', '92', 'Ea modi error atque voluptas. Corrupti eaque nihil et a. Illo accusamus odit quidem voluptas possimus perspiciatis repudiandae debitis.', 'eaque', 131227, NULL, '1975-08-15 10:43:18', '1991-06-05 13:52:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '9', '78', 'Ratione ex voluptatem officiis error totam. Adipisci non alias placeat perferendis aut eos. Laboriosam est iure eius delectus ea.', 'repellat', 80, NULL, '1994-04-03 18:26:36', '1972-01-10 06:35:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '15', '13', 'Exercitationem nesciunt esse recusandae alias numquam. Nihil sit ut reprehenderit non corporis ea. Aut deserunt quaerat est rerum vitae repellat. Quasi sequi iure aperiam. Voluptas cupiditate porro sapiente odit velit aut dolore.', 'enim', 4714876, NULL, '2008-05-24 03:36:08', '1984-07-30 11:02:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '16', '40', 'Molestiae laboriosam et velit quia ipsam. Sint delectus consequatur ad fugiat commodi commodi voluptatum. Libero repellat fuga et.', 'consequatur', 0, NULL, '1993-03-19 21:21:45', '1986-10-19 12:59:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '4', '50', 'Maiores beatae quas dolor enim delectus quia voluptatem vitae. Ipsum veniam porro est id harum. Unde quis corrupti et perspiciatis. Omnis deserunt autem molestiae sed magni delectus. Mollitia eius et quisquam officia velit ab.', 'sint', 945016, NULL, '1973-01-30 13:30:43', '1992-05-07 12:25:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '19', '57', 'Delectus nostrum ea debitis alias. Perferendis aliquam ut non est dignissimos. Eius dolorem sapiente qui eligendi qui. Hic odit quasi eum animi nemo quo. Debitis aliquid voluptates doloremque est minima consequatur.', 'asperiores', 7593, NULL, '2020-04-08 16:01:24', '1978-08-23 00:44:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '5', '17', 'Consequuntur perferendis animi molestias est qui voluptate. Quisquam cupiditate qui cupiditate possimus repellat. Rerum minima laboriosam modi non.', 'autem', 8689, NULL, '1976-10-26 05:42:46', '1980-10-01 20:57:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '20', '47', 'Qui id et non est nisi accusamus. Vel dolore nihil nihil iste. Quam qui deserunt sint dolore tempore provident assumenda. Aut harum aspernatur deserunt qui distinctio.', 'quibusdam', 37630, NULL, '2010-02-01 23:58:24', '1980-05-02 15:49:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '20', '63', 'Labore perferendis et ut sed eum voluptas. Dolorem dolores id eius illum rem consequatur asperiores. Architecto qui molestiae quod voluptatibus magnam vitae. Dicta nobis veritatis architecto sint dolorem. Ad eos et atque odio temporibus.', 'eaque', 260, NULL, '2019-11-23 18:17:32', '2018-04-17 15:50:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '10', '57', 'Qui ut est praesentium quo vel. Sed fugiat laboriosam non in et suscipit aut adipisci. Deleniti sit hic aperiam.', 'cupiditate', 26474710, NULL, '1979-08-03 17:10:26', '2017-09-23 11:02:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '20', '25', 'Officia nostrum quis nesciunt iste ut ipsum earum. Sapiente rerum odio explicabo nulla vel non. Est totam non ut mollitia deserunt distinctio impedit. Exercitationem iusto quas explicabo distinctio nulla voluptatum est.', 'facere', 956, NULL, '1994-03-14 11:07:22', '2015-10-09 03:40:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '13', '76', 'Possimus eos enim tempore dolor sunt dolor aut repellendus. Maiores quam est hic. Ea totam consectetur optio cum.', 'minus', 9650370, NULL, '2003-10-10 06:12:39', '2017-12-19 08:45:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '3', '38', 'Non dolorem debitis rem accusantium nam dolorem. Nobis quisquam debitis cumque earum nulla nostrum accusamus. Veniam autem necessitatibus est.', 'sit', 9035, NULL, '2015-04-19 14:03:54', '1995-04-27 15:50:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '9', '73', 'In sapiente atque similique error iste ad. Sit voluptatem optio quae placeat odit. Culpa totam assumenda sit ut voluptatibus laboriosam. Officiis a est laborum veritatis sunt voluptatem eaque. Debitis ut perferendis autem qui voluptatum nesciunt ut atque.', 'qui', 0, NULL, '1992-05-06 06:27:03', '2001-11-06 23:06:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '9', '29', 'Ea sed quia reiciendis atque porro. Quos molestiae sit dolorum porro voluptates quis. Expedita vel exercitationem vel quo possimus possimus. Excepturi dolore similique rem quidem.', 'odit', 0, NULL, '2017-02-23 04:39:03', '2004-11-18 20:48:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '18', '79', 'Aut inventore amet iure est sed minus laboriosam. Commodi saepe quia magni et sint doloremque dolorum. Aut illo laudantium repudiandae distinctio. Quod quidem sint aliquid magnam.', 'tempore', 538323418, NULL, '1987-11-28 10:42:06', '2016-08-27 08:45:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '5', '32', 'Ea occaecati et et. Ad enim voluptatibus cumque ducimus et quidem. Ratione dolorem aut quaerat in aut autem. Voluptas dolore at soluta est dolorum laudantium in velit.', 'rerum', 9610554, NULL, '2006-01-03 06:25:32', '2014-08-26 03:28:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '12', '95', 'Quis debitis enim magni. Molestias quasi dolores corporis. Id ipsam qui velit quis est.', 'consequatur', 5817, NULL, '2012-10-20 23:12:45', '1971-06-24 16:04:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '9', '35', 'Odit dignissimos eaque omnis quod at nesciunt fuga. Unde molestiae facilis nam debitis. Iure ipsum consequatur tempore maxime aut perferendis.', 'earum', 0, NULL, '2017-07-24 16:09:55', '2007-02-01 05:09:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '7', '64', 'Voluptas excepturi amet consequatur et saepe. Sunt nam facilis voluptatibus dolorem. Odit suscipit hic iusto dolore maiores ut. Error velit vel ut id.', 'et', 0, NULL, '1991-03-18 07:18:09', '2005-04-16 07:29:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '17', '26', 'Non quod at et qui asperiores iusto optio exercitationem. Iure non nihil consectetur quia ut. Eaque reprehenderit sunt consequatur molestias adipisci ut amet.', 'doloribus', 2872, NULL, '1995-02-27 13:03:54', '1995-06-18 07:10:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '5', '6', 'Nam quas sequi neque dignissimos. Dicta veritatis ipsam sint sit explicabo occaecati. Aut harum quis sint autem veritatis.', 'incidunt', 0, NULL, '1996-03-08 07:52:25', '2008-11-15 10:34:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '9', '19', 'Qui earum in et odit vero laudantium voluptates sed. Enim architecto occaecati doloremque. Qui quisquam esse omnis deserunt ut.', 'pariatur', 9, NULL, '2014-02-25 06:30:30', '2013-01-28 11:37:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '11', '42', 'Accusantium aut sunt consequuntur ea dolore delectus. Voluptatum qui facilis voluptatem nostrum ratione ipsa unde fugit. Magni laborum aliquam dolores eius non. Et est aperiam adipisci voluptatem et aut sunt.', 'labore', 31894, NULL, '1986-11-18 14:51:06', '1997-06-01 14:37:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '17', '1', 'Esse nobis provident illum sequi excepturi nihil voluptas. Consequatur qui dolore quod deleniti nulla harum praesentium iste. Impedit dignissimos impedit officiis.', 'laboriosam', 0, NULL, '1978-10-31 19:26:20', '1989-07-03 15:44:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '20', '76', 'Excepturi rem aut aut doloremque. Quisquam ut laboriosam harum unde laborum sequi. A nihil aut eos illum dolores est.', 'rerum', 8037, NULL, '1979-10-26 06:02:08', '2018-11-16 10:54:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '6', '63', 'Id ipsum omnis qui praesentium occaecati. Velit minima quo omnis velit aut blanditiis doloribus. Aliquam optio hic incidunt eum magnam et. Non quos magnam enim.', 'omnis', 601, NULL, '2020-02-01 15:22:56', '1983-10-18 17:55:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '11', '38', 'Beatae dignissimos dolorum laboriosam iusto. Ipsam facere molestiae quia velit. Consequatur magnam repudiandae deleniti.', 'ut', 6834, NULL, '2015-06-16 05:59:15', '1979-11-10 13:31:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '20', '96', 'Totam ab veniam provident minus et sunt sint. Ut ipsa sunt odio eveniet voluptatem molestiae neque. Nulla repudiandae ut rerum hic quaerat architecto consectetur dolorem. In qui similique est necessitatibus non non voluptatem consectetur.', 'id', 702, NULL, '1981-11-18 00:38:45', '1971-01-30 22:47:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '2', '43', 'Quia omnis culpa facere aut quas ut. Inventore vel aut sed ut.', 'sed', 2776, NULL, '2004-02-24 08:20:25', '2019-11-22 11:35:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '5', '99', 'Aperiam rerum omnis voluptate dolores reprehenderit accusantium quia. Laudantium omnis officiis qui corporis ullam ea. Aut adipisci culpa doloremque sed sit ipsum.', 'sit', 7, NULL, '2014-03-13 19:49:55', '1984-01-22 09:08:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '5', '46', 'Fugiat corrupti eius placeat quia qui. Autem rerum dolores est voluptatum. Tenetur impedit ipsam amet dolorum ipsam illo.', 'voluptate', 888, NULL, '2006-03-09 17:35:43', '1974-11-27 10:11:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '7', '77', 'Qui ut sed quia libero error qui. Est eveniet nihil exercitationem nam. Soluta vitae totam voluptas accusantium voluptas beatae.', 'natus', 43578, NULL, '2003-05-07 11:04:33', '2018-05-03 23:05:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '8', '75', 'Doloribus aliquid numquam ipsa quia. Tempore rerum libero sit dicta distinctio ipsam. Quam et modi iste et laudantium recusandae illum. Unde molestiae maxime iure quidem sed quasi.', 'ab', 778068017, NULL, '2006-03-15 17:05:40', '1970-05-14 04:55:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '3', '74', 'Qui quam vel sed voluptatem commodi a. Veniam iste sed voluptatem quo iusto aut atque natus. Soluta delectus repudiandae quae. Nesciunt repudiandae molestias ea maxime autem error.', 'delectus', 496, NULL, '1989-12-28 13:12:59', '1997-09-26 13:08:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '8', '96', 'Sint laborum natus nulla quis commodi voluptatibus quisquam. Commodi qui eveniet exercitationem tenetur cum.', 'ullam', 869, NULL, '1987-01-23 18:33:00', '2005-02-27 13:11:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '20', '60', 'Illo vitae laborum repellendus adipisci maxime aspernatur. Itaque molestias aspernatur illo deleniti molestiae. Laboriosam consequatur natus minima consequatur animi excepturi et est.', 'porro', 21083077, NULL, '2012-02-29 17:28:55', '2000-12-13 19:51:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '1', '42', 'Vel sint accusantium dolore illo occaecati consequatur. Saepe voluptatibus rerum voluptas rem veritatis aut.', 'velit', 749534765, NULL, '2000-07-31 18:02:14', '1993-07-19 02:23:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '16', '54', 'Et vero et non voluptas velit. Voluptates tempora laboriosam dolore omnis.', 'alias', 0, NULL, '2001-11-07 16:13:53', '2020-03-28 22:52:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '17', '59', 'Sint velit ea numquam quis ducimus aspernatur. Ab laborum aliquid ad. Perspiciatis reiciendis impedit ipsa dicta. Eos et voluptate numquam veritatis eaque inventore eos.', 'unde', 12328881, NULL, '1998-02-20 13:31:08', '2016-12-20 04:18:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '11', '81', 'Doloremque est vero ipsa sit. Dolor dolorum voluptatem perferendis neque et dignissimos recusandae. Doloribus expedita ea ad ut.', 'aperiam', 61507, NULL, '1984-09-14 13:12:33', '2018-09-19 22:31:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '7', '80', 'Iste et corporis tempore. Quas et expedita quo est est ex in. Et voluptates vel voluptas voluptatibus.', 'qui', 38, NULL, '2007-05-10 06:41:40', '1979-01-01 23:37:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '9', '86', 'Doloribus doloremque eaque saepe exercitationem beatae sapiente. Velit quo quo sit. Et reprehenderit consequatur eveniet illo.', 'omnis', 416, NULL, '1991-05-27 21:35:20', '2004-12-15 07:45:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '4', '42', 'Iste voluptas blanditiis ex quod aut nulla. Blanditiis incidunt dicta et cum aut. Voluptatem nemo qui saepe. Placeat eius sunt corporis praesentium laboriosam nihil.', 'officia', 509610, NULL, '1986-06-09 06:28:49', '1975-04-17 20:47:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '17', '26', 'Dolore aut at aut mollitia reprehenderit dolor. Pariatur voluptatem quam aliquam. Non alias hic vel et.', 'ut', 6, NULL, '1993-03-15 05:25:37', '1998-07-05 04:22:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '17', '6', 'Numquam est vero tempore itaque velit rerum neque. Et eos at odio dolorum corrupti. Totam est expedita consequuntur non temporibus corporis.', 'atque', 3, NULL, '1992-02-02 01:26:34', '1979-01-27 07:50:13');


DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
  	body_post text,
    metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
) ;

INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '29', 'Rerum id rerum omnis quia rerum quidem laborum. Qui modi et hic et sit placeat excepturi qui. Nobis quia cum aperiam ut laudantium.', NULL, '1985-04-27 11:17:51', '2001-05-21 14:14:33');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '60', 'Vero sit esse architecto quibusdam voluptas minima voluptate et. Fuga est rem exercitationem dolor. Est vel qui hic officiis ea voluptas. Totam omnis quia aperiam sed ullam et. Quisquam odit eius et dolorum aut aliquid.', NULL, '1981-06-13 08:19:51', '1974-10-06 21:06:07');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '70', 'Sapiente non itaque et exercitationem velit. Accusantium rerum aut et saepe explicabo sed. Culpa eum blanditiis earum eaque voluptatem.', NULL, '1971-08-26 14:13:02', '1974-04-03 19:54:22');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '99', 'Et veritatis facere sint ut rerum. Tempora iure dolore quia dolor mollitia quis repellat veniam. Animi modi similique sit assumenda. Quaerat magni est dicta maiores.', NULL, '1988-08-24 05:43:27', '2015-06-23 12:28:41');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '68', 'Rerum est officiis fugit nemo. Necessitatibus quod qui atque quo dolores. Ab fuga est quia eum dolorum corporis aut dolore.', NULL, '2000-10-25 15:41:05', '1981-02-25 04:07:15');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '12', 'Incidunt incidunt est tempora inventore molestiae possimus architecto earum. Praesentium ut molestiae rem quidem voluptatem officiis ducimus.', NULL, '2012-08-21 21:26:32', '2015-04-02 23:01:57');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '90', 'Eveniet vel nobis sed ut est ea. Soluta voluptas et molestiae.', NULL, '1970-03-27 04:59:21', '2004-07-07 18:56:39');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '62', 'Nihil at quam aut. Ad eos sed perferendis labore. Accusamus voluptates voluptas voluptate et quas ullam excepturi.', NULL, '2004-07-28 01:52:36', '2000-01-17 08:08:47');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '89', 'Consequuntur impedit incidunt deserunt eveniet esse. Ipsum quaerat quam vitae sunt adipisci. Et aut vero non repellat.', NULL, '1988-02-12 10:11:20', '2012-02-23 22:52:19');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '61', 'Vitae iste est molestiae id et. Cupiditate ut unde ut ut explicabo cum. Consequatur non aliquid cupiditate ut. Nesciunt qui at rerum necessitatibus natus eveniet.', NULL, '1976-11-07 22:27:25', '1995-03-10 03:09:42');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '87', 'Sit doloribus praesentium ut a. Qui distinctio magni maiores alias eos fuga. Amet sunt quam veritatis voluptates et dicta veritatis.', NULL, '2005-05-02 23:59:56', '2006-01-28 17:45:38');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '37', 'Recusandae minima reprehenderit odit expedita officia. Aut aut explicabo similique in neque. Enim molestiae earum modi libero. Eos in minima sit rerum quo porro temporibus.', NULL, '2010-03-19 13:51:22', '2001-05-28 01:04:16');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '64', 'Quis ipsa autem culpa voluptatem sapiente dolor aut. Error sunt minima tempora. Numquam et et repellendus molestiae distinctio corrupti.', NULL, '2000-02-07 13:15:27', '1999-12-19 15:06:31');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '88', 'Deserunt iusto alias possimus voluptate. Vero exercitationem nisi consectetur vero vitae modi. Necessitatibus sequi consequuntur asperiores est maxime. Eius ipsam assumenda tempora animi. Sint et aspernatur dolore rerum.', NULL, '2005-03-21 23:10:31', '2019-01-19 11:42:02');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '69', 'Voluptas quaerat minima dolores veniam. Et sunt eligendi laboriosam explicabo quia perferendis. Quia est modi nostrum rem voluptatum. Nesciunt consequuntur esse fugiat asperiores voluptates ut commodi aliquid. Voluptatem velit ab nemo quas maxime dicta.', NULL, '1992-01-11 21:40:08', '1978-11-20 04:56:32');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '95', 'Impedit illum eaque asperiores sed soluta. Unde voluptatem soluta ea eum eius. Quia quos et aut magni ipsum suscipit ut. Qui harum ducimus animi dicta incidunt explicabo.', NULL, '1986-12-29 21:37:27', '1995-04-14 03:45:49');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '75', 'Nesciunt aut aspernatur distinctio quas soluta officiis nihil. Dolor et voluptates magni dolores dolor facilis fugit enim. Exercitationem assumenda consequatur voluptatibus odio et. Molestiae est officiis harum alias rem commodi incidunt. Saepe omnis eos enim.', NULL, '2014-08-04 15:24:07', '1995-11-18 22:04:28');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '34', 'Est ab expedita sed rerum ut. Error accusamus sapiente eum aliquam accusantium esse laborum reprehenderit. Voluptatem modi necessitatibus optio numquam rerum veniam cupiditate maiores.', NULL, '1975-02-25 09:02:55', '2000-06-10 05:41:16');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '99', 'Earum saepe enim molestias nam laboriosam. Illum laboriosam laboriosam et aliquid quia aut quia quos. Laudantium ab voluptatibus et eos aut.', NULL, '1991-04-22 18:32:40', '1977-02-03 22:43:48');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '66', 'Dolorem itaque ducimus quia qui deserunt veritatis. Id doloribus optio eos itaque. Omnis consequatur labore et sequi accusamus dolore ullam doloremque. Est magni ducimus et aut ad. Recusandae omnis voluptatem doloremque molestiae quas.', NULL, '1981-04-02 09:42:49', '2003-03-23 13:16:19');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '85', 'Doloremque quia tempore consequatur. Harum earum velit itaque rerum magnam. Magni modi enim et dolorum quisquam et perspiciatis. Ratione minima dolore optio explicabo.', NULL, '1991-09-19 13:44:02', '1977-11-26 07:55:18');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '97', 'Vero voluptas occaecati hic enim et id modi. Dolor neque rerum consequatur assumenda. Facilis qui quibusdam minima corporis ipsum porro.', NULL, '1990-06-06 14:33:40', '1977-07-18 21:29:57');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '71', 'Consequuntur reiciendis iusto est adipisci. Laudantium enim saepe ut necessitatibus quia impedit inventore. Beatae expedita ea dicta nihil eligendi.', NULL, '2004-04-25 06:15:32', '2015-01-14 18:44:51');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '62', 'Libero iste beatae consequatur dicta in mollitia ut nostrum. Et et sed quis sed eligendi quos. Aut harum occaecati voluptatum dolor ipsa sint. Nihil soluta aut quasi corporis.', NULL, '2017-08-07 13:25:00', '1977-06-02 03:11:31');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '92', 'Qui facilis ut nisi corrupti dolores et minus quasi. At vel distinctio et soluta magni non. Explicabo ullam aspernatur ab cumque atque ut dolores rerum.', NULL, '1970-11-12 02:37:47', '2015-06-24 23:02:25');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '7', 'Eius numquam consequatur necessitatibus veritatis autem. Velit molestiae id et modi incidunt est.', NULL, '1993-07-07 05:54:59', '2015-01-12 15:21:08');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '76', 'Ut non voluptatum est. Optio vero iste eum earum facilis. Tenetur labore quia reprehenderit eum dignissimos dicta tempore.', NULL, '1984-11-25 16:06:23', '2015-03-09 05:48:30');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '88', 'Tempore iure ut nostrum possimus. Officiis necessitatibus est minima. Ut eum error perferendis. Fugit est provident quia consequuntur dolore. Laborum nulla quis modi est nam eos.', NULL, '2008-04-09 23:31:06', '2008-05-05 14:59:48');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '52', 'Iure aut libero aut autem voluptatibus ex quidem. Corporis eligendi dolore dolore molestiae et sunt. Mollitia et quibusdam maxime voluptates. Quasi ut ipsum non dolor quam ut. Cum perspiciatis odit optio cumque et a hic.', NULL, '1980-07-26 16:50:39', '1997-01-09 04:59:23');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '91', 'Perspiciatis officiis et aut repudiandae itaque vitae non. Eveniet deleniti ipsa ut voluptates est aut. Libero sed aut sed consequatur voluptates non est. Omnis quia magni minus quas.', NULL, '1989-08-03 01:44:18', '1984-03-17 01:35:55');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '88', 'Et et iusto illo in qui nisi mollitia. Totam officiis voluptatem qui tenetur aut omnis sed. Sequi delectus fugit illo praesentium sunt ea ratione. Quidem sapiente eum ut voluptatem nostrum qui.', NULL, '2002-05-20 11:49:45', '1993-05-14 16:32:15');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '81', 'Qui et autem eum voluptatem assumenda. Voluptatem eius animi laboriosam odio ratione. Eius atque consectetur mollitia non. Porro esse quibusdam omnis atque est.', NULL, '1997-02-20 04:24:59', '1979-02-24 12:17:24');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '50', 'Similique quis rerum est dolores quidem eum quia. Iste molestiae dolores maxime. Adipisci eveniet assumenda minima voluptatum et.', NULL, '2020-01-22 07:02:25', '1989-05-15 08:44:53');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '57', 'Natus necessitatibus expedita eaque. Earum esse quos modi culpa. Harum praesentium in quo est eos et repellat.', NULL, '1978-10-02 03:01:53', '1971-09-30 17:23:42');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '79', 'Voluptas mollitia placeat velit rerum consectetur commodi est. Reprehenderit adipisci laborum itaque delectus. Voluptatem a porro explicabo velit et.', NULL, '1998-07-09 01:37:32', '1974-11-04 01:53:56');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '18', 'Provident laborum molestiae et dicta. Vero consequatur iusto quaerat incidunt. Ducimus et accusamus nihil cum voluptatem. Dolore adipisci sint et nihil aspernatur commodi voluptatibus.', NULL, '1997-08-30 16:44:16', '1978-05-16 12:22:53');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '68', 'Laboriosam quo dolor est qui explicabo repellat a. Voluptas consequatur culpa quia quo ea maxime laborum accusantium. Harum praesentium officia earum.', NULL, '2000-12-24 13:15:33', '2007-06-08 19:57:11');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '68', 'Et provident mollitia molestiae qui est voluptates accusamus. Dolorum quo quia ipsa iste ut. Dolorem ut doloremque deserunt aut aut veritatis tenetur. Quasi provident suscipit et inventore soluta est nesciunt suscipit. Harum quae rerum quod harum ratione nihil aut.', NULL, '1989-10-04 18:31:07', '1977-06-09 04:06:56');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '79', 'Magni id expedita rerum maxime omnis hic. Consequatur quae natus aut tenetur voluptate temporibus. Sed quia necessitatibus dolorum autem laboriosam maiores sed.', NULL, '1973-05-24 08:33:29', '1971-06-10 13:06:39');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '57', 'Alias voluptas ab in consequuntur mollitia. Ab fuga nam et. Et sunt totam eos cupiditate provident odit reprehenderit. Ad rerum repellendus praesentium numquam consequatur consequatur.', NULL, '1993-08-13 08:52:33', '1982-10-16 09:56:23');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '29', 'Sit nisi mollitia rem et. Et dolorem expedita a aut ut id dignissimos. Sit ipsam aliquid ut omnis omnis.', NULL, '2015-11-28 08:03:31', '1992-10-16 04:48:50');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '66', 'Eos consectetur pariatur est aut sed molestiae aliquam saepe. Quia nemo ut architecto temporibus inventore. Sit incidunt non aperiam laudantium. Et dignissimos beatae quas nesciunt excepturi tempora tempora.', NULL, '2001-10-07 19:12:57', '1974-10-11 02:24:30');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '94', 'Eum quae doloremque sint consequatur distinctio iste. Dolorum facilis in aliquam iure aut vitae. Vero quia suscipit quo iusto aliquam.', NULL, '1973-10-08 03:12:11', '2018-09-12 20:22:24');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '92', 'Voluptatem eveniet est qui qui sit. Non nemo maxime aperiam voluptatem et.', NULL, '1991-12-24 04:09:34', '2008-02-06 21:32:32');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '53', 'At impedit minus quo dolores. Quaerat autem impedit dolorem nemo. Aut numquam adipisci excepturi aliquid placeat sunt. A id enim adipisci fugiat.', NULL, '2002-05-04 17:02:18', '2019-03-11 03:15:37');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '62', 'Libero sit quod enim fugiat hic. Voluptatem voluptatem consequuntur aperiam amet cumque sint. Suscipit quo voluptatem laborum aliquid. Rerum quis quia animi labore recusandae ut.', NULL, '1971-01-10 20:25:30', '2014-03-10 11:46:35');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '86', 'Cumque itaque nesciunt quos et dicta earum totam unde. Quia in voluptate iusto et eius consequuntur quia. Ut corrupti velit culpa earum dignissimos.', NULL, '2010-05-20 17:21:27', '1976-03-01 09:48:55');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '28', 'Modi et cupiditate aspernatur tenetur. Ex cupiditate et voluptate non. Culpa voluptas autem vel consectetur voluptatum perspiciatis quas. Ut eligendi dolorem sed aliquid rem consequatur.', NULL, '1990-02-12 14:45:58', '2008-01-23 11:23:56');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '95', 'Omnis dolor ut molestiae sint. Dolor tenetur sed et possimus corrupti consequatur iure iure. Distinctio sit recusandae cum ipsa dolorem a odio. Dolores est dolor nesciunt occaecati. Harum nobis est velit minus in ipsa.', NULL, '1997-10-14 04:28:25', '2010-05-28 17:19:53');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '85', 'Quibusdam praesentium quasi repellat et eum. Et nobis voluptate dignissimos dolorem provident voluptatibus. Eos quo iste repellendus omnis minus libero. Quae doloremque voluptatem sed.', NULL, '1997-03-12 01:39:21', '2000-07-01 09:57:30');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '94', 'Eum sed recusandae voluptatem. Cum consequatur voluptatum eligendi qui vitae voluptate minima. Qui esse sapiente facere eaque velit id.', NULL, '1999-12-18 09:46:14', '1978-04-05 07:41:35');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '79', 'Placeat et fugit est necessitatibus aut optio. Ut veritatis praesentium dolores delectus. Tempore mollitia error quam eum ut.', NULL, '1998-07-11 14:44:21', '1996-07-13 04:59:27');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '82', 'Ut laborum dolores magnam unde quaerat tempore. Porro consectetur nihil eum aut qui repellat. Iusto consequatur tempore culpa eos. Dolor reprehenderit vitae quos recusandae.', NULL, '2006-10-22 01:24:29', '2000-03-04 05:10:16');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '64', 'Qui error amet non numquam ipsa accusamus ratione. Nostrum quia harum dignissimos ut facilis vel. Vitae quis vero amet occaecati mollitia.', NULL, '2000-01-07 17:37:55', '2018-08-25 04:57:38');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '41', 'Nam occaecati inventore nisi ut. Quisquam distinctio sed est eum facilis. Voluptatem nesciunt dicta neque tenetur quaerat nulla non. Sed reprehenderit eos fuga voluptates dolores voluptas. Rerum culpa est velit ex provident nemo.', NULL, '1981-07-28 02:02:56', '2017-07-08 05:04:39');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '73', 'Sint sit rerum ut et aut pariatur ut nemo. Dolores hic et ut praesentium et. Explicabo qui distinctio quia minus modi placeat ut eum. Id fugit rerum est non nulla vero ut.', NULL, '1974-04-07 14:06:58', '1979-05-04 16:43:13');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '71', 'Illo error quibusdam possimus illum accusamus. Sed harum sed voluptate. Assumenda molestiae excepturi consequatur et. Quos consequuntur nisi eum distinctio ut sed reprehenderit sunt.', NULL, '1989-04-10 15:01:20', '2007-11-22 00:40:32');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '16', 'Suscipit aut voluptatem aut occaecati nesciunt voluptatem qui et. Totam repellendus dolores fugit laboriosam. Dolorum nesciunt amet dolorem nobis repudiandae et eaque.', NULL, '2009-05-11 20:45:38', '2005-04-11 16:21:12');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '61', 'Voluptatem dicta ut reiciendis unde eum voluptas nihil perspiciatis. Facilis sequi ipsum consectetur error commodi iure sunt. Ullam cupiditate sint occaecati unde asperiores dolore quibusdam.', NULL, '1973-02-28 00:53:38', '2019-12-13 23:11:04');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '22', 'Non et inventore est eos. Aperiam suscipit totam sit odio. Reiciendis qui quo quo numquam omnis quam error voluptas.', NULL, '2012-02-04 20:21:33', '1976-03-09 05:05:33');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '7', 'Quia distinctio nesciunt ab voluptatibus aut. Accusantium modi quidem molestiae quia est et ut. Nulla et distinctio mollitia dolorem quibusdam voluptas voluptate. Dolores quidem est enim reiciendis.', NULL, '2013-06-22 23:30:23', '2009-03-05 10:25:57');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '49', 'Sit rerum molestias rem quis deserunt dolore earum rerum. Nulla aut praesentium aut quod fugit dolores omnis.', NULL, '1992-04-28 21:25:19', '1988-10-15 02:37:15');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '2', 'Animi dolorem earum omnis aut quae quas consequuntur omnis. Est molestias nisi placeat necessitatibus temporibus et sequi. Qui deleniti aut quae sed mollitia.', NULL, '2002-01-26 08:45:43', '2019-03-02 22:49:00');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '56', 'Aut facere ad cupiditate qui iste architecto ea. Ipsum ea nemo rerum est rerum omnis. Natus est voluptas consequatur nihil voluptas.', NULL, '2007-05-21 20:46:44', '2019-03-07 15:25:24');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '6', 'Ipsa illum nulla vitae numquam ut unde sit. Exercitationem occaecati suscipit sint. Reprehenderit et eveniet aut perferendis eaque dicta. Atque qui explicabo enim qui at cum.', NULL, '1992-08-02 04:28:46', '2005-12-26 09:31:07');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '81', 'Et beatae pariatur corrupti. Culpa culpa ut laborum non ratione sit repudiandae. Nesciunt facilis aliquid quis facere nulla est. Magnam voluptates magnam veniam omnis.', NULL, '1996-06-16 01:12:14', '1978-08-07 19:03:54');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '74', 'Distinctio voluptatibus sit amet et. Architecto quis tempore cum quas quis. Ut accusantium ut cupiditate culpa esse quod.', NULL, '1995-07-31 01:00:23', '2012-10-01 02:34:54');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '73', 'Pariatur labore id nihil et earum eos animi. Exercitationem voluptate ut explicabo ea laboriosam quae. Vel quidem harum nulla sapiente.', NULL, '2017-04-12 06:24:59', '2009-09-24 03:09:10');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '49', 'Labore corporis dignissimos id ut aut omnis voluptas. Numquam quaerat odio libero saepe. Laborum sit numquam veritatis. Earum sit velit rerum quo autem dolore. Adipisci possimus non nihil dolorem numquam eum.', NULL, '2011-07-03 04:39:31', '1973-12-25 00:57:13');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '53', 'Magnam eos beatae ducimus non ut consectetur. Sed similique sed ad possimus mollitia exercitationem laudantium. Dolores enim rem qui magni iure. Occaecati tempore eligendi deleniti harum ea nemo omnis.', NULL, '1988-07-23 08:35:28', '2000-07-06 15:43:43');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '30', 'Accusamus molestiae ratione aut ut consequatur. Quia molestias aut laudantium et. Et quod impedit delectus aut dolore aut. Officia similique quos ipsa eum ex illum dolorum.', NULL, '2009-10-01 17:46:41', '1987-06-17 07:26:28');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '77', 'Dolor delectus doloremque sit eum. Modi odit molestiae ducimus et exercitationem. Ab aut in esse eligendi.', NULL, '1978-07-08 15:10:35', '1986-04-26 23:02:05');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '18', 'Et facilis dolorum quia et ab. Et libero totam nulla molestias blanditiis doloremque. Suscipit voluptatem eos distinctio hic dolorum accusantium praesentium neque. Quia aut velit dolor autem aliquam itaque eos.', NULL, '2003-02-11 18:20:26', '1981-06-29 07:41:23');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '23', 'Aliquid veniam fuga iure nesciunt. Vel maxime soluta delectus voluptas quis. Nemo earum repellat sit et qui ut dolorem.', NULL, '1984-09-19 17:44:42', '1992-04-21 23:48:11');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '68', 'Eum harum natus nisi et officia. Totam fugiat explicabo repudiandae voluptates et et accusamus. Deleniti blanditiis aperiam nihil reiciendis. Odit et tenetur consequatur est veritatis.', NULL, '2017-11-17 00:08:36', '1999-05-15 06:29:23');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '71', 'Ratione facere et voluptatem in. Et aut praesentium praesentium. Deserunt molestias asperiores ea reiciendis totam. Quia molestiae vel consequatur vero.', NULL, '2015-01-14 04:05:27', '1991-04-24 18:12:20');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '85', 'Laudantium consequuntur accusamus ea fuga. Ipsam modi ex vel eaque. Repellat voluptates quam voluptatem.', NULL, '1977-05-11 14:57:06', '1985-12-02 02:33:53');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '54', 'Porro saepe tempora corporis. Cumque necessitatibus sint placeat dolor nisi sit molestiae maiores. Alias consequatur natus commodi in.', NULL, '2012-05-24 22:54:10', '1976-09-27 00:27:21');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '99', 'Voluptatibus delectus autem porro doloremque qui. Reiciendis ipsa voluptatibus excepturi qui sequi. Vitae vitae magni quis quod quo velit impedit sint.', NULL, '1992-12-09 13:41:48', '2004-04-13 07:21:45');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '80', 'Non dolorem sunt aut ullam soluta. Doloribus dicta iusto qui est. Iusto quam delectus iure beatae.', NULL, '1988-09-28 20:35:15', '1971-02-25 11:18:42');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '39', 'Fugit autem cum voluptatum numquam. Vel odio et qui minima facere delectus.', NULL, '1970-12-29 15:02:46', '2002-12-09 00:05:55');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '92', 'Eum temporibus necessitatibus illum tenetur cumque minus quia vero. Tempora et accusantium voluptas nostrum. Alias molestiae quia repellendus repudiandae asperiores rerum accusamus. Aut blanditiis quia exercitationem consequatur. Magnam voluptatem quam laborum autem sapiente porro aut.', NULL, '2006-01-04 15:48:40', '2002-10-08 05:03:06');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '58', 'Earum velit aut cum necessitatibus ut. Cum ut cupiditate dicta distinctio accusamus modi. Aut cupiditate doloribus rerum esse.', NULL, '1992-07-28 14:51:35', '1978-09-22 10:42:11');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '20', 'Rem eveniet blanditiis et consequuntur. Voluptate et mollitia numquam sunt qui eum. Occaecati quibusdam dolorum vel temporibus molestiae incidunt voluptatem. Omnis magni quam quis dolorem vel. Quaerat maxime quasi molestias incidunt aut laboriosam.', NULL, '2008-07-27 17:26:09', '1984-07-03 12:26:06');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '55', 'Dolore ea molestiae ullam enim in occaecati. At in labore ab et est qui iure. Unde sed ullam ad ratione maxime dolorum. Hic aliquam qui aspernatur dolorem asperiores nostrum. Ex libero quis praesentium et optio.', NULL, '1996-07-14 09:32:06', '1981-09-04 07:02:50');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '99', 'Eligendi placeat dolores ipsum rerum soluta. Voluptatem debitis esse dolores eveniet. Eius culpa iure odio nisi voluptas consequatur et.', NULL, '1999-12-24 10:21:11', '1981-01-14 14:29:35');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '93', 'Recusandae similique a non. Possimus aliquid culpa illo voluptas iusto blanditiis. Repudiandae eius praesentium velit enim omnis ullam qui.', NULL, '1971-05-29 03:30:14', '2012-04-19 23:36:28');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '25', 'Fugit qui ipsum est non alias. Ea suscipit eligendi voluptas exercitationem ea quo aspernatur. Laborum ut incidunt id sit autem.', NULL, '2008-06-19 01:44:10', '2004-07-08 03:04:31');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '14', 'Magni odio porro quo ullam laborum dolores autem ad. Ab ut praesentium et non. Hic aut qui id odio quam aut culpa.', NULL, '2009-10-23 16:51:35', '1971-01-08 22:52:43');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '54', 'Necessitatibus et odit ut laudantium asperiores consequuntur. Qui sed quia commodi aperiam. Quia asperiores corporis suscipit temporibus eos molestiae qui.', NULL, '1971-10-13 22:01:35', '2017-11-11 02:03:58');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '46', 'Nihil ratione saepe consectetur libero. Nam omnis qui veniam minima aut ipsum. Id sapiente deleniti et rerum et.', NULL, '2011-03-23 12:21:05', '2019-08-13 01:44:37');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '21', 'Harum cupiditate nihil repellat officia earum aut modi. Cum possimus voluptates omnis blanditiis neque repellat tempore. Voluptatem non dolorem omnis.', NULL, '2013-05-09 14:04:25', '1994-08-28 04:51:13');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '2', 'Placeat sint ipsa nesciunt enim animi. Beatae et quae ipsa non sunt itaque. Voluptatum maiores magnam esse aut maxime.', NULL, '1998-06-29 14:36:25', '1980-02-16 07:24:39');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '48', 'Architecto sit aut sint eaque eaque incidunt. Quis amet facilis placeat ut suscipit est. Est omnis consequatur in molestias minus. Omnis impedit fugiat architecto quo. Amet atque quia explicabo distinctio sunt tempore in.', NULL, '1992-03-08 05:18:47', '1993-01-18 22:50:25');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '77', 'Et ipsa consequatur veniam repellat sed est. Quam placeat temporibus pariatur maxime.', NULL, '2003-06-21 19:27:39', '2006-02-11 13:27:57');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '7', 'Velit natus eveniet dicta. Voluptate vitae nihil deleniti. Distinctio et est aut facilis. Voluptate quas qui dolores.', NULL, '2016-01-28 01:02:18', '1994-05-06 09:55:46');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '29', 'Officia officiis nemo voluptatem illum. Voluptate quo ut quo.', NULL, '1992-10-27 21:07:30', '1975-08-04 20:51:39');
INSERT INTO `posts` (`id`, `user_id`, `body_post`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '50', 'Laborum nisi ipsum omnis culpa ut neque. Voluptatem quaerat asperiores mollitia alias ut voluptas est.', NULL, '1986-06-18 09:32:38', '1987-12-06 05:33:59');


DROP TABLE IF EXISTS likes_media;
CREATE TABLE likes_media (
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id)

) ;

INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '1', '1', '2019-04-27 01:15:23');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '2', '2', '1994-09-21 12:55:08');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '3', '3', '1974-04-18 22:06:24');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '4', '4', '1976-02-07 15:04:02');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '5', '5', '2007-07-01 21:41:12');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '6', '6', '1971-06-25 15:06:42');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '7', '7', '1991-08-11 02:32:38');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '8', '8', '1974-10-22 16:54:53');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '9', '9', '2014-04-30 13:39:29');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '10', '10', '1974-04-25 06:37:37');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('11', '11', '11', '2009-08-11 17:02:27');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('12', '12', '12', '1978-12-31 12:38:50');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('13', '13', '13', '1981-02-15 02:13:45');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('14', '14', '14', '1985-10-16 02:15:54');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('15', '15', '15', '2013-11-04 04:42:52');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('16', '16', '16', '2003-08-01 09:31:37');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('17', '17', '17', '2000-04-11 13:25:11');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('18', '18', '18', '1998-10-24 18:51:38');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('19', '19', '19', '2017-05-02 22:52:03');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('20', '20', '20', '1972-07-11 03:12:35');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('21', '21', '21', '1981-09-04 06:51:43');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('22', '22', '22', '2008-05-17 10:36:40');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('23', '23', '23', '1981-04-11 11:49:54');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('24', '24', '24', '1981-01-22 05:25:46');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('25', '25', '25', '1974-08-21 10:31:57');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('26', '26', '26', '2018-10-20 09:48:30');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('27', '27', '27', '2001-04-27 05:55:31');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('28', '28', '28', '2005-11-18 13:49:44');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('29', '29', '29', '1970-03-03 09:23:43');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('30', '30', '30', '1979-01-24 15:51:39');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('31', '31', '31', '2001-04-30 15:10:15');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('32', '32', '32', '2004-02-08 05:46:54');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('33', '33', '33', '1983-05-02 13:26:31');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('34', '34', '34', '1974-01-03 19:20:06');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('35', '35', '35', '1977-12-15 03:57:55');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('36', '36', '36', '2014-05-06 07:57:08');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('37', '37', '37', '2001-03-27 15:57:03');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('38', '38', '38', '1992-03-21 07:25:51');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('39', '39', '39', '1993-11-20 05:34:34');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('40', '40', '40', '2005-01-27 05:25:06');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('41', '41', '41', '1994-05-13 16:01:58');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('42', '42', '42', '1973-07-28 18:24:55');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('43', '43', '43', '1977-06-17 01:29:28');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('44', '44', '44', '1980-03-24 04:35:20');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('45', '45', '45', '2009-04-24 18:28:22');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('46', '46', '46', '1974-08-18 23:37:41');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('47', '47', '47', '1984-04-05 04:49:05');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('48', '48', '48', '1980-01-26 14:09:50');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('49', '49', '49', '1983-09-30 23:00:42');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('50', '50', '50', '2005-04-24 06:32:27');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('51', '51', '51', '1994-02-25 18:02:10');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('52', '52', '52', '1992-10-17 21:08:43');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('53', '53', '53', '1980-08-09 03:35:31');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('54', '54', '54', '1984-08-24 19:58:23');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('55', '55', '55', '1983-09-18 11:54:16');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('56', '56', '56', '2012-06-25 04:51:43');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('57', '57', '57', '2005-06-22 00:56:53');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('58', '58', '58', '1980-07-25 17:50:04');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('59', '59', '59', '1981-02-21 11:59:58');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('60', '60', '60', '1998-02-04 23:10:49');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('61', '61', '61', '1970-06-26 15:47:59');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('62', '62', '62', '1999-10-27 01:09:54');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('63', '63', '63', '1988-09-27 03:54:20');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('64', '64', '64', '1979-06-16 00:22:39');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('65', '65', '65', '2012-04-09 05:59:09');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('66', '66', '66', '1995-03-01 01:32:08');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('67', '67', '67', '1981-04-19 08:41:43');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('68', '68', '68', '1975-01-20 11:29:01');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('69', '69', '69', '1991-12-30 10:10:13');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('70', '70', '70', '1992-01-09 01:48:06');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('71', '71', '71', '2012-03-07 19:38:11');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('72', '72', '72', '2005-06-14 21:15:50');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('73', '73', '73', '1980-12-29 06:03:16');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('74', '74', '74', '1984-04-21 01:39:42');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('75', '75', '75', '2001-02-05 10:29:43');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('76', '76', '76', '1974-11-02 18:13:31');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('77', '77', '77', '1981-07-04 08:55:00');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('78', '78', '78', '2006-01-06 02:49:39');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('79', '79', '79', '1986-03-03 23:03:14');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('80', '80', '80', '1979-08-07 13:31:41');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('81', '81', '1', '2016-06-25 00:37:47');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('82', '82', '2', '2017-09-28 07:53:06');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('83', '83', '3', '1985-12-15 15:27:42');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('84', '84', '4', '2003-02-12 18:06:15');
INSERT INTO `likes_media` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('85', '85', '5', '1976-05-03 22:20:49');

DROP TABLE IF EXISTS likes_posts;
CREATE TABLE likes_posts (
  id SERIAL PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  post_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (post_id) REFERENCES posts(id)
  );


INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('1', '56', '43', '1982-11-27 00:12:07');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('2', '19', '85', '2004-01-18 23:57:18');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('3', '28', '18', '2003-10-20 23:04:56');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('4', '10', '86', '2018-07-10 05:40:23');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('5', '6', '66', '1986-09-14 01:48:17');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('6', '54', '50', '2011-01-01 04:50:55');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('7', '64', '24', '2014-09-12 23:34:08');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('8', '57', '51', '1987-08-11 10:01:58');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('9', '73', '39', '2008-09-09 09:08:55');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('10', '15', '93', '2007-01-28 19:35:45');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('11', '31', '43', '1988-03-05 18:41:16');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('12', '65', '52', '1976-11-20 09:02:59');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('13', '7', '85', '1981-04-08 04:06:24');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('14', '48', '41', '2016-03-14 09:33:36');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('15', '50', '28', '1999-12-06 21:53:40');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('16', '62', '5', '2015-12-29 11:48:31');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('17', '72', '78', '2007-04-03 13:32:17');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('18', '92', '98', '1978-07-09 22:00:33');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('19', '97', '1', '2019-12-31 14:51:58');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('20', '87', '3', '1970-08-16 22:46:06');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('21', '68', '40', '1971-07-17 23:03:04');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('22', '53', '30', '1976-09-03 05:36:57');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('23', '65', '9', '2018-12-02 03:18:22');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('24', '83', '36', '1973-06-09 04:00:11');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('25', '49', '95', '1983-09-22 19:36:11');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('26', '32', '78', '1970-09-20 15:39:55');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('27', '40', '95', '2000-08-16 13:59:16');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('28', '32', '46', '2020-03-07 01:12:24');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('29', '83', '79', '1998-12-12 17:47:01');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('30', '88', '31', '1990-10-21 06:17:36');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('31', '8', '48', '2003-01-30 11:13:48');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('32', '37', '78', '1980-09-15 14:18:36');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('33', '29', '28', '1989-12-06 01:35:26');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('34', '79', '25', '1985-09-09 01:02:10');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('35', '29', '64', '2019-10-01 23:41:11');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('36', '28', '95', '2007-04-22 19:15:52');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('37', '5', '79', '2014-05-25 07:33:50');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('38', '27', '68', '2003-02-07 04:05:49');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('39', '90', '10', '1973-03-21 08:09:19');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('40', '6', '37', '1996-02-27 12:34:42');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('41', '6', '37', '1998-03-24 12:41:56');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('42', '17', '45', '2008-08-30 16:20:52');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('43', '34', '48', '1971-01-13 19:58:30');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('44', '92', '15', '2018-06-14 08:00:16');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('45', '28', '78', '1974-07-01 14:42:49');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('46', '47', '35', '1999-06-04 13:44:56');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('47', '29', '82', '1982-04-15 22:06:22');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('48', '15', '56', '1999-10-02 22:07:48');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('49', '12', '92', '2005-11-11 12:31:28');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('50', '82', '40', '1998-02-23 07:54:52');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('51', '58', '9', '1979-03-14 20:50:30');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('52', '37', '62', '2011-05-30 10:20:44');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('53', '89', '62', '2012-09-12 08:45:20');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('54', '32', '77', '1986-11-26 06:48:25');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('55', '73', '37', '2007-05-07 22:59:20');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('56', '16', '77', '1979-05-04 05:52:51');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('57', '75', '32', '1990-01-18 03:57:31');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('58', '24', '8', '1972-08-03 04:48:11');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('59', '81', '16', '1982-11-10 23:20:30');
INSERT INTO `likes_posts` (`id`, `user_id`, `post_id`, `created_at`) VALUES ('60', '24', '9', '2018-05-10 07:27:04');

DROP TABLE IF EXISTS likes_users;
CREATE TABLE likes_users (
  id SERIAL PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  
  FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('1', '88', '1977-04-01 06:48:51');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('2', '35', '2004-07-27 12:16:38');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('3', '50', '1997-01-29 06:52:05');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('4', '14', '1978-01-15 14:09:20');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('5', '50', '1988-02-20 10:30:25');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('6', '36', '2002-01-08 21:52:28');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('7', '30', '2012-08-24 01:06:51');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('8', '65', '1972-12-03 12:42:52');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('9', '27', '2017-08-05 02:37:13');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('10', '1', '2008-07-18 01:35:31');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('11', '15', '1979-10-09 00:43:28');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('12', '23', '1973-09-15 03:31:04');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('13', '15', '1988-03-20 16:08:41');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('14', '100', '1993-08-03 23:52:32');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('15', '99', '1971-08-11 17:47:46');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('16', '80', '2017-10-22 18:50:21');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('17', '48', '1971-04-12 12:34:31');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('18', '83', '1979-11-05 23:05:21');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('19', '89', '2008-12-14 06:16:51');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('20', '15', '2008-11-24 07:31:51');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('21', '75', '1976-12-02 20:28:28');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('22', '50', '1982-05-16 07:55:57');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('23', '71', '2000-07-02 05:03:10');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('24', '20', '1993-02-04 00:24:56');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('25', '88', '1979-09-29 00:02:40');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('26', '79', '1996-12-20 14:55:11');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('27', '11', '1979-01-15 23:52:20');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('28', '6', '2014-01-07 16:04:15');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('29', '14', '1990-09-10 20:28:06');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('30', '25', '1980-07-01 05:30:17');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('31', '63', '1984-06-27 22:11:03');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('32', '2', '2017-09-10 07:38:46');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('33', '60', '2016-12-08 03:08:47');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('34', '13', '2005-12-31 13:04:36');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('35', '15', '2012-08-12 01:14:08');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('36', '9', '1989-11-18 23:21:34');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('37', '48', '2001-08-21 10:57:23');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('38', '44', '1984-08-19 05:04:57');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('39', '73', '2004-11-28 23:32:56');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('40', '75', '1989-02-25 18:29:47');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('41', '45', '1980-11-21 11:32:48');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('42', '87', '2005-05-17 07:51:39');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('43', '97', '2006-06-11 17:02:55');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('44', '59', '2000-06-27 21:07:05');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('45', '87', '1984-10-31 17:13:56');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('46', '95', '2017-12-13 14:09:37');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('47', '39', '2016-04-15 20:45:19');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('48', '34', '2003-09-17 10:05:23');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('49', '78', '1984-03-08 01:51:36');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('50', '28', '1997-12-27 04:46:58');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('51', '49', '2005-10-13 10:12:21');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('52', '52', '2015-01-02 20:55:30');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('53', '77', '2017-11-14 21:37:15');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('54', '19', '1999-03-19 12:03:20');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('55', '72', '1986-10-25 06:51:33');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('56', '64', '2008-09-06 16:34:02');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('57', '97', '1998-04-27 20:57:37');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('58', '83', '2016-11-12 09:55:48');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('59', '70', '2009-03-31 21:28:10');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('60', '11', '2018-07-27 03:59:12');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('61', '8', '1988-02-16 18:01:51');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('62', '33', '2004-10-13 08:51:40');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('63', '12', '1988-10-03 19:22:24');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('64', '67', '2018-01-20 17:30:39');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('65', '45', '1981-02-05 19:35:46');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('66', '26', '1992-12-05 01:34:20');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('67', '75', '1974-02-24 01:48:30');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('68', '93', '1999-09-20 02:06:28');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('69', '70', '1997-08-06 20:39:50');
INSERT INTO `likes_users` (`id`, `user_id`, `created_at`) VALUES ('70', '48', '2017-01-23 16:57:46');

DROP TABLE IF EXISTS photo_albums;
CREATE TABLE photo_albums (
	id SERIAL,
	name varchar(255) DEFAULT NULL,
    user_id BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
  	PRIMARY KEY (id)
);

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'totam', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'unde', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'incidunt', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'iure', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'expedita', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'aut', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'nulla', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'facere', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'aut', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'ipsa', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'non', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'recusandae', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'exercitationem', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'autem', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'ea', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'et', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'ipsam', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'voluptas', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'rerum', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'expedita', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'eos', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'deleniti', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'sint', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'quaerat', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'dolores', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'quos', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'voluptas', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'odit', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'sed', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'repellat', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'possimus', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'expedita', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'necessitatibus', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'id', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'et', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'labore', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'quos', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'ipsum', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'quis', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'aliquam', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'nesciunt', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'adipisci', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'sit', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'consequatur', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'corrupti', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'maiores', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'ea', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'sit', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'quaerat', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'inventore', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'enim', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'molestiae', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'illo', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'saepe', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'quae', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'voluptas', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'et', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'doloremque', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'libero', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'ut', '60');

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
	album_id BIGINT unsigned NOT NULL,
	media_id BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '54', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '27', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '58', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '51', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '15', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '50', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '15', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '21', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '48', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '56', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '54', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '35', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '32', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '18', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '11', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '34', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '11', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '30', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '22', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '35', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '40', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '37', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '30', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '53', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '38', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '47', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '28', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '1', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '22', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '50', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '10', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '37', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '24', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '29', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '27', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '22', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '29', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '60', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '56', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '16', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '41', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '4', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '24', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '9', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '24', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '17', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '22', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '54', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '59', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '31', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '27', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '31', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '51', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '53', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '23', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '21', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '11', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '13', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '29', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '18', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '19', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '26', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '28', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '26', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '43', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '51', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '50', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '3', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '52', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '27', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '4', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '18', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '12', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '47', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '50', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '33', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '40', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '49', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '17', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '32', '79');