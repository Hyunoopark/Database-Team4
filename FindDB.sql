-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 19-05-18 11:26
-- 서버 버전: 8.0.16
-- PHP 버전: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `FindDB`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `apps`
--

CREATE TABLE `apps` (
  `app_id` int(11) NOT NULL,
  `app_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `developer_id` int(11) NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `downloaded_num` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uploaded_date` date NOT NULL,
  `latest_update` date DEFAULT NULL,
  `score` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `current_version` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `whats_new` text COLLATE utf8mb4_general_ci,
  `num_of_reports` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `required_software` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `size` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `editors_choice` tinyint(4) DEFAULT NULL,
  `editors_choice_category` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coming_soon` tinyint(4) DEFAULT '0',
  `weekly_recommended` varchar(45) COLLATE utf8mb4_general_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `apps`
ADD COLUMN `genre` VARCHAR(200) NOT NULL AFTER `weekly_recommended`;

--
-- 테이블의 덤프 데이터 `apps`
--

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`) VALUES ('1', 'Lifove Bible', '(Report issues and suggest new functions in Developer Website below: https://github.com/lifoveBible/lifovebible/issues)', '1', 'https://play.google.com/store/apps/details?id=net.lifove.android.lifovebible', 'FREE', '50000+', '2010-01-01', '2017-08-06', '4.7 total 518', 'Rated for 3+', '7.4.6', '* 7.4.6 - Fixed a History saving issue in Android 7.0. (Note that History log of normal users may be initialized.) - Added an option to set the memo text size. (Smaller/Larger than main text size or Same as main text size options.)', 'Android 2.2 and up', '1.5M', '0', '0', '0');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`) VALUES ('2', 'Facebook', 'Keeping up with friends is faster and easier than ever. Share updates and photos, engage with friends and Pages, and stay connected to communities important to you. ', '2', 'https://play.google.com/store/apps/details?id=com.facebook.katana', 'FREE', '1,000,000,000+', '2010-01-01', '2019-05-14', '4.1 total 87,090,209 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', ' Improvements for reliability and speed', 'Varies with device', 'Varies with device', '0', '0', '0');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`) VALUES ('3', 'Instagram', 'Instagram is a simple way to capture and share the world’s moments. Follow your friends and family to see what they’re up to, and discover accounts from all over the world that are sharing things you love. Join the community of over 1 billion people and express yourself by sharing all the moments of your day — the highlights and everything in between, too.', '3', 'https://play.google.com/store/apps/details?id=com.instagram.android', 'FREE', '1,000,000,000+', '2010-01-01', '2019-05-14', '4.5 total 81,753,198 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', 'Varies with device', 'Varies with device', '0', '0', '0');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`) VALUES ('4', 'KakaoTalk: Free Calls & Text', 'KakaoTalk is a fast & multifaceted messaging app. Send messages, photos, videos, voice notes and your location for free. Make chatting extra fun with an array of emoticons and sticker collections. ', '4', 'https://play.google.com/store/apps/details?id=com.kakao.talk', 'FREE', '100,000,000+', '2010-01-01', '2019-05-02', '4.3 total 2,765,467 ', 'Rated for 3+', '8.3.6', '[v8.3.6] KakaoTalk is updated regularly in order to provide you a better service. This update includes bug fixes and stability improvements. ', '4.4 and up', '62M', '0', '0', '0');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`) VALUES ('5', '네이버 - NAVER', 'You will find neat, search-centered screen with organized contents, fun and trendy shopping, and our new feature \'Green Dot\' which helps you find the information you want at all times. Download the New Naver app now to have brand new experiences in advance.', '5', 'https://play.google.com/store/apps/details?id=com.nhn.android.search', 'FREE', '50,000,000+', '2010-01-01', '2019-05-03', '3.9 total 459,166 ', 'Rated for 3+', 'Varies with device', '- 보안 인증서 오류 수정 - 기타 사용성 개선 및 안정성 강화', 'Varies with device', 'Varies with device', '0', '0', '0');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('6', 'YouTube', 'Get the official YouTube app for Android phones and tablets. See what the world is watching -- from the hottest music videos to what’s trending in gaming, entertainment, news, and more. Subscribe to channels you love, share with friends, and watch on any device.', '6', 'https://play.google.com/store/apps/details?id=com.google.android.youtube', 'FREE', '5,000,000,000+', '2010-01-01', '2019-05-15', '4.4 total 44618617', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', 'For new features, look for in-product education & notifications sharing the feature and how to use it!', 'Varies with device', 'Varies with device', '1', '0', '0', 'Google LLC, Video Players & Editors');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('7', 'YouTube Music - Stream Songs & Music Videos', 'YouTube Music is a new music app that allows you to easily find what you’re looking for and discover new music. Get playlists and recommendations served to you based on your context, tastes, and what’s trending around you.', '6', 'https://play.google.com/store/apps/details?id=com.google.android.apps.youtube.music', 'FREE', '100,000,000+', '2010-01-01', '2019-05-13', '4.1 total 564,983 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', 'YouTube Music has been completely redesigned. Quickly find the music you’re looking for and get music served to you based on what’s right for the moment you’re in. Want to listen without interruptions? Get 1 free month of Music Premium to listen ad-free, offline, and with your screen locked.', 'Varies with devicev', 'Varies with device', '0', '0', '0', 'Google LLC, Music & Audio');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('8', 'Battle Tank', 'Real warfare, \"Battle Tank!!!\"', '7', 'https://play.google.com/store/apps/details?id=com.spcomes.wnbattletank', 'FREE', '1,000,000+', '2010-01-01', '2019-05-14', '4.3 total 7,204 ', 'Rated for 3+', '1.0.0.46', '- minor bug fix', '4.1 and up', '34M', '0', '0', '1', 'Springcomes, Action');

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`, `genre`) VALUES ('9', 'Badland Brawl', 'Explosive multiplayer brawler of epic action with easy-to-play but hard-to-master physics-based gameplay.', '8', 'https://play.google.com/store/apps/details?id=com.frogmind.badlandbrawl', 'FREE', '5,000,000+', '2019-05-01', '2019-05-09', '4.4 total 60506', 'Rated for 7+ Mild Violence', '1.6.4.1', '1.6.4.1 - Bug fixes', '4.0.3 and up', 'Varies with device', '1', '0', '0', 'Frogmind, Strategy');

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
UPDATE 'apps' SET `score_average` = '4.5', `score_total` = '81753198' WHERE (`app_id` = '3');
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


-- --------------------------------------------------------

--
-- 테이블 구조 `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `author` varchar(30) NOT NULL,
  `price` int(11) DEFAULT 0,
  `page` int(11) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `language` varchar(30) NOT NULL,
  `publisher` varchar(40) NOT NULL,
  `posted_date` date NOT NULL,
  `num_sales` bigint(20) NOT NULL,

  PRIMARY KEY(`book_id`)
);

ALTER TABLE `books`
ADD COLUMN `weekly_recommended` VARCHAR(45) NULL DEFAULT 0 AFTER `num_sales`;

--trigger for number of sales each book
delimiter |
CREATE TRIGGER tri_mybooks_ins_aft BEFORE INSERT ON myBooks
FOR EACH ROW BEGIN
UPDATE books SET books.num_sales = books.num_sales+1
WHERE books.book_id = new.book_id;
END;
|

--
-- 테이블의 덤프 데이터 `books`
--

INSERT INTO books (`ISBN`, `product_id`, `title`, `author`, `price`, `page`, `genre`, `language`, `publisher`, `posted_date`, `num_sales`) VALUES
(9791189015572, 5, 'Six wakes', 'Mur Lafferty', 9900 , 648, 'Fiction / Science Fiction / General', 'korean', 'Kyobobook MCP', 190425, 0) ,
(9788932966557, 6, 'Hollywood', 'Charles Bukowski', 9000, 486, 'Fiction / General', 'korean', 'Open books', 190503, 0),
(9788934995005, 7, 'Fact Ful Nes', 'Hans Rosling', 11880, 572, 'Literary Collections / Essays Philosophy / General', 'korean', 'Co. kimyong', 190228, 0),
(9791164130801, 8, 'Bad Blood', 'John Carreyrou', 10080, 468, 'Business & Economics / General', 'korean', 'Wiseberry', 190415, 0);

INSERT INTO books (`ISBN`, `product_id`, `title`, `author`, `price`, `page`, `genre`, `language`, `publisher`, `posted_date`, `num_sales`) VALUES
(9791126534159, 9, 'Figering in bed', '계바비', 3150, 425, 'Fiction / Romance / General', 'korean', 'Donga', 190111, 0),
(null, null, '황제의 검', '임무성', 0, 220, 'Fiction / Action & Adventure', 'korean', '환상북스', 120425, 0);

-- Query

UPDATE `books` SET `weekly_recommended` = '1' WHERE (`book_id` = '3');
-- a recommended book of this week

SELECT title, author FROM books WHERE genre LIKE "%Fiction%";
-- Searching for Fiction Genres

SELECT title, author FROM books ORDER BY posted_date DESC limit 30;
--  Newly released books can be listed to users.

SELECT title, author FROM books WHERE genre LIKE "%Fiction%" ORDER BY posted_date DESC limit 30;
-- Newly released books can be listed to users only Fiction

SELECT title, author FROM books WHERE NOT genre LIKE '%Fiction%' ORDER BY posted_date DESC limit 30;
-- ewly released books can be listed to users except Fiction

SELECT title, author FROM books WHERE weekly_recommended = '1';
-- List by weekly_recommended

SELECT title, author FROM books ORDER BY num_sales DESC limit 30;
-- List by in the highest order of sale

SELECT title, author FROM books WHERE price = 0 ORDER BY num_sales DESC limit 30;
-- List by the highest number of books with free prices

SELECT * FROM books WHERE books.title = 'Hollywood';
-- When one book is chosen, the detailed information of the book is shown.

SELECT title, author
FROM myBooks, books
WHERE myBooks.book_id = books.book_id
AND myBooks.user = '21300333@handong.edu';
-- Book can be sold and it is stored in MyBooks storage of a user who bought it.

-- --------------------------------------------------------

--
-- 테이블 구조 `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `year` date NOT NULL,
  `language` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `length` int(11) NOT NULL,
  `age_limit` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `movies`
--

INSERT INTO movies (`movie_id`,`product_id`, `title`, `year`, `language`, `length`, `age_limit`, `subtitle`, `price`) VALUES
(1, 6,'How to train your dragon3', '2019.01.11', 'korean', 104, 0, NULL, 6500) ,
(2, 7,'wonder', '2017.11.21', 'English', 113, 0, 'korean', 5000),
(3, 8,'Spiderman: homecoming', '2017.07.23', 'English', 133, 12, 'Korean', 3500),
(4, 9,'The dark knight', '2009.02.02', 'English', 152, 15, 'Korean', 4500)
(5,10,'언니','2019.1.15', 'korean', 93, 18, null, 2500 );

-- --------------------------------------------------------

--
-- 테이블 구조 `devices`
--

CREATE TABLE 'devices' (
  `device_id` INT NOT NULL,
  `device_name` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `description` VARCHAR(200) NULL,
  `colors` VARCHAR(45) NULL,
  `available_country` VARCHAR(255) NULL,
  `size_weight` VARCHAR(50) NULL DEFAULT 'N/A',
  `audio_type` VARCHAR(45) NULL DEFAULT 'N/A',
  `wireless` VARCHAR(45) NULL DEFAULT 'N/A',
  `sensor` VARCHAR(45) NULL DEFAULT 'N/A',
  `speaker` VARCHAR(45) NULL DEFAULT 'N/A',
  `mic` VARCHAR(45) NULL DEFAULT 'N/A',
  `power` VARCHAR(45) NULL DEFAULT 'N/A',
  `port_connector` VARCHAR(45) NULL DEFAULT 'N/A',
  `android_requirement` VARCHAR(45) NULL,
  `ios_requirement` VARCHAR(45) NULL,
  `simple_settings` TEXT NULL,
  `quantity_available` INT NULL,
  `quantity_sold` INT NULL DEFAULT 0,
  `category` VARCHAR(45) NULL,
  PRIMARY KEY (`device_id`)
);

--
-- 테이블의 덤프 데이터 `devices`
--

INSERT INTO `devices` (`device_id`, `device_name`, `price`, `description`, `colors`, `available_country`, `size_weight`, `wireless`, `power`, `port_connector`, `android_requirement`, `simple_settings`, `quantity_available`, `quantity_sold`, `category`) VALUES ('1', 'Chromecast Ultra', '\\54900', '기기에서 TV로 스트리밍하세요. 간단합니다.', 'black', 'Austrailia, Canada, Denmark, Finland, Japan, Netherlands, New Zealand, Norway, Singapore, Sweden, France, Germany, India, Italy, Mexico, Spain, England, U.S, Korea', 'L 52mm H 52mm', 'Wi-Fi 802.11ac(2.4GHz/5GHz)', '5V, 1A', 'HDMI, Micro USB', '', 'Connect to Chromecast and go to chromecast.com/setup. ', '10000', '152699', 'Connected Home');

ALTER TABLE `devices`
DROP COLUMN `simple_settings`;

INSERT INTO `devices` (`device_id`, `device_name`, `price`, `description`, `colors`, `available_country`, `size_weight`, `audio_type`, `wireless`, `speaker`, `mic`, `power`, `port_connector`, `quantity_available`, `quantity_sold`, `category`) VALUES ('2', 'Google Home', '\\126500', '질문하고 작업을 시켜 보세요. 안 어디서나 손을 사용하지 않고도 간편하게 일을 처리할 수 있습니다.', 'white, slate fabric', 'Austrailia, Canada, Denmark, Finland, Japan, Netherlands, New Zealand, Norway, Singapore, Sweden, France, Germany, India, Italy, Mexico, Spain, England, U.S, Korea', 'D 96.3mm H 142.7mm', 'HE-AAC, LC-AAC', '802.11b/g/n/ac(2.4GHz/5Ghz) Wi-Fi', 'High excursion ', 'dual', '16.5V, 2A', 'DC Power jack', '50000', '32569', 'Connected Home');
INSERT INTO .`devices` (`device_id`, `device_name`, `price`, `description`, `colors`, `available_country`, `size_weight`, `quantity_available`, `quantity_sold`, `category`) VALUES ('3', 'Pixel 3a', '$399', 'Google has unveiled two new phones in its lineup, the Pixel 3a and Pixel 3a XL, which are designed to deliver a pure Android experience along with Google\'s class-leading cameras for a lower price. ', 'Just Black, Clearly White, Purple-ish', 'Austrailia, Cananda, France, Germany, India, Ireland, Italy, Japan, Singapore, Spain, Taiwan, England, U.S.', '6 x 2.8 x 0.3 inches, 5.0 ounces', '886655', '556685', 'Phone');

-- --------------------------------------------------------

--
-- 테이블 구조 `myApps`
--

CREATE TABLE `myApps` (
  `user` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `app_id` int(11) NOT NULL,
  `purchase_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `download_appsApps`
--

CREATE TABLE `download_apps` (
  `user_id` INT NOT NULL,
  `app_id` INT NOT NULL,
  `date` DATE NULL,
  `paid_amount` VARCHAR(45) NULL DEFAULT 0,
  `app_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`user_id`, `app_id`));

  ALTER TABLE `download_apps`
  CHANGE COLUMN `user_id` `email_id` VARCHAR(50) NOT NULL ;

  ALTER TABLE `download_apps`
  DROP COLUMN `app_name`;

  ALTER TABLE `download_apps`
  ADD COLUMN `is_deleted` TINYINT NULL DEFAULT 0 AFTER `paid_amount`;

--
-- 테이블의 덤프 데이터 `download_apps`
--

  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21300333@handong.edu', '1', '2019-05-18', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500771@handong.edu', '2', '2019-05-18', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500172@handong.edu', '2', '2019-05-18', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500172@handong.edu', '5', '2019-05-18', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21600301@handong.edu', '3', '2019-05-18', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500771@handong.edu', '4', '2019-05-18', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21600301@handong.edu', '9', '2019-05-15', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500172@handong.edu', '1', '2019-05-15', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21500771@handong.edu', '1', '2019-05-15', '0', '0');
  INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`) VALUES ('21600301@handong.edu', '1', '2019-05-15', '0', '0');

  ALTER TABLE `download_apps`
  ADD COLUMN `need_update` TINYINT NULL DEFAULT 0 AFTER `is_deleted`;

  UPDATE `download_apps` SET `need_update` = '1' WHERE (`email_id` = '21600301@handong.edu') and (`app_id` = '3');


-- --------------------------------------------------------

--
-- 테이블 구조 `myBooks`
--

CREATE TABLE `myBooks` (
  `user` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `purchase_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `myBooks`
--

INSERT INTO myBooks(user, book_id) VALUES
('21600301@handong.edu', 1),
('21600301@handong.edu', 2),
('21600301@handong.edu', 3),
('21500172@handong.edu', 1),
('21500172@handong.edu', 4),
('21500771@handong.edu', 1),
('21500771@handong.edu', 2),
('21300333@handong.edu', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `myMovies`
--

CREATE TABLE `myMovies` (
  `user` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `movie_id` int(11) NOT NULL,
  `purchase_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `myMovies`
--

INSERT INTO myMovies(user, movie_id) VALUES
('21600301@handong.edu', 1),
('21600301@handong.edu', 2),
('21600301@handong.edu', 3),
('21500172@handong.edu', 1),
('21500172@handong.edu', 4),
('21500771@handong.edu', 1),
('21500771@handong.edu', 2),
('21300333@handong.edu', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `myDevices`
--

CREATE TABLE `myDevices` (
  `user_email` VARCHAR(30) NOT NULL,
  `device_id` INT NOT NULL,
  `date` DATE NULL,
  `paid_amount` INT(50) NULL,
  `currency` VARCHAR(5) NULL,
  `purchased_address` VARCHAR(50) NULL,
  PRIMARY KEY (`user_email`, `device_id`)
);

--
-- 테이블의 덤프 데이터 `myDevices`
--

INSERT INTO `myDevices` (`user_email`, `device_id`, `date`, `paid_amount`, `currency`, `purchased_address`) VALUES ('21500172@handong.edu', '1', '2019-05-18', '54900', '\\', 'Pohang, South Korea');
INSERT INTO `myDevices` (`user_email`, `device_id`, `date`, `paid_amount`, `currency`, `purchased_address`) VALUES ('21300333@handong.edu', '1', '2019-04-15', '54900', '\\', 'Pohang, South Korea');
INSERT INTO `myDevices` (`user_email`, `device_id`, `date`, `paid_amount`, `currency`, `purchased_address`) VALUES ('21500771@handong.edu', '2', '2019-05-12', '126500', '\\', 'Pohang, South Korea');
INSERT INTO `myDevices` (`user_email`, `device_id`, `date`, `paid_amount`, `currency`, `purchased_address`) VALUES ('21600301@handong.edu', '1', '2019-03-12', '54900', '\\', 'Seoul, South Korea');


-- --------------------------------------------------------

--
-- 테이블 구조 `registered_devices`
--

CREATE TABLE `registered_devices` (
  `user_email` VARCHAR(30) NOT NULL,
  `device_name` VARCHAR(45) NOT NULL,
  `maker` VARCHAR(20) NOT NULL,
  `device_model` VARCHAR(20) NOT NULL,
  `device_carrier` VARCHAR(25) NOT NULL,
  `last_used` DATE NOT NULL,
  `registered_on` DATE NOT NULL,
  PRIMARY KEY (`user_email`, `device_name`, `maker`, `device_carrier`, `device_model`, `last_used`, `registered_on`));

--
-- 테이블의 덤프 데이터 `registered_devices`
--

INSERT INTO `registered_devices` (`user_email`, `device_name`, `maker`, `device_model`, `device_carrier`, `last_used`, `registered_on`) VALUES ('21500172@handong.edu', 'samsung SM-N960N	', 'Samsung', 'SM-N960N', 'SK Telecom', '2019-05-18', '2019-02-21');
INSERT INTO `registered_devices` (`user_email`, `device_name`, `maker`, `device_model`, `device_carrier`, `last_used`, `registered_on`) VALUES ('21500172@handong.edu', 'samsung SM-G610L	', 'Samsung', 'SM-G610L', 'LG U+', '2019-05-15', '2016-12-30');
INSERT INTO `registered_devices` (`user_email`, `device_name`, `maker`, `device_model`, `device_carrier`, `last_used`, `registered_on`) VALUES ('21500172@handong.edu', 'samsung SM-G906L	', 'Samsung', 'SM-G906L', 'LG U+', '2018-08-17', '2014-07-29');


-- --------------------------------------------------------

--
-- 테이블 구조 `products`
--

CREATE TABLE `products` (
  `product_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `product`
--

INSERT INTO product(product_type, product_id)values('book',1),
('book',2),
('book',3),
('book',4),
('app',5),
('books',6),
('books',7),
('books',8),
('books',9);

-- --------------------------------------------------------

--
-- 테이블 구조 `users`
--

CREATE TABLE `users` (
  `email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `nationality` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `users`
--

INSERT INTO user (email,password,name,birthday,nationality)VALUES
('21600301@handong.edu','qkrwlgus', 'jihyunpark','1995.05.06','SouthKorea'),
('21500771@handong.edu','gkalswl', 'minjiha','1996.05.07','SouthKorea'),
('21300333@handong.edu','qkrgusdn', 'hyunwoopark','1994.03.01','USA'),
('21500172@handong.edu','rlacksrud', 'chankyungkim','1995.12.25','USA');

-- --------------------------------------------------------

--
-- 테이블 구조 `developer`
--

CREATE TABLE 'developer' (
  `developer_id` INT NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `date_of_birth` DATE NULL,
  `website` VARCHAR(100) NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `company` VARCHAR(45) NULL,
  PRIMARY KEY (`developer_id`)
);

--
-- 테이블의 덤프 데이터 `developer`
--

INSERT INTO 'developer' (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`) VALUES ('1', 'asdf1234', 'JC', 'Nam', '1900-01-01', 'http://lifove.github.io/', 'jcnam@handong.edu', 'Pohang, South Korea');

INSERT INTO 'developer' (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('2', 'qwer1234', 'CK', 'Kim', '1994-12-07', 'https://github.com/codesmart3', '21500172@handong.edu', 'Pohang, South Korea', 'Google LLC');

UPDATE 'developer' SET `company` = 'Facebook' WHERE (`developer_id` = '2');

UPDATE 'developer' SET `company` = 'Handong Global University' WHERE (`developer_id` = '1');

INSERT INTO 'developer' (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('6', 'zxcv5678', 'Susan', 'Wojcicki', '1968-07-05', 'https://twitter.com/susanwojcicki', 'susan@youtube.com', '1600 Amphitheatre Parkway, Mountain View 94043', 'Google LLC');

INSERT INTO 'developer' (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('3', 'asdf1234', 'Mike', 'Krieger', '1986-03-04', 'https://help.instagram.com/', 'mike@instagram.com', 'San Francisco, California, U.S.', 'Instagram');

INSERT INTO 'developer' (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('4', 'ghkk7890', 'BS', 'Kim', '1966-03-08', 'help.notice@kakaocorp.com', 'beomsoo@kakaotalk.com', 'Seoul, South Korea', 'Kakao Corporation');

INSERT INTO 'developer' (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('7', 'bawe4322', 'GC', 'Lee', '1976-05-14', 'https://www.facebook.com/victor.kislyi', 'help@spcomes.com', '403, Ace Twin Tower 1 cha, 285, Digital-ro, Guro-gu, Seoul, Korea, 08381', 'Springcomes');

INSERT INTO 'developer' (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('5', 'nave2333', 'HJ', 'Lee', '1967-06-22', 'www.naver.com', 'naver_market@naver.com', 'Seongnam, South Korea', 'NAVER Corp.');

INSERT INTO 'developer' (`developer_id`, `password`, `first_name`, `last_name`, `date_of_birth`, `website`, `email`, `address`, `company`) VALUES ('8', 'bads2442', 'Johannes', 'Vuorinen', '1981-07-24', 'http://frogmind.com/author/johannes-vuorinen/', 'brawl@frogmind.com', 'Kansakoulukatu 5A 3A 00100 Helsinki Finland', 'Frogmind');


-- --------------------------------------------------------

--
-- 테이블 구조 `comments_apps`
--

CREATE TABLE 'comments_apps' (
  `comment_id` BIGINT NOT NULL,
  `app_id` INT NOT NULL,
  `comment_contents` TEXT NOT NULL,
  `score` INT NULL,
  `commented_date` TIMESTAMP NOT NULL,
  `num_of_likes` INT NULL,
  `spam_reported` VARCHAR(45) NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`comment_id`, `user_id`)
);

--
-- 테이블의 덤프 데이터 `comments_apps`
--

INSERT INTO 'comments_apps' (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('1', '1', 'Everything nice but please get NIV and make a deal with them for people qho afford and there are people willing to pay for it. Maybe for NIV we can make it for sale. And also please make one for app stor of iphones. They can also be for sale please. Give us choice', '5', '2018-10-27', '0', '23');
INSERT INTO 'comments_apps' (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('2', '1', 'The app is very useful. But how to add more version such as NIV and NKRV korean? I\'d like to add that eventhough I have to purchase it', '5', '2018-11-02', '2', '24');
INSERT INTO 'comments_apps' (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('3', '1', 'the translation of the tagalog version, bothered me. It just gave one type of tagalog version, it should not be just one. I still liked the other version before.', '1', '2019-01-17', '3', '25');
INSERT INTO 'comments_apps' (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('4', '1', 'Best Bible app ever. Thank you so much', '5', '2018-04-04', '1', '26');

ALTER TABLE 'comments_apps'
CHANGE COLUMN `score` `score` INT(1) NOT NULL ;

INSERT INTO 'comments_apps' (`comment_id`, `app_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_id`) VALUES ('5', '1', 'why no Arabic version of this bible ... Egyptian Arabic* it used to have before...', '3', '2019-04-17 00:00:00', '0', '27');

-- --------------------------------------------------------

--
-- 테이블 구조 `comments_movies`
--

CREATE TABLE `comments_movies` (
  `comment_id` BIGINT NOT NULL,
  `movie_id` INT NOT NULL,
  `comment_contents` TEXT NOT NULL,
  `score` INT NULL,
  `commented_date` TIMESTAMP NOT NULL,
  `num_of_likes` INT NULL,
  `reported` INT(11) NULL,
  `user_email` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`comment_id`, `user_email`, `movie_id`)
);

--
-- 테이블의 덤프 데이터 `comments_movies`
--

INSERT INTO `comments_movies` (`comment_id`, `movie_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_email`) VALUES ('1', '24', '재미없음', '1', '2019-05-21', '1', 'hjkim@gmail.com');


-- --------------------------------------------------------

--
-- 테이블 구조 `paymentMethod`
--

CREATE TABLE IF NOT EXISTS paymentMethod(
  serialNum bigint(20) unsigned NOT NULL,
  paymentType varchar(15) NOT NULL,
  PRIMARY KEY(paymentType, serialNum)
);

INSERT INTO `paymentMethod` (`serialNum`, `paymentType`) VALUES ('1234567887654321', 'CreditCard');


-- --------------------------------------------------------

--
-- 테이블 구조 `wish_list`
--

CREATE TABLE `wish_list` (
  `user_id` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `product_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`app_id`);

--
-- 테이블의 인덱스 `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 테이블의 인덱스 `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 테이블의 인덱스 `myApps`
--
ALTER TABLE `myApps`
  ADD PRIMARY KEY (`user`,`app_id`),
  ADD KEY `app_idx` (`app_id`);

--
-- 테이블의 인덱스 `myBooks`
--
ALTER TABLE `myBooks`
  ADD PRIMARY KEY (`user`,`book_id`),
  ADD KEY `book_idx` (`book_id`);

--
-- 테이블의 인덱스 `myMovies`
--
ALTER TABLE `myMovies`
  ADD PRIMARY KEY (`user`,`movie_id`),
  ADD KEY `movie_idx` (`movie_id`);

--
-- 테이블의 인덱스 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_type`,`product_id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- 테이블의 인덱스 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `apps`
--
ALTER TABLE `apps`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `myApps`
--
ALTER TABLE `myApps`
  ADD CONSTRAINT `fk_book_myApps` FOREIGN KEY (`app_id`) REFERENCES `apps` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_myApps` FOREIGN KEY (`user`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `myBooks`
--
ALTER TABLE `myBooks`
  ADD CONSTRAINT `fk_book_myBooks` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_myBooks` FOREIGN KEY (`user`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `myMovies`
--
ALTER TABLE `myMovies`
  ADD CONSTRAINT `fk_book_myMovies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_myMovies` FOREIGN KEY (`user`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
