CREATE TABLE `transporter`.`route` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `from` INT(11) NOT NULL,
  `to` INT(11) NOT NULL,
  `distance` INT(10) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_from_location_idx` (`from` ASC),
  INDEX `fk_to_location_idx` (`to` ASC),
  CONSTRAINT `fk_from_location`
    FOREIGN KEY (`from`)
    REFERENCES `transporter`.`locations` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_to_location`
    FOREIGN KEY (`to`)
    REFERENCES `transporter`.`locations` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);