CREATE TABLE `registered_devices` (
  `user_email` VARCHAR(30) NOT NULL,
  `device_name` VARCHAR(45) NOT NULL,
  `maker` VARCHAR(20) NOT NULL,
  `device_model` VARCHAR(20) NOT NULL,
  `device_carrier` VARCHAR(25) NOT NULL,
  `last_used` DATE NOT NULL,
  `registered_on` DATE NOT NULL,
  PRIMARY KEY (`user_email`, `device_name`, `maker`, `device_carrier`, `device_model`, `last_used`, `registered_on`));


INSERT INTO `registered_devices` (`user_email`, `device_name`, `maker`, `device_model`, `device_carrier`, `last_used`, `registered_on`) VALUES ('21500172@handong.edu', 'samsung SM-N960N	', 'Samsung', 'SM-N960N', 'SK Telecom', '2019-05-18', '2019-02-21');
INSERT INTO `registered_devices` (`user_email`, `device_name`, `maker`, `device_model`, `device_carrier`, `last_used`, `registered_on`) VALUES ('21500172@handong.edu', 'samsung SM-G610L	', 'Samsung', 'SM-G610L', 'LG U+', '2019-05-15', '2016-12-30');
INSERT INTO `registered_devices` (`user_email`, `device_name`, `maker`, `device_model`, `device_carrier`, `last_used`, `registered_on`) VALUES ('21500172@handong.edu', 'samsung SM-G906L	', 'Samsung', 'SM-G906L', 'LG U+', '2018-08-17', '2014-07-29');
