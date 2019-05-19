CREATE TABLE `app`.`apps` (
  `app_id` INT NOT NULL AUTO_INCREMENT,
  `app_name` VARCHAR(200) NOT NULL,
  `description` TEXT NULL,
  `developer_id` INT NOT NULL,
  `url` VARCHAR(200) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `downloaded_num` VARCHAR(40) NULL,
  `uploaded_date` DATE NOT NULL,
  `latest_update` DATE NULL,
  `score` VARCHAR(50) NULL,
  `rating` VARCHAR(45) NOT NULL,
  `current_version` VARCHAR(45) NOT NULL,
  `whats_new` TEXT NULL,
  `num_of_reports` VARCHAR(20) NULL,
  `required_software` VARCHAR(100) NOT NULL,
  `size` VARCHAR(45) NOT NULL,
  `editors_choice` TINYINT NULL,
  `editors_choice_category` VARCHAR(250) NULL,
  `coming_soon` TINYINT NULL DEFAULT 0,
  `weekly_recommended` VARCHAR(45) NULL DEFAULT 0,
  PRIMARY KEY (`app_id`));

ALTER TABLE `apps` 
ADD COLUMN `genre` VARCHAR(200) NOT NULL AFTER `weekly_recommended`;
               
INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('1', 'Lifove Bible', '(Report issues and suggest new functions in Developer Website below: https://github.com/lifoveBible/lifovebible/issues)', '1', 'https://play.google.com/store/apps/details?id=net.lifove.android.lifovebible', 'FREE', '50000+', '2010-01-01', '2017-08-06', '4.7 total 518', 'Rated for 3+', '7.4.6', '* 7.4.6 - Fixed a History saving issue in Android 7.0. (Note that History log of normal users may be initialized.) - Added an option to set the memo text size. (Smaller/Larger than main text size or Same as main text size options.)', 'Android 2.2 and up', '1.5M', '0', '0', '0', 'Lifeove Bible(original), Tools');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('2', 'Facebook', 'Keeping up with friends is faster and easier than ever. Share updates and photos, engage with friends and Pages, and stay connected to communities important to you. ', '2', 'https://play.google.com/store/apps/details?id=com.facebook.katana', 'FREE', '1,000,000,000+', '2010-01-01', '2019-05-14', '4.1 total 87,090,209 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', ' Improvements for reliability and speed', 'Varies with device', 'Varies with device', '0', '0', '0', 'Facebook, Social');
               
INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('3', 'Instagram', 'Instagram is a simple way to capture and share the world’s moments. Follow your friends and family to see what they’re up to, and discover accounts from all over the world that are sharing things you love. Join the community of over 1 billion people and express yourself by sharing all the moments of your day — the highlights and everything in between, too.', '3', 'https://play.google.com/store/apps/details?id=com.instagram.android', 'FREE', '1,000,000,000+', '2010-01-01', '2019-05-14', '4.5 total 81,753,198 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', 'Varies with device', 'Varies with device', '0', '0', '0', 'Instagram, Social');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('4', 'KakaoTalk: Free Calls & Text', 'KakaoTalk is a fast & multifaceted messaging app. Send messages, photos, videos, voice notes and your location for free. Make chatting extra fun with an array of emoticons and sticker collections. ', '4', 'https://play.google.com/store/apps/details?id=com.kakao.talk', 'FREE', '100,000,000+', '2010-01-01', '2019-05-02', '4.3 total 2,765,467 ', 'Rated for 3+', '8.3.6', '[v8.3.6] KakaoTalk is updated regularly in order to provide you a better service. This update includes bug fixes and stability improvements. ', '4.4 and up', '62M', '0', '0', '0', 'Kakao Corporation, Communication');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('5', '네이버 - NAVER', 'You will find neat, search-centered screen with organized contents, fun and trendy shopping, and our new feature \'Green Dot\' which helps you find the information you want at all times. Download the New Naver app now to have brand new experiences in advance.', '5', 'https://play.google.com/store/apps/details?id=com.nhn.android.search', 'FREE', '50,000,000+', '2010-01-01', '2019-05-03', '3.9 total 459,166 ', 'Rated for 3+', 'Varies with device', '- 보안 인증서 오류 수정 - 기타 사용성 개선 및 안정성 강화', 'Varies with device', 'Varies with device', '0', '0', '0', 'NAVER Corp. , Books & Reference');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('6', 'YouTube', 'Get the official YouTube app for Android phones and tablets. See what the world is watching -- from the hottest music videos to what’s trending in gaming, entertainment, news, and more. Subscribe to channels you love, share with friends, and watch on any device.', '6', 'https://play.google.com/store/apps/details?id=com.google.android.youtube', 'FREE', '5,000,000,000+', '2010-01-01', '2019-05-15', '4.4 total 44618617', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', 'For new features, look for in-product education & notifications sharing the feature and how to use it!', 'Varies with device', 'Varies with device', '1', '0', '0', 'Google LLC, Video Players & Editors');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('7', 'YouTube Music - Stream Songs & Music Videos', 'YouTube Music is a new music app that allows you to easily find what you’re looking for and discover new music. Get playlists and recommendations served to you based on your context, tastes, and what’s trending around you.', '6', 'https://play.google.com/store/apps/details?id=com.google.android.apps.youtube.music', 'FREE', '100,000,000+', '2010-01-01', '2019-05-13', '4.1 total 564,983 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', 'YouTube Music has been completely redesigned. Quickly find the music you’re looking for and get music served to you based on what’s right for the moment you’re in. Want to listen without interruptions? Get 1 free month of Music Premium to listen ad-free, offline, and with your screen locked.', 'Varies with devicev', 'Varies with device', '0', '0', '0', 'Google LLC, Music & Audio');
               
INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('8', 'Battle Tank', 'Real warfare, \"Battle Tank!!!\"', '7', 'https://play.google.com/store/apps/details?id=com.spcomes.wnbattletank', 'FREE', '1,000,000+', '2010-01-01', '2019-05-14', '4.3 total 7,204 ', 'Rated for 3+', '1.0.0.46', '- minor bug fix', '4.1 and up', '34M', '0', '0', '1', 'Springcomes, Action');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('9', 'Badland Brawl', 'Explosive multiplayer brawler of epic action with easy-to-play but hard-to-master physics-based gameplay.', '8', 'https://play.google.com/store/apps/details?id=com.frogmind.badlandbrawl', 'FREE', '5,000,000+', '2019-05-01', '2019-05-09', '4.4 total 60506', 'Rated for 7+ Mild Violence', '1.6.4.1', '1.6.4.1 - Bug fixes', '4.0.3 and up', 'Varies with device', '1', '0', '0', 'Frogmind, Strategy');
               
ALTER TABLE apps ADD FOREIGN KEY (developer_id) REFERENCES app.developer(developer_id);

UPDATE `apps` SET `downloaded_num` = '50000' WHERE (`app_id` = '1');
UPDATE `apps` SET `downloaded_num` = '1000000000' WHERE (`app_id` = '2');
UPDATE `apps` SET `downloaded_num` = '1000000000' WHERE (`app_id` = '3');
UPDATE `apps` SET `downloaded_num` = '100000000' WHERE (`app_id` = '4');
UPDATE `apps` SET `downloaded_num` = '50000000' WHERE (`app_id` = '5');
UPDATE `apps` SET `downloaded_num` = '5000000000' WHERE (`app_id` = '6');
UPDATE `apps` SET `downloaded_num` = '100000000' WHERE (`app_id` = '7');
UPDATE `apps` SET `downloaded_num` = '1000000' WHERE (`app_id` = '8');
UPDATE `apps` SET `downloaded_num` = '5000000' WHERE (`app_id` = '9');

ALTER TABLE `apps` 
CHANGE COLUMN `downloaded_num` `downloaded_num` BIGINT NULL DEFAULT NULL ;
               
ALTER TABLE `apps` 
ADD COLUMN `sub_category` VARCHAR(45) NULL AFTER `genre`;

UPDATE `apps` SET `sub_category` = 'Game' WHERE (`app_id` = '8');
UPDATE `apps` SET `sub_category` = 'Game' WHERE (`app_id` = '9');
               
UPDATE `apps` SET `editors_choice_category` = 'Best app alltime' WHERE (`app_id` = '6');
UPDATE `apps` SET `editors_choice_category` = 'Best game' WHERE (`app_id` = '9');

ALTER TABLE `apps` 
ADD COLUMN `score_average` DECIMAL(2,1) NULL AFTER `sub_category`,
ADD COLUMN `score_total` BIGINT NULL AFTER `score_average`;
               
ALTER TABLE `apps` 
DROP COLUMN `score`;
               
UPDATE `apps` SET `score_average` = '4.7', `score_total` = '518' WHERE (`app_id` = '1');
UPDATE `apps` SET `score_average` = '4.1', `score_total` = '87090209' WHERE (`app_id` = '2');
UPDATE `apps` SET `score_average` = '4.5', `score_total` = '81753198' WHERE (`app_id` = '3');
UPDATE `apps` SET `score_average` = '4.3', `score_total` = '2765467' WHERE (`app_id` = '4');
UPDATE `apps` SET `score_average` = '3.9', `score_total` = '459166' WHERE (`app_id` = '5');
UPDATE `apps` SET `score_average` = '4.4', `score_total` = '44618617' WHERE (`app_id` = '6');
UPDATE `apps` SET `score_average` = '4.1', `score_total` = '564983' WHERE (`app_id` = '7');
UPDATE `apps` SET `score_average` = '4.3', `score_total` = '7204' WHERE (`app_id` = '8');
UPDATE `apps` SET `score_average` = '4.4', `score_total` = '60506' WHERE (`app_id` = '9');

ALTER TABLE `apps` 
ADD COLUMN `score_totalscore` BIGINT NULL AFTER `score_totalnum`,
CHANGE COLUMN `score_total` `score_totalnum` BIGINT(20) NULL DEFAULT NULL ;
               
UPDATE `apps` SET `score_totalscore` = '2434.6' WHERE (`app_id` = '1');
UPDATE `apps` SET `score_totalscore` = '357069856.9' WHERE (`app_id` = '2');
UPDATE `apps` SET `score_totalscore` = '367889391' WHERE (`app_id` = '3');
UPDATE `apps` SET `score_totalscore` = '11891508' WHERE (`app_id` = '4');
UPDATE `apps` SET `score_totalscore` = '1790747.4' WHERE (`app_id` = '5');
UPDATE `apps` SET `score_totalscore` = '196321914.8' WHERE (`app_id` = '6');
UPDATE `apps` SET `score_totalscore` = '2316430.3' WHERE (`app_id` = '7');
UPDATE `apps` SET `score_totalscore` = '30977.2' WHERE (`app_id` = '8');  
UPDATE `apps` SET `score_totalscore` = '266226.4' WHERE (`app_id` = '9');
               
ALTER TABLE `apps` 
ADD COLUMN `is_trialversion` TINYINT NULL DEFAULT 0 AFTER `score_totalscore`;

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `rating`, `current_version`, `num_of_reports`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`, `score_average`, `score_totalnum`, `score_totalscore`, `is_trialversion`) VALUES ('10', 'BadApp', 'Badapp for test', '8', 'https://play.google.com/store/apps/details?id=badapp', 'FREE', '101', '2019-05-16', '2019-05-16', 'R', '0.0.0', '12', 'Varies with devices', 'Varies with devices', '0', '0', '0', 'Reported', '1', '3', '3', '0');
             




