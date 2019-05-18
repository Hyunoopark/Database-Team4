CREATE TABLE `app`.`download_apps` (
  `user_id` INT NOT NULL,
  `app_id` INT NOT NULL,
  `date` DATE NULL,
  `paid_amount` VARCHAR(45) NULL DEFAULT 0,
  `app_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`user_id`, `app_id`));


INSERT INTO `app`.`download_apps` (`user_id`, `app_id`, `date`, `paid_amount`, `app_name`) VALUES ('23', '1', '2019-05-18', '0', 'Lifeove Bible');

       
