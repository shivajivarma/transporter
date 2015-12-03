CREATE TABLE `travelagency`.`route` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `origin` INT NOT NULL,
	`destination` INT NOT NULL,
	`distance` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ROUTE_UNIQUE` (`origin`,`destination`),
  FOREIGN KEY (`origin`) REFERENCES  `travelagency`.`location` (`id`),
  FOREIGN KEY (`destination`) REFERENCES  `travelagency`.`location` (`id`))
  AUTO_INCREMENT=1;