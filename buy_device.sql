CREATE TABLE `buy_device` (
  `user_email` VARCHAR(30) NOT NULL,
  `device_id` INT NOT NULL,
  `date` DATE NULL,
  `paid_amount` INT(50) NULL,
  `currency` VARCHAR(5) NULL, 
  `purchased_address` VARCHAR(50) NULL,
  PRIMARY KEY (`user_email`, `device_id`));
  
INSERT INTO `buy_device` (`user_email`, `device_id`, `date`, `paid_amount`, `currency`, `purchased_address`) VALUES ('21500172@handong.edu', '1', '2019-05-18', '54900', '\\', 'Pohang, South Korea');
INSERT INTO `buy_device` (`user_email`, `device_id`, `date`, `paid_amount`, `currency`, `purchased_address`) VALUES ('21300333@handong.edu', '1', '2019-04-15', '54900', '\\', 'Pohang, South Korea');
INSERT INTO `buy_device` (`user_email`, `device_id`, `date`, `paid_amount`, `currency`, `purchased_address`) VALUES ('21500771@handong.edu', '2', '2019-05-12', '126500', '\\', 'Pohang, South Korea');
INSERT INTO `buy_device` (`user_email`, `device_id`, `date`, `paid_amount`, `currency`, `purchased_address`) VALUES ('21600301@handong.edu', '1', '2019-03-12', '54900', '\\', 'Seoul, South Korea');

