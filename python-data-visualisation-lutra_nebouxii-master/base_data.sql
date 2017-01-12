DROP TABLE IF EXISTS "project";
DROP TABLE IF EXISTS "status";

CREATE TABLE status (
	id INT PRIMARY KEY,
	name VARCHAR(11)
);

INSERT INTO status (id, name) VALUES (1, 'under order');
INSERT INTO status (id, name) VALUES (2, 'development');
INSERT INTO status (id, name) VALUES (3, 'testing');
INSERT INTO status (id, name) VALUES (4, 'shipped');

CREATE TABLE project (
	id INT PRIMARY KEY,
	name VARCHAR(50) UNIQUE,
	duedate DATE,
	company_name VARCHAR(50),
	company_hq VARCHAR(50),
	main_color VARCHAR(50),
	manager VARCHAR(50),
	budget_value VARCHAR(50),
	budget_currency VARCHAR(3),
	status INT REFERENCES status (id),
	maintenance_requested VARCHAR(50)
);

INSERT INTO project VALUES (1, 'Y-find', '2004-12-05 00:29:49', 'Camimbo', 'Adirejo', '#2bb', 'Carolyn Carpenter', '3141.51', 'EUR', 2, FALSE);
INSERT INTO project VALUES (2, 'Voltsillam', '2014-11-30 01:36:49', 'Twinder', 'Camias', '#2a9', 'Ruby Wallace', '3323.85', 'USD', 1, FALSE);
INSERT INTO project VALUES (3, NULL, '2009-10-24 08:30:01', 'Eadel', 'Mompós', '#2ba', 'Sharon Sanders', '255.70', 'EUR', 4, FALSE);
INSERT INTO project VALUES (4, 'Sonsing', '2010-04-04 10:03:07', 'Oyonder', 'Bobigny', '#1c7', 'Harold Garza', '8955.29', 'EUR', 4, TRUE);
INSERT INTO project VALUES (5, 'Flowdesk', '2014-05-20 22:08:28', 'Gigabox', 'Anibare', '#642', 'Catherine Flores', '7951.38', 'GBP', 3, TRUE);
INSERT INTO project VALUES (6, 'Tres-Zap', '2000-01-15 13:32:18', 'Divavu', 'Nouâdhibou', '#42b', 'Sean Anderson', '6851.00', 'USD', 3, FALSE);
INSERT INTO project VALUES (7, 'Pannier', '2004-05-08 04:12:49', 'Brainbox', 'Al Ma‘allā’', '#64c', 'Heather Pierce', '6645.07', 'EUR', 1, FALSE);
INSERT INTO project VALUES (8, 'Latlux', '2013-02-14 04:39:11', 'Brainbox', 'Rio Novo do Sul', '#786', 'Gregory Mitchell', '6190.24', 'EUR', 4, TRUE);
INSERT INTO project VALUES (9, 'Asoka', '2001-11-06 01:09:30', 'Youspan', 'Jalaud', '#f9a', 'Dennis Tucker', '9245.36', 'GBP', 2, FALSE);
INSERT INTO project VALUES (10, NULL, '2013-02-07 02:53:15', 'Rhybox', 'Kurungannyawa', '#852', 'Willie Spencer', '8971.25', 'USD', 2, FALSE);
INSERT INTO project VALUES (11, NULL, '2017-09-12 17:46:10', 'Thoughtbridge', 'Dalam', '#bfe', 'Joseph Rice', '5048.69', 'USD', 2, TRUE);
INSERT INTO project VALUES (12, 'Fintone', '2010-07-03 02:54:48', 'Eadel', 'Matara', '#56f', 'Steve Payne', '6250.33', 'USD', 3, FALSE);
INSERT INTO project VALUES (13, 'Bitchip', '2015-09-26 22:09:37', 'Eadel', 'New York City', '#fd9', 'Larry Grant', '9335.36', 'EUR', 1, FALSE);
INSERT INTO project VALUES (14, 'Lotlux', '2009-03-24 16:25:10', 'Muxo', 'Simpang', NULL, NULL, '7905.46', 'GBP', 1, TRUE);
INSERT INTO project VALUES (15, 'Job', '2015-01-09 05:49:14', 'Gigabox', 'Jingxi', '#4c7', 'Andrea Dean', '5139.27', 'GBP', 2, FALSE);
INSERT INTO project VALUES (16, 'Viva', '2013-05-17 04:27:01', 'Kazio', 'Beiguoyuan', '#f80', 'Joan Cruz', '8747.42', 'GBP', 1, FALSE);
INSERT INTO project VALUES (17, 'Namfix', '2003-05-16 20:50:39', 'Kazio', 'Pridonskoy', '#0dd', 'Patrick Thompson', '1712.73', 'GBP', 4, FALSE);
INSERT INTO project VALUES (18, 'Alphazap', '2005-11-08 17:54:01', 'Kazio', 'Radojevo', '#296', 'Karen Scott', '6244.82', 'GBP', 4, FALSE);
INSERT INTO project VALUES (20, NULL, '2011-01-31 19:12:24', 'Eadel', 'Buenaventura', NULL, NULL, '914.45', 'GBP', 3, FALSE);
INSERT INTO project VALUES (21, 'Y-Solowarm', '2013-09-18 21:18:18', 'Camimbo', 'Dologon', '#ad2', 'Beverly Hunt', '685.67', 'EUR', 4, FALSE);
INSERT INTO project VALUES (22, 'Treeflex', '2006-10-25 04:04:33', 'Wikizz', 'Cajicá', '#af7', 'Norma Patterson', '5358.58', 'EUR', 1, FALSE);
INSERT INTO project VALUES (23, 'Ronstring', '2016-01-30 13:30:29', 'Thoughtbridge', 'Telsen', '#4d6', 'Janet Knight', '9608.43', 'EUR', 1, FALSE);
INSERT INTO project VALUES (26, 'Hatity', '2009-12-08 12:41:49', 'Gigabox', NULL, '#bc8', 'Sara Wood', '3854.61', 'EUR', 1, FALSE);
INSERT INTO project VALUES (27, 'Fixflex', '2008-10-23 22:37:03', 'Oyoba', 'Méru', '#820', 'Louis Reyes', '4030.33', 'USD', 4, TRUE);
INSERT INTO project VALUES (28, 'Tin', '2000-04-19 06:24:59', 'Ozu', 'Gizałki', '#67c', 'Kathryn James', '2153.52', 'GBP', 4, FALSE);
INSERT INTO project VALUES (29, 'Bamity', '2007-04-11 23:58:44', 'Bubbletube', 'Joyabaj', '#b13', 'Mildred Foster', '8526.23', 'GBP', 2, TRUE);
INSERT INTO project VALUES (30, 'Sonair', '2010-07-04 10:17:32', 'Oyoba', NULL, '#092', 'Walter Parker', '9984.09', 'GBP', 3, TRUE);
INSERT INTO project VALUES (31, 'Home Ing', '2007-04-16 07:59:04', 'Eadel', 'Itabaiana', '#c43', 'Norma Medina', '4304.61', 'EUR', 1, TRUE);
INSERT INTO project VALUES (32, 'Keylex', '2012-04-01 14:12:30', 'Kazio', 'Maonon', '#0c1', 'Kimberly Stanley', '4528.62', 'GBP', 3, TRUE);
INSERT INTO project VALUES (33, 'Ventosanzap', '2003-11-25 16:29:53', 'Edgetag', 'Romba', '#016', 'Tammy Collins', '842.73', 'USD', 4, FALSE);
INSERT INTO project VALUES (34, 'Prodder', '2005-12-04 18:43:32', 'Jaxnation', 'Lancaster', '#07e', 'Jason Pierce', '8610.72', 'EUR', 4, FALSE);
INSERT INTO project VALUES (36, 'Tampflex', '2009-04-14 12:48:14', 'Gigabox', 'Kaberamaido', NULL, NULL, '6943.11', 'EUR', 3, FALSE);
INSERT INTO project VALUES (37, 'Konklux', '2017-08-09 22:32:54', 'Brainbox', 'Orléans', '#807', 'Adam Williamson', '6416.33', 'USD', 1, TRUE);
INSERT INTO project VALUES (38, 'Quo Lux', '2001-08-23 02:02:46', 'Ozu', 'Kawaguchi', '#dc3', 'Matthew Gibson', '5492.03', 'EUR', 3, FALSE);
INSERT INTO project VALUES (39, 'Kanlam', '2003-10-25 04:58:00', 'Thoughtbridge', 'Cansolungon', '#b24', 'Angela Moreno', '1014.36', 'GBP', 3, TRUE);
INSERT INTO project VALUES (42, 'Zathin', '2007-04-09 02:37:06', 'Topicware', 'Zásmuky', '#06c', 'Sara Knight', '2835.63', 'GBP', 3, FALSE);
INSERT INTO project VALUES (43, 'Stringtough', '2002-01-18 19:10:04', 'Gigabox', 'Hongwŏn', '#2e4', 'Louise Payne', '7661.27', 'EUR', 1, FALSE);
INSERT INTO project VALUES (44, 'Gembucket', '2015-09-23 15:47:59', 'Tagtune', 'Hradec nad Moravici', '#af7', 'Judith Bryant', '7338.10', 'EUR', 1, FALSE);
INSERT INTO project VALUES (47, 'Alpha', '2016-04-29 12:11:35', 'Jaxnation', 'Shanxi', '#569', 'Denise Williamson', '9255.51', 'EUR', 3, FALSE);
INSERT INTO project VALUES (50, 'Transcof', '2008-01-01 02:43:17', 'Gabcube', 'Lom Sak', '#6ca', 'Jacqueline Fox', '8598.17', 'GBP', 3, TRUE);
INSERT INTO project VALUES (51, 'Flexidy', '2012-01-05 10:09:42', 'Ozu', 'Lunéville', '#242', 'Aaron Ward', '5958.66', 'EUR', 2, TRUE);
INSERT INTO project VALUES (54, 'Duobam', '2015-06-06 22:03:47', 'Ozu', 'Yucheng', '#670', 'Beverly Spencer', '8213.22', 'USD', 4, TRUE);
INSERT INTO project VALUES (55, 'Redhold', '2013-09-12 04:30:12', 'Eadel', 'Libato', '#ddf', 'Anne Meyer', '2292.01', 'EUR', 1, FALSE);
INSERT INTO project VALUES (57, 'Domainer', '2000-06-14 07:24:12', 'Brainbox', 'Yangchun', '#aa6', 'Lillian Brown', '3688.55', 'USD', 3, TRUE);
INSERT INTO project VALUES (58, 'Subin', '2002-09-17 23:03:16', 'Skynoodle', 'Ḩadādah', '#77e', 'Kelly West', '7198.01', 'USD', 4, TRUE);
INSERT INTO project VALUES (59, 'Zamit', '2020-03-01 16:26:39', 'Jaxnation', 'Goričan', '#50c', 'Ralph Nguyen', '6428.20', 'GBP', 2, TRUE);
INSERT INTO project VALUES (60, 'Bigtax', '2009-04-16 08:28:37', 'Jaxnation', 'Hodkovičky', '#1b1', 'Joan Lawson', '9745.95', 'GBP', 3, TRUE);
INSERT INTO project VALUES (62, 'Stronghold', '2006-08-04 08:16:18', 'Youbridge', 'Gaojimiao', '#23f', 'Juan Anderson', '7519.77', 'GBP', 1, TRUE);
INSERT INTO project VALUES (64, 'Opela', '2003-12-15 14:10:37', 'Thoughtbridge', NULL, '#415', 'Harry James', '2425.00', 'EUR', 1, TRUE);
INSERT INTO project VALUES (65, 'Daltfresh', '2005-12-15 16:08:37', 'Topicware', 'Srokowo', '#23c', 'Jimmy Washington', '2471.52', 'USD', 2, FALSE);
INSERT INTO project VALUES (66, 'Bytecard', '2007-01-19 11:10:04', 'Lajo', NULL, '#263', 'Todd Bell', '5806.75', 'EUR', 2, FALSE);
INSERT INTO project VALUES (71, NULL, '2006-07-30 16:42:57', 'Gigabox', 'Severomorsk', '#2fc', 'Phyllis Allen', '3241.81', 'USD', 1, FALSE);
INSERT INTO project VALUES (72, NULL, '2014-03-30 08:38:47', 'Youspan', 'Qvareli', '#7ec', 'Deborah Lewis', '4712.66', 'EUR', 4, FALSE);
INSERT INTO project VALUES (75, NULL, '2001-08-06 05:03:33', 'Thoughtbridge', 'Donskoye', '#831', 'Terry Weaver', '8423.30', 'USD', 2, FALSE);
INSERT INTO project VALUES (77, 'Zontrax', '2003-02-26 23:11:09', 'Eadel', 'Lazo', '#1ce', 'Paula Owens', '3235.73', 'EUR', 4, TRUE);
INSERT INTO project VALUES (80, 'Toughjoyfax', '2013-07-28 05:32:22', 'Tambee', 'Arish', '#953', 'Justin Adams', '432.94', 'USD', 4, FALSE);
INSERT INTO project VALUES (81, 'Veribet', '2001-02-07 18:55:26', 'Ozu', 'Zhenzhushan', '#22a', 'Jonathan Flores', '5133.82', 'EUR', 4, TRUE);
INSERT INTO project VALUES (82, 'Matsoft', '2015-09-09 01:37:05', 'Ozu', 'Ereira', '#830', 'Roy Day', '7636.80', 'USD', 1, TRUE);
INSERT INTO project VALUES (83, NULL, '2002-12-01 10:48:37', 'Npath', 'Jialai', '#c58', 'Doris Cooper', '5026.43', 'USD', 2, TRUE);
INSERT INTO project VALUES (85, 'Zoolab', '2008-02-03 13:23:07', 'Muxo', 'Purwojoyo', '#d53', 'Andrea Nelson', '5440.39', 'USD', 4, TRUE);
INSERT INTO project VALUES (86, NULL, '2006-02-26 19:46:14', 'Gigashots', 'Guangyi', '#66d', 'Marie Hart', '1234.94', 'EUR', 3, TRUE);
INSERT INTO project VALUES (87, 'Greenlam', '2003-05-25 21:41:41', 'Fiveclub', 'Budzów', '#09f', 'Judith Garcia', '9954.76', 'EUR', 1, TRUE);
INSERT INTO project VALUES (89, 'It', '2017-08-17 16:16:19', 'Rhybox', 'Popil''nya', '#9c7', 'Juan Morris', '2756.15', 'USD', 4, TRUE);
INSERT INTO project VALUES (95, 'Tresom', '2008-07-16 00:18:08', 'Gigabox', 'Gastello', '#f2f', 'Angela Reed', '364.38', 'GBP', 4, FALSE);
INSERT INTO project VALUES (96, 'Regrant', '2005-06-19 10:30:43', 'Skivee', 'Las Cruces', '#f98', 'Janice Reynolds', '7971.20', 'GBP', 1, TRUE);
INSERT INTO project VALUES (99, 'Wrapsafe', '2014-04-10 05:37:03', 'Meemm', 'Mělník', '#048', 'Jessica Warren', '3686.82', 'GBP', 1, TRUE);
INSERT INTO project VALUES (101, NULL, '2020-01-18 02:49:47', 'Oozz', 'Kobrinskoye', '#2d2', 'Matthew Bailey', '9140.81', 'EUR', 4, FALSE);
INSERT INTO project VALUES (104, NULL, '2009-05-11 17:30:28', 'Lazzy', 'Damiao', '#b60', 'Juan Grant', '965.43', 'GBP', 1, FALSE);
INSERT INTO project VALUES (105, 'Cookley', '2000-02-10 22:26:19', 'Eadel', 'Huili', '#083', 'Nicole Gibson', '2922.63', 'EUR', 4, FALSE);
INSERT INTO project VALUES (107, 'Stim', '2002-03-21 04:59:18', 'Brainverse', 'Jianggang', '#d0e', 'Willie Austin', '1852.80', 'USD', 4, FALSE);
INSERT INTO project VALUES (112, 'Vagram', '2012-03-02 06:45:16', 'Oyonder', 'Skibbereen', '#b1f', 'Sara Bowman', '1147.59', 'GBP', 2, TRUE);
INSERT INTO project VALUES (113, 'Trippledex', '2010-09-03 20:23:31', 'Brainsphere', 'Fenghua', '#7e8', 'Justin Gonzalez', '7124.34', 'EUR', 3, TRUE);
INSERT INTO project VALUES (116, 'Solarbreeze', '2005-09-10 20:28:45', 'Feedmix', 'Kasba Tadla', NULL, NULL, '8796.76', 'USD', 1, TRUE);
INSERT INTO project VALUES (118, NULL, '2000-07-19 03:06:06', 'Brainbox', 'Butha-Buthe', '#230', 'Samuel Fields', '1962.62', 'EUR', 4, FALSE);
INSERT INTO project VALUES (120, NULL, '2001-02-26 23:11:12', 'Skiba', 'Taoyuan', '#8a8', 'Lois Hunt', '7124.81', 'EUR', 3, TRUE);
INSERT INTO project VALUES (123, 'Andalax', '2020-05-04 21:43:44', 'Ozu', 'Erpeldange', '#1e9', 'Donna Carter', '6030.64', 'USD', 3, FALSE);
INSERT INTO project VALUES (125, NULL, '2014-02-01 10:13:08', 'Gigabox', 'Gameleira', '#c06', 'Roy Rodriguez', '2387.00', 'USD', 3, TRUE);
INSERT INTO project VALUES (128, NULL, '2004-07-06 03:52:44', 'Yodo', 'Daegu', '#030', 'Karen Stone', '3064.18', 'USD', 4, TRUE);
INSERT INTO project VALUES (131, NULL, '2017-10-03 14:25:58', 'Viva', 'Quitilipi', '#d38', 'Amanda Sullivan', '9392.92', 'EUR', 3, FALSE);
INSERT INTO project VALUES (133, 'Biodex', '2007-05-26 12:16:23', 'Fiveclub', 'Paris 15', '#357', 'Kathryn Stephens', '9671.97', 'USD', 2, FALSE);
INSERT INTO project VALUES (138, 'Span', '2004-03-10 19:49:23', 'Eadel', 'Rijeka', '#76b', 'Christina Miller', '2090.61', 'USD', 4, TRUE);
INSERT INTO project VALUES (142, 'Bitwolf', '2016-01-18 16:52:02', 'Brainbox', NULL, '#762', 'Andrea Gutierrez', '2749.78', 'EUR', 3, FALSE);
INSERT INTO project VALUES (145, 'Tempsoft', '2019-07-06 18:05:28', 'Brainbox', NULL, '#020', 'Lois Day', '6344.83', 'GBP', 2, TRUE);
INSERT INTO project VALUES (147, 'Voyatouch', '2017-10-30 02:06:11', 'Jabbersphere', 'Banjar Ponggang', '#680', 'Kathy Reynolds', '2651.94', 'GBP', 4, FALSE);
INSERT INTO project VALUES (151, NULL, '2014-08-27 03:13:28', 'Photofeed', 'Río Tercero', '#81e', 'Christina Russell', '1074.52', 'GBP', 2, TRUE);
INSERT INTO project VALUES (160, 'Zaam-Dox', '2012-12-19 13:03:04', 'Buzzster', 'Alastaro', '#f21', 'Rebecca Warren', '8483.81', 'GBP', 3, TRUE);
INSERT INTO project VALUES (163, 'Otcom', '2008-06-19 06:22:11', 'Eadel', 'Sindangrasa', '#79a', 'Joseph Hicks', '2909.90', 'GBP', 2, TRUE);
INSERT INTO project VALUES (167, NULL, '2000-11-16 02:52:34', 'Brainbox', NULL, '#c2a', 'Louis Foster', '5090.13', 'GBP', 4, TRUE);
INSERT INTO project VALUES (169, 'Konklab', '2001-05-25 00:30:48', 'Tanoodle', 'Abucay', '#75a', 'Cheryl Perry', '3970.73', 'EUR', 3, TRUE);
INSERT INTO project VALUES (173, NULL, '2019-01-10 13:29:22', 'Wikizz', 'Rennes', '#a67', 'Mildred Stanley', '6544.38', 'USD', 1, TRUE);
INSERT INTO project VALUES (174, NULL, '2017-03-11 12:47:17', 'Wikizz', 'Shuikou', '#acf', 'Stephen Stanley', '3008.37', 'EUR', 2, TRUE);
INSERT INTO project VALUES (176, 'Lotstring', '2004-04-07 22:27:21', 'Yodo', 'Jingouhe', '#d86', 'Sara George', '8379.21', 'USD', 1, FALSE);
INSERT INTO project VALUES (178, NULL, '2003-03-25 15:42:37', 'Muxo', 'Bollène', '#f5b', 'Joan Fuller', '9550.24', 'GBP', 1, FALSE);
INSERT INTO project VALUES (185, 'Cardify', '2005-12-11 03:28:37', 'Talane', 'Kunri', '#e04', 'Paula Turner', '370.13', 'GBP', 4, TRUE);
INSERT INTO project VALUES (199, 'Mat Lam Tam', '2005-11-12 11:08:34', 'Muxo', 'Pemberton', '#749', 'Kelly Jenkins', '2606.86', 'EUR', 2, FALSE);
INSERT INTO project VALUES (218, NULL, '2009-08-12 22:00:23', 'Gigabox', 'Casais Baleal', '#3ae', 'Irene Wood', '7618.27', 'USD', 2, TRUE);
INSERT INTO project VALUES (225, NULL, '2003-05-04 20:57:10', 'Browsebug', 'Klakeh', '#3bb', 'Ruby Kim', '737.76', 'USD', 2, TRUE);
INSERT INTO project VALUES (228, 'Fix San', '2011-02-07 13:59:21', 'Yotz', 'Rive-de-Gier', '#beb', 'Michelle Ramos', '3013.18', 'EUR', 2, TRUE);
INSERT INTO project VALUES (232, NULL, '2004-11-27 18:20:12', 'Wikizz', 'Long Hồ', '#707', 'Jeffrey Chapman', '729.97', 'USD', 3, TRUE);
INSERT INTO project VALUES (240, 'Sub-Ex', '2003-03-10 15:53:26', 'Wikizz', 'Podkumskiy', '#679', 'Matthew Miller', '4776.88', 'GBP', 3, TRUE);
INSERT INTO project VALUES (258, NULL, '2000-05-09 19:02:43', 'Skinix', 'Sukamaju', '#dfc', 'Kathy Sanchez', '3516.92', 'USD', 4, TRUE);
INSERT INTO project VALUES (259, 'Overhold', '2014-02-28 23:37:10', 'Thoughtbridge', 'Hongqiao', '#ba4', 'Elizabeth Mills', '764.45', 'EUR', 2, FALSE);
INSERT INTO project VALUES (261, NULL, '2004-07-16 20:38:03', 'Skyndu', 'København', '#b9d', 'Ruby Jones', '5103.82', 'USD', 1, FALSE);
INSERT INTO project VALUES (267, 'Cardguard', '2013-02-19 14:57:01', 'Feedfish', 'San Jose', '#937', 'Martha Stephens', '715.41', 'EUR', 1, TRUE);
INSERT INTO project VALUES (288, NULL, '2006-11-30 12:11:44', 'Yotz', 'Rajhrad', '#e2f', 'Donald Wheeler', '5739.91', 'EUR', 3, TRUE);
INSERT INTO project VALUES (304, NULL, '2019-02-18 10:25:55', 'Talane', 'Aloleng', '#d68', 'Kathryn Chapman', '7102.09', 'USD', 3, TRUE);
INSERT INTO project VALUES (315, NULL, '2013-03-17 18:28:06', 'Ozu', 'Muxo', '#781', 'Daniel Jordan', '5206.08', 'GBP', 4, FALSE);
INSERT INTO project VALUES (320, 'Holdlamis', '2002-06-29 03:52:24', 'Oyoba', 'San Antonio', '#063', 'Benjamin Alvarez', '9947.04', 'EUR', 3, FALSE);
INSERT INTO project VALUES (343, NULL, '2010-05-17 06:40:17', 'Bubbletube', 'Liangli', '#fdc', 'Brenda Franklin', '9939.09', 'GBP', 3, FALSE);
INSERT INTO project VALUES (347, NULL, '2006-01-29 17:38:12', 'Muxo', 'Siay', '#aee', 'Stephen Hayes', '1273.21', 'GBP', 1, TRUE);
INSERT INTO project VALUES (356, NULL, '2002-04-24 04:29:56', 'Divavu', 'Nanyuki', '#34d', 'Samuel Williams', '1316.72', 'GBP', 4, FALSE);
