#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
#------------------------------------------------------------
# Remplissage : USERS
#------------------------------------------------------------
INSERT INTO USERS (first_name, name, email, user_name, password, status)
 VALUES
	('Chloé', 'CHEILLAN','chloe.cheillan@viacesi.fr', 'Clochette','Chllan1','2'),
('Dylan-Bruce', 'CIMBERT','dylan.cimbert@viacesi.fr', 'DylanBC','Dylbert2','1'),
('Paul', 'COMBAL','paul.combal@viacesi.fr', 'Pablo', 'Paumbal3','3'),
('Michaël', 'DESTEUQUE','michael.desteuque@viacesi.fr', 'Revuxx','Micsteuque4','3'),
('Ghislain', 'GLORIA','ghislain.gloria@viacesi.fr', 'Peperoni','Ghiria5','2'),
('Zakari', 'HAMSIOU','zakari.hamsiou@viacesi.fr', 'Myzoz','Zaksiou6','3'),
('Benjamin', 'HENRY','benjamin.henry@viacesi.fr', 'Piuff','Benhenry7','2'),
('Mor-Niass', 'MBOW','mor.mbow@viacesi.fr', 'MBow','Mmbow8','1'),	
('Corentin', 'RAGENEAU','corentin.rageneau@viacesi.fr', 'Youplaboom','Coreneau9','1'),
	('Aaron', 'SEBAGH','aaronhai.sebagh@viacesi.fr', 'Loadren','Aarbagh10','3'),
('Dorian', 'THERIEZ','dorian.theriez@viacesi.fr', 'Dode','Doriez11','2'),
	('Tejesh', 'TAILOR','tejesh.tailor@viacesi.fr', 'TJS','Tejailor12','1') ;


#------------------------------------------------------------
# Remplissage : ACTIVITY
#------------------------------------------------------------

INSERT INTO ACTIVITY (activity_name, description_text, activity_date, id_users)
 VALUES
	('PAINTBALL', 'FORTNITE style because it’s awesome!!!!','2018-04-27 13:00:00','4'),
	('CS GO LAN', 'Its PAUL POOL time !!!', '2018-04-27 14:00:00','1'),
	('Cinéma', 'Avengers : INFINITY WAR at UGC CHÂTELET', '2018-04-27 15:00:00','5'),
	('HANGOVER', 'At le Pavillon :) :) :)', '2018-04-21 18:00:00','7') ;

#------------------------------------------------------------
# Remplissage : EVENTS
#------------------------------------------------------------

INSERT INTO EVENTS (event_name, detail_text, abstract, event_date)
 VALUES
('Football', 'Football/Soccer tournament with 8 teams from every formations. Halla CESI<3<3<3<3 ', 'Football/Soccer tournament', '2018-05-03 14:00:00'),
('Thursday’s Movie Afternoon', 'At UGC CHÂTELET, AVENGERS – INFINITY WAR : Infinity Stones Quest is over !!! Come to see one of the last chapter of your favorite MCU’s character and the blockbuster of this year. ', 'At UGC CHÂTELET, AVENGERS – INFINITY WAR','2018-04-27 13:00:00'),
('RELAX AND DRINK…AFTERWORK', ' HAPPY HOUR : 6PM-9PM and don’t forget PAUL POOL time 8PM!!! At the Pavillon', ' Afterwork at the Pavillon' ,'2018-04-27 14:00:00');

#------------------------------------------------------------
# Remplissage : PICTURES
#------------------------------------------------------------

INSERT INTO PICTURES (picture, uploading_date, id_event)
 VALUES
	('event1_1.jpg','2018-04-27 15:00:50', '1'),
	('event1_2.jpg','2018-04-27 15:30:17', '1'),
	('event1_3.jpg','2018-05-03 15:45:28', '1');

#------------------------------------------------------------
# Remplissage : STORE
#------------------------------------------------------------

INSERT INTO STORE (product_name, price, notice, product_picture, quantity, size)
 VALUES
('BDE CESI T-shirt','15', 'Available with every CESI logo’s promotions or with customised logos', 'BDEproduct1.jpg', '350', 'XS/S/M/L/XL/2XL'),
('BDE CESI Academic’s Kit','25', 'Available with every CESI logo’s promotions or with customised logos', 'BDEproduct2.jpg', '350', ''),
('BDE CESI Sweat-Shirt','35', 'Available with every CESI logo’s promotions or with customised logos', 'BDEproduct3.jpg', '350', 'XS/S/M/L/XL/2XL'),
('BDE CESI American’s College Coat','45', 'Available with every CESI logo’s promotions or with customised logos', 'BDEproduct4.jpg', '350', 'XS/S/M/L/XL/2XL'),
('BDE CESI Bonnet','25', 'Available with every CESI logo’s promotions or with customised logos', 'BDEproduct5.jpg', '350', 'S/M/L'),
('BDE CESI Gloves','15', 'Available with every CESI logo’s promotions or with customised logos', 'BDEproduct6.jpg', '350', 'S/M/L/XL'),
('BDE CESI Scarf','20', 'Available with every CESI logo’s promotions or with customised logos', 'BDEproduct7.jpg', '350', 'S/M/L/XL'),
('BDE CESI Winter Coat','40', 'Available with every CESI logo’s promotions or with customised logos', 'BDEproduct8.jpg', '350', ''),
('CESI GAMING MOUSE','30', 'A very useful «gaming mouse » resolution : 500-2000 dpi with 13 buttons + scroll button', 'CESIGAMING1.jpg', '350', ''),
('CESI GAMING KEYBOARD','35', 'A backlight keyboard (AZERTY) ', 'CESIGAMING2.jpg', '350', ''),
('CESI GAMING HEADPHONES','50', 'A bluetooth headphones STEREO 5.1','CESIGAMING3.jpg', '350', ''),
('CESI GAMING MOUSE PAD','10', 'A Large Mousepad (50x40)', 'CESIGAMING4.jpg', '350', '');
#------------------------------------------------------------
# Remplissage : COMMENTARIES
#------------------------------------------------------------

INSERT INTO COMMENTARIES (comment_text, comment_date, id_users, id_picture)
 VALUES
	('Thanks guys for your participation it was a really good to play with all of you. My team is the best :p :p :p','2018-04-27 15:00:50', '12', '1'),
	('Tejesh, U Suck man !!!','2018-04-27 15:30:17', '2', '1'),
	('Yes, Dylan, I suck so much that we beat your team 4-0 during the tournament. Maybe, your team will have more chances on FIFA','2018-05-03 15:45:28', '12', '1');

#------------------------------------------------------------
# Remplissage : ORDERS
#------------------------------------------------------------

INSERT INTO ORDERS (total_price, delivery_status, date_order, id_users)
 VALUES
('125', 'Available', '2018-04-19 14:00:00', '2'),
('60', 'In Process', '2018-04-24 12:00:00', '1'),
('70', 'In Process', '2018-04-24 12:00:00', '8') ;

#------------------------------------------------------------
# Remplissage : ORDERS_CONTENT
#------------------------------------------------------------

INSERT INTO ORDERS_CONTENT (amount, order_size, id_orders, id_store)
 VALUES
('1', 'S', '1', '5'),
('1', 'S', '1', '6'),
('1', 'S', '1', '7'),
('1', '', '2', '9'),
('1', '', '2', '10'),
('1', '', '2', '11'),
('1', '', '2', '12'),
('1', 'L', '3', '4'),
('1', 'M', '3', '5') ;

#------------------------------------------------------------
# Remplissage : ELECTION
#------------------------------------------------------------

INSERT INTO ELECTION (vote, id_activity, id_users)
 VALUES
('1', '3', '2'),
('1', '3', '4'),
('1', '3', '5'),
('1', '3', '6'),
('1', '3', '7'),
('1', '3', '8'),
('1', '3', '9'),
('1', '3', '11'),
('1', '4', '1'),
('1', '4', '2'),
('1', '4', '3'),
('1', '4', '4'),
('1', '4', '5'),
('1', '4', '6'),
('1', '4', '7'),
('1', '4', '9'),
('1', '4', '10'),
('1', '4', '11') ;


#------------------------------------------------------------
# Remplissage : LIKE_BUTTON
#------------------------------------------------------------

INSERT INTO LIKE_BUTTON (click_like, id_users, id_picture)
 VALUES
('1', '1', '1'),
('1', '2', '1'),
('1', '3', '1'),
('1', '4', '1'),
('1', '5', '2'),
('1', '6', '2'),
('1', '7', '2'),
('1', '8', '2'),
('1', '9', '3'),
('1', '10', '3'),
('1', '11', '3'),
('1', '12', '3') ;





