INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('1', 'vizag', b'1');
INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('2', 'hyderabad', b'1');
INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('3', 'mumbai', b'1');
INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('4', 'chennai', b'1');
INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('5', 'delhi', b'1');

INSERT INTO `transporter`.`vehicle` (`id`, `type`, `priceperunit`, `currentlocation`) VALUES ('1', b'00', '200', '1');


INSERT INTO `transporter`.`route` (`id`, `from`, `to`, `distance`) VALUES ('1', '1', '2', '10');


INSERT INTO `transporter`.`trip` (`id`, `dt`, `facilities`, `priceperperson`, `routemap`, `seating`, `vehicle`) VALUES ('1', '2017-02-12', 'ac', '10', '1', '20', '1');