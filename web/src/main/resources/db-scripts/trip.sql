CREATE TABLE `transporter`.`trip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt` datetime DEFAULT NULL,
  `facilities` varchar(255) DEFAULT NULL,
  `priceperperson` float DEFAULT NULL,
  `routemap` varchar(255) DEFAULT NULL,
  `seating` bigint(20) DEFAULT NULL,
  `vehicle` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
