CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` int DEFAULT NULL,
  `sex` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `create_time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT 'login name',
  `nickname` varchar(45) DEFAULT 'real name',
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

INSERT INTO user VALUES (1,'Maka',19, 'Female', 'UK', '002-1234','2021-12-12');
INSERT INTO user VALUES (2,'John',22, 'Male', 'US', '002-1322','2022-11-22');
INSERT INTO user VALUES (3,'Alen',34, 'Male', 'Vitnam', '002-15544','2021-01-12');
INSERT INTO user VALUES (4,'Ohlala',65, 'Female', 'Austrila', '002-1644','2020-04-12');
INSERT INTO user VALUES (5,'William',49, 'Male', 'US', '002-66334','2021-12-12');
INSERT INTO user VALUES (6,'Alice',17, 'Female', 'UK', '002-15434','2022-05-12');
INSERT INTO user VALUES (7,'Bob',31, 'Male', 'France', '002-35234','2021-09-12');
INSERT INTO user VALUES (8,'Smith',27, 'Male', 'UK', '002-53434','2022-02-24');
INSERT INTO user VALUES (10,'Michal',49, 'Male', 'US', '002-535334','2022-01-12');
INSERT INTO user VALUES (11,'Le',18, 'Male', 'UK', '002-175674','2021-03-12');
INSERT INTO user VALUES (12,'Batman',45, 'Male', 'US', '002-535334','2022-03-12');
INSERT INTO user VALUES (13,'Superman',24, 'Male', 'US', '002-4224','2018-04-12');
INSERT INTO user VALUES (14,'Shazen',18, 'Male', 'UK', '002-53454','2021-12-09');
INSERT INTO user VALUES (15,'Christina',23, 'Female', 'UK', '002-64564','2018-01-12');
INSERT INTO user VALUES (16,'Miao',56, 'Female', 'US', '002-5354','2020-12-12');
INSERT INTO user VALUES (17,'Wow',74, 'Male', 'UK', '002-53534','2018-04-12');
INSERT INTO user VALUES (18,'HoHoi',56, 'Female', 'US', '002-53454','2022-12-05');

INSERT INTO admin VALUES(1, 'admin', 'Ohho', 'admin');