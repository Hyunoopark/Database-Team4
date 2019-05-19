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

--
-- 테이블의 덤프 데이터 `apps`
--

INSERT INTO `apps` (`app_id`, `app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `num_of_reports`, `required_software`, `size`, `editors_choice`, `editors_choice_category`, `coming_soon`, `weekly_recommended`) VALUES
(1, 'Lifove Bible', '(Report issues and suggest new functions in Developer Website below: https://github.com/lifoveBible/lifovebible/issues)', 1, 'https://play.google.com/store/apps/details?id=net.lifove.android.lifovebible', 'FREE', '50000+', '2010-01-01', '2017-08-06', '4.7 total 518', 'Rated for 3+', '7.4.6', '* 7.4.6 - Fixed a History saving issue in Android 7.0. (Note that History log of normal users may be initialized.) - Added an option to set the memo text size. (Smaller/Larger than main text size or Same as main text size options.)', NULL, 'Android 2.2 and up', '1.5M', 0, NULL, 0, '0'),
(2, 'Facebook', 'Keeping up with friends is faster and easier than ever. Share updates and photos, engage with friends and Pages, and stay connected to communities important to you. ', 2, 'https://play.google.com/store/apps/details?id=com.facebook.katana', 'FREE', '1,000,000,000+', '2010-01-01', '2019-05-14', '4.1 total 87,090,209 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', ' Improvements for reliability and speed', NULL, 'Varies with device', 'Varies with device', 0, NULL, 0, '0'),
(3, 'Instagram', 'Instagram is a simple way to capture and share the world’s moments. Follow your friends and family to see what they’re up to, and discover accounts from all over the world that are sharing things you love. Join the community of over 1 billion people and express yourself by sharing all the moments of your day — the highlights and everything in between, too.', 3, 'https://play.google.com/store/apps/details?id=com.instagram.android', 'FREE', '1,000,000,000+', '2010-01-01', '2019-05-14', '4.5 total 81,753,198 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', NULL, NULL, 'Varies with device', 'Varies with device', 0, NULL, 0, '0'),
(4, 'KakaoTalk: Free Calls & Text', 'KakaoTalk is a fast & multifaceted messaging app. Send messages, photos, videos, voice notes and your location for free. Make chatting extra fun with an array of emoticons and sticker collections. ', 4, 'https://play.google.com/store/apps/details?id=com.kakao.talk', 'FREE', '100,000,000+', '2010-01-01', '2019-05-02', '4.3 total 2,765,467 ', 'Rated for 3+', '8.3.6', '[v8.3.6] KakaoTalk is updated regularly in order to provide you a better service. This update includes bug fixes and stability improvements. ', NULL, '4.4 and up', '62M', 0, NULL, 0, '0'),
(5, '네이버 - NAVER', 'You will find neat, search-centered screen with organized contents, fun and trendy shopping, and our new feature \'Green Dot\' which helps you find the information you want at all times. Download the New Naver app now to have brand new experiences in advance.', 5, 'https://play.google.com/store/apps/details?id=com.nhn.android.search', 'FREE', '50,000,000+', '2010-01-01', '2019-05-03', '3.9 total 459,166 ', 'Rated for 3+', 'Varies with device', '- 보안 인증서 오류 수정 - 기타 사용성 개선 및 안정성 강화', NULL, 'Varies with device', 'Varies with device', 0, NULL, 0, '0');

-- --------------------------------------------------------

--
-- 테이블 구조 `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `ISBN` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `author` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `language` varchar(30) NOT NULL,
  `publisher` varchar(40) NOT NULL,
  `posted_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- 테이블 구조 `myBooks`
--

CREATE TABLE `myBooks` (
  `user` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `purchase_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `myMovies`
--

CREATE TABLE `myMovies` (
  `user` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `movie_id` int(11) NOT NULL,
  `purchase_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `products`
--

CREATE TABLE `products` (
  `product_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
