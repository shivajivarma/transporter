INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('1', 'vizag', b'1');
INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('2', 'hyderabad', b'1');
INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('3', 'mumbai', b'1');
INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('4', 'chennai', b'1');
INSERT INTO `transporter`.`location` (`id`, `name`, `enabled`) VALUES ('5', 'delhi', b'1');

INSERT INTO `transporter`.`vehicle` (`id`, `type`, `priceperunit`, `currentlocation`) VALUES ('1', b'00', '200', '1');


INSERT INTO `transporter`.`route` (`id`, `from`, `to`, `distance`) VALUES ('1', '1', '2', '10');


INSERT INTO `transporter`.`trip` (`id`, `dt`, `facilities`, `priceperperson`, `routemap`, `seating`, `vehicle`) VALUES ('1', '2017-02-12', 'ac', '10', '1', '20', '1');

INSERT INTO transporter.users(username,password,enabled)
VALUES ('admin','admin', true);

INSERT INTO transporter.users(username,password,enabled)
VALUES ('user','user', true);

INSERT INTO transporter.user_roles (username, role)
VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO transporter.user_roles (username, role)
VALUES ('admin', 'ROLE_USER');

INSERT INTO transporter.user_roles (username, role)
VALUES ('user', 'ROLE_USER');


INSERT INTO `transporter`.`passenger` (`id`, `username`, `name`, `dob`, `gender`, `email`, `mobile`) VALUES ('1', 'user', 'USER', '2017-02-19', b'0', 'test@example.com', '9988774455');
