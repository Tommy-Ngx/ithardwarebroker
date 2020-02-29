

CREATE TABLE `conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO conditions VALUES("1","New","2019-03-09 00:49:59");
INSERT INTO conditions VALUES("2","Used","2019-03-09 00:49:59");



CREATE TABLE `equipments` (
  `equipmentid` int(12) NOT NULL AUTO_INCREMENT,
  `equipmentname` varchar(255) NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `brand` varchar(255) NOT NULL,
  `datearrived` date NOT NULL,
  `dateadded` date NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `condition_id` int(11) NOT NULL,
  PRIMARY KEY (`equipmentid`),
  KEY `condition_id` (`condition_id`),
  CONSTRAINT `equipments_ibfk_1` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO equipments VALUES("23","Badminton Racket","79","Mikasa","2019-03-09","2019-03-09","admin","1");



CREATE TABLE `report` (
  `reportid` int(20) NOT NULL AUTO_INCREMENT,
  `studentid` int(20) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `studentcourse` varchar(255) NOT NULL,
  `lostitem` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `datelost` date NOT NULL,
  `dateadded` date NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `brand` varchar(255) NOT NULL,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;




CREATE TABLE `users` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `added_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3","Administrator","Lamela","");
INSERT INTO users VALUES("14","ojtadmin","b423768528cadd9c98669ac9a4b6591b","Louel Dominic","Porquiado","");

