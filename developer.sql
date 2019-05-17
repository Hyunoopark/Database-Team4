CREATE TABLE `app`.`developer` (
  `developer_id` INT NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `date_of_birth` DATE NULL,
  `website` VARCHAR(100) NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `company` VARCHAR(45) NULL,
  PRIMARY KEY (`developer_id`));

INSERT INTO `app`.`developer` (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`) VALUES ('1', 'asdf1234', 'JC', 'Nam', '1900-01-01', 'http://lifove.github.io/', 'jcnam@handong.edu', 'Pohang, South Korea');

INSERT INTO `app`.`developer` (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('2', 'qwer1234', 'CK', 'Kim', '1994-12-07', 'https://github.com/codesmart3', '21500172@handong.edu', 'Pohang, South Korea', 'Google LLC');

UPDATE `app`.`developer` SET `company` = 'Facebook' WHERE (`developer_id` = '2');

UPDATE `app`.`developer` SET `company` = 'Handong Global University' WHERE (`developer_id` = '1');
               
INSERT INTO `app`.`developer` (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('6', 'zxcv5678', 'Susan', 'Wojcicki', '1968-07-05', 'https://twitter.com/susanwojcicki', 'susan@youtube.com', '1600 Amphitheatre Parkway, Mountain View 94043', 'Google LLC');

INSERT INTO `app`.`developer` (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('3', 'asdf1234', 'Mike', 'Krieger', '1986-03-04', 'https://help.instagram.com/', 'mike@instagram.com', 'San Francisco, California, U.S.', 'Instagram');

INSERT INTO `app`.`developer` (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('4', 'ghkk7890', 'BS', 'Kim', '1966-03-08', 'help.notice@kakaocorp.com', 'beomsoo@kakaotalk.com', 'Seoul, South Korea', 'Kakao Corporation');
               
INSERT INTO `app`.`developer` (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('7', 'bawe4322', 'GC', 'Lee', '1976-05-14', 'https://www.facebook.com/victor.kislyi', 'help@spcomes.com', '403, Ace Twin Tower 1 cha, 285, Digital-ro, Guro-gu, Seoul, Korea, 08381', 'Springcomes');
