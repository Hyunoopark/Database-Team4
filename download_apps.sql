CREATE TABLE `app`.`download_apps` (
  `user_id` INT NOT NULL,
  `app_id` INT NOT NULL,
  `date` DATE NULL,
  `paid_amount` VARCHAR(45) NULL DEFAULT 0,
  `app_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`user_id`, `app_id`));

ALTER TABLE `app`.`download_apps` 
CHANGE COLUMN `user_id` `email_id` VARCHAR(50) NOT NULL ;
               
ALTER TABLE `app`.`download_apps` 
DROP COLUMN `app_name`;

ALTER TABLE `app`.`download_apps` 
ADD COLUMN `is_deleted` TINYINT NULL DEFAULT 0 AFTER `paid_amount`;
               
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21300333@handong.edu', '1', '2019-05-18', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500771@handong.edu', '2', '2019-05-18', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500172@handong.edu', '2', '2019-05-18', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500172@handong.edu', '5', '2019-05-18', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21600301@handong.edu', '3', '2019-05-18', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500771@handong.edu', '4', '2019-05-18', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21600301@handong.edu', '9', '2019-05-15', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500172@handong.edu', '1', '2019-05-15', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500771@handong.edu', '1', '2019-05-15', '0', '0');
INSERT INTO `app`.`download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21600301@handong.edu', '1', '2019-05-15', '0', '0');
