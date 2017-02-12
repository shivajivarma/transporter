CREATE TABLE `transporter`.`passenger` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` bit(2) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`));
   
  /* gender : male - 0, female - 1, other - 2,3 */