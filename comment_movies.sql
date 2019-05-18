CREATE TABLE `comments_movies` (
  `comment_id` BIGINT NOT NULL,
  `movie_id` INT NOT NULL,
  `comment_contents` TEXT NOT NULL,
  `score` INT NULL,
  `commented_date` TIMESTAMP NOT NULL,
  `num_of_likes` INT NULL,
  `reported` INT(11) NULL,
  `user_email` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`comment_id`, `user_email`, `movie_id`));
  
  INSERT INTO `comments_movies` (`comment_id`, `movie_id`, `comment_contents`, `score`, `commented_date`, `num_of_likes`, `user_email`) VALUES ('1', '24', '재미없음', '1', '2019-05-21', '1', 'hjkim@gmail.com');
