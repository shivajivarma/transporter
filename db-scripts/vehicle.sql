CREATE TABLE `transporter`.`vehicle` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` BIT(2) NULL,
  `priceperunit` FLOAT NULL,
  `currentlocation` INT(11) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_vehicle_location_idx` (`currentlocation` ASC),
  CONSTRAINT `fk_vehicle_location`
    FOREIGN KEY (`currentlocation`)
    REFERENCES `transporter`.`locations` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
	
	
/* type : bus - 0, car - 1, jeep - 2, van - 3 */
