CREATE TABLE `app`.`comments_apps` (
  `comment_id` BIGINT NOT NULL,
  `app_id` INT NOT NULL,
  `comment_contents` TEXT NOT NULL,
  `score` INT NULL,
  `commented_date` TIMESTAMP NOT NULL,
  `num_of_likes` INT NULL,
  `spam_reported` VARCHAR(45) NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`comment_id`, `user_id`));
  
INSERT INTO `app`.`comments_apps` (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('1', '1', 'Everything nice but please get NIV and make a deal with them for people qho afford and there are people willing to pay for it. Maybe for NIV we can make it for sale. And also please make one for app stor of iphones. They can also be for sale please. Give us choice', '5', '2018-10-27', '0', '23');
INSERT INTO `app`.`comments_apps` (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('2', '1', 'The app is very useful. But how to add more version such as NIV and NKRV korean? I\'d like to add that eventhough I have to purchase it', '5', '2018-11-02', '2', '24');
INSERT INTO `app`.`comments_apps` (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('3', '1', 'the translation of the tagalog version, bothered me. It just gave one type of tagalog version, it should not be just one. I still liked the other version before.', '1', '2019-01-17', '3', '25');
INSERT INTO `app`.`comments_apps` (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('4', '1', 'Best Bible app ever. Thank you so much', '5', '2018-04-04', '1', '26');

ALTER TABLE `app`.`comments_apps` 
CHANGE COLUMN `score` `score` INT(1) NOT NULL ;
               
INSERT INTO `app`.`comments_apps` (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('5', '1', 'why no Arabic version of this bible ... Egyptian Arabic* it used to have before...', '3', '2019-04-17 00:00:00', '0', '27');
