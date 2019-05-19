USE playstore;

CREATE TABLE IF NOT EXISTS user (
  email varchar(30) NOT NULL,
  password varchar(30) NOT NULL,
  name varchar(20),
  birthday date,
  nationality varchar(30),
  PRIMARY KEY(email)
);

CREATE TABLE IF NOT EXISTS paymentMethod(
  serialNum bigint(20) unsigned NOT NULL,
  paymentType varchar(15) NOT NULL,
  PRIMARY KEY(paymentType, serialNum) 
);

CREATE TABLE IF NOT EXISTS product(
  product_type varchar(10) not null,
  product_id int not null,
  create_date datetime default current_timestamp,

  PRIMARY KEY (product_type, product_id),
); 

CREATE TABLE IF NOT EXISTS apps(
  app_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  app_name VARCHAR(200) NOT NULL,
  description TEXT NULL,
  developer_id INT NOT NULL,
  url VARCHAR(200) NOT NULL,
  price VARCHAR(45) NOT NULL,
  downloaded_num VARCHAR(40) NULL,
  uploaded_date DATE NOT NULL,
  latest_update DATE NULL,
  score VARCHAR(50) NULL,
  rating VARCHAR(45) NOT NULL,
  current_version VARCHAR(45) NOT NULL,
  whats_new TEXT NULL,
  num_of_reports VARCHAR(20) NULL,
  required_software VARCHAR(100) NOT NULL,
  size VARCHAR(45) NOT NULL,
  editors_choice TINYINT NULL,
  editors_choice_category VARCHAR(250) NULL,
  coming_soon TINYINT NULL DEFAULT 0,
  weekly_recommended VARCHAR(45) NULL DEFAULT 0,

  foreign key (product_id) references product(product_id)on delete set null on update cascade

)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS books(
  book_id  INT NOT NULL AUTO_INCREMENT, ISBN BIGINT NOT NULL,
  product_id INT,
  title VARCHAR(40) NOT NULL,
  author VARCHAR(30) NOT NULL,
  price INT NOT NULL,
  page  INT NOT NULL,
  genre VARCHAR(50) NOT NULL,
  language VARCHAR(30) NOT NULL,
  publisher VARCHAR(40) NOT NULL,
  posted_date DATE NOT NULL,

  PRIMARY KEY (book_id),
  foreign key (product_id) references product(product_id) on delete set null on update cascade

)DEFAULT CHARSET=utf8;

/*movies*/

CREATE TABLE IF NOT EXISTS movies ( 
  movie_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(40) NOT NULL,
  year DATE NOT NULL,
  language VARCHAR(30) NOT NULL,
  length  INT NOT NULL,
  age_limit VARCHAR(30) NOT NULL,
  subtitle VARCHAR(100) NULL,
  price INT NOT NULL,

  PRIMARY KEY (movie_id),
  foreign key (product_id) references product(product_id) on delete set null on update cascade
);

DELIMITER //
CREATE TRIGGER addProduct
BEFORE INSERT ON movies
FOR EACH ROW 
BEGIN
 INSERT INTO product(product_type, product_id) values ('movie', new.movie_id);
END;//

INSERT INTO movies (`movie_id`, `title`, `year`, `language`, `length`, `age_limit`, `subtitle`, `price`) VALUES 
(1, 'How to train your dragon3', '2019.01.11', 'korean', 104, 0, NULL, 6500) ,
(2, 'wonder', '2017.11.21', 'English', 113, 0, 'korean', 5000),
(3, 'Spiderman: homecoming', '2017.07.23', 'English', 133, 12, 'Korean', 3500),
(4, 'The dark knight', '2009.02.02', 'English', 152, 15, 'Korean', 4500)
(5, '언니','2019.1.15', 'korean', 93, 18, null, 2500 );
COMMIT;

/*add columns in movie table*/
ALTER TABLE movies ADD downloaded int default 0;

ALTER TABLE movies ADD genre varchar(25);
UPDATE movies SET genre = 'action' 
WHERE movie_id = 3 OR movie_id = 4 OR movie_id = 5;

ALTER TABLE movies ADD oscar TINYINT(1) DEFAULT 0;

ALTER TABLE movies ADD studio VARCHAR(20) default 'unknown' AFTER year; 
UPDATE movies SET studio = 'disney' 
WHERE movie_id = 1 OR movie_id = 2;

UPDATE movies SET studio = 'marvel' 
WHERE movie_id = 3;

UPDATE movies SET studio = 'warner brothers' 
WHERE movie_id = 4;

UPDATE movies SET studio = 'CJ' 
WHERE movie_id = 5;
/*create movie related tables*/


CREATE TABLE IF NOT EXISTS myMovies ( 
  user varchar(30) NOT NULL,
  movie_id INT NOT NULL,
  purchase_date datetime default current_timestamp,

  PRIMARY KEY (user,movie_id),
  INDEX movie_idx (movie_id),
  constraint fk_user_mymovies foreign key (user) references user(email) on delete CASCADE on update CASCADE,
  constraint fk_movie_mymovies foreign key (movie_id) references movies(movie_id) on delete cascade on update cascade

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO movies
(movie_id, title,year,studio,language,length,age_limit,price,genre,oscar) VALUES
(6,'LALA LAND','2016.12.11', 'warner brothers', 'English',128,'12',2500,'drama',1),
(7,'Harry Potter:magic stone','2001.11.12', 'warner brothers', 'English',152,'0', 1000,'adventure',0),
(8,'Harry Potter:magician room','2002.12.12', 'warner brothers', 'English',160,'0', 1000,'adventure',0),
(9,'Inception','2010.4.10', 'warner brothers', 'English',148,'0', 2500,'action',1),
(10,'Greate Gatsby','2013.3.12', 'warner brothers', 'English',142,'0', 2500,'drama',1),
(11,'Avengers','2012.4.12', 'marvel', 'English',142,'0', 2500,'action/adventure',0),
(12,'Avengers:age of ultron','2015.4.12', 'marvel', 'English',141,'0', 2500,'action/adventure',0),
(13,'Avengers:Infinity war','2018.4.12', 'marvel', 'English',149,'0', 2500,'action/adventure',0),
(14,'Avengers:End Game','2019.4.12', 'marvel', 'English',142,'0', 2500,'action/adventure',0)
;

INSERT INTO myMovies(user, movie_id) VALUES
('21600301@handong.edu', 1),
('21600301@handong.edu', 2),
('21600301@handong.edu', 3),
('21500172@handong.edu', 1),
('21500172@handong.edu', 4),
('21500771@handong.edu', 1),
('21500771@handong.edu', 2),
('21300333@handong.edu', 1);


/*add cloumns in myMovies table*/

ALTER TABLE myMovies ADD rented tinyint(1) default 1;

ALTER TABLE myMovies CHANGE expired_date expired_date datetime 
default (now() + interval 30 day);

UPDATE myMovies SET expired_date = DATE_ADD(purchase_date, INTERVAL 30 DAY)
WHERE movie_id = 1;

UPDATE myMovies SET expired_date = DATE_ADD(purchase_date, INTERVAL 30 DAY)
WHERE movie_id = 2;

UPDATE myMovies SET expired_date = DATE_ADD(purchase_date, INTERVAL 30 DAY)
WHERE movie_id = 3;

UPDATE myMovies SET expired_date = DATE_ADD(purchase_date, INTERVAL 30 DAY)
WHERE movie_id = 4;

CREATE TABLE IF NOT EXISTS personInMovie(
	official_id INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(30) UNIQUE,
    role varchar(15)
);

INSERT INTO personInMovie(name, role) VALUES('Christopher Nolan','director'),
('Jon watts','director'),
('Anthony Russo','director'),
('Joe Russo','director'),
('임경택','director'),
('Chris Columbus','director'),
('Leonardo DiCaprio','actor'),
('Chirs Hemsorth','actor'),
('Scarlett Johansson','actor'),
('Chris Evans','actor'),
('Robert Downey Jr','actor'),
('Tom Holland','actor'),
('Christian Bale','actor'),
('Heath Ledger','actor'),
('Daniel Redcliffe','actor'),
('Emma Watson','actor'),
('Rupert Grint','actor'),
('이시영','actor');

CREATE TABLE  IF NOT EXISTS MoviePersonel(
	official_id INT NOT NULL,
   	 movie_id INT NOT NULL,
    	PRIMARY KEY(official_id, movie_id),
    	CONSTRAINT fk_offical FOREIGN KEY (official_id) REFERENCES personInMovie(official_id) on delete CASCADE on update CASCADE,
    	CONSTRAINT fk_movie FOREIGN KEY (movie_id) REFERENCES movies(movie_id) on delete CASCADE on update CASCADE
);

INSERT INTO MoviePersonel(official_id, movie_id) 
VALUES (1,4),
(13,4);

DELIMITER //
CREATE TRIGGER downdloadedMv
AFTER INSERT ON myMovies
FOR EACH ROW 
BEGIN
 UPDATE movies SET downloaded = downloaded + 1
 WHERE movie_id = NEW.movie_id;
END;//

/*
CREATE TABLE IF NOT EXISTS wishList(
 user varchar(30) NOT NULL,
 product_type varchar(10) not null,
 product_id int not null,
 create_date datetime not null default current_timestamp,

 PRIMARY KEY (user,product_type, product_id), 
    
 CONSTRAINT fk_user FOREIGN KEY (user) REFERENCES user(email) ON DELETE CASCADE ON UPDATE CASCADE,

 CONSTRAINT fk_stored_product FOREIGN KEY (product_type, product_id) REFERENCES product(product_type, product_id) ON DELETE CASCADE ON UPDATE CASCADE
);
*/                        
INSERT INTO user (email,password,name,birthday,nationality)VALUES('21600301@handong.edu','qkrwlgus', 'jihyunpark','1995.05.06','SouthKorea'),
('21500771@handong.edu','gkalswl', 'minjiha','1996.05.07','SouthKorea'),
('21300333@handong.edu','qkrgusdn', 'hyunwoopark','1994.03.01','USA'),
('21500172@handong.edu','rlacksrud', 'chankyungkim','1995.12.25','USA');

INSERT INTO product(product_type, product_id)values('book',1),
('book',2),
('book',3),
('book',4),
('app',5),
('books',6),
('books',7),
('books',8),
('books',9);


INSERT INTO books (book_id, product_id, ISBN, title, author, price, page, genre, language, publisher, posted_date) VALUES
  (1,1, 9791189015572, 'Six wakes', 'Mur Lafferty', 9900 , 648, 'Fiction / Science Fiction / General', 'korean', 'Kyobobook MCP', 190425) ,
  (2,2, 9788932966557, 'Hollywood', 'Charles Bukowski', 9000, 486, 'Fiction / General', 'korean', 'Open books', 190503),
  (3,3, 9788934995005, 'Fact Ful Nes', 'Hans Rosling', 11880, 572, 'Literary Collections / Essays Philosophy / General', 'korean', 'Co. kimyong', 190228),
  (4,4, 9791164130801, 'Bad Blood', 'John Carreyrou', 10080, 468, 'Business & Economics / General', 'korean', 'Wiseberry', 190415);

INSERT INTO apps (`app_id`, `product_id`,`app_name`, `description`, `developer_id`, `url`, `price`, `downloaded_num`, `uploaded_date`, `latest_update`, `score`, `rating`, `current_version`, `whats_new`, `required_software`, `size`, `editors_choice`, `coming_soon`, `weekly_recommended`) VALUES ('2', 5 , 'Facebook', 'Keeping up with friends is faster and easier than ever. Share updates and photos, engage with friends and Pages, and stay connected to communities important to you. ', '2', 'https://play.google.com/store/apps/details?id=com.facebook.katana', 'FREE', '1,000,000,000+', '2010-01-01', '2019-05-14', '4.1 total 87,090,209 ', 'Rated for 12+ Parental Guidance Recommended', 'Varies with device', ' Improvements for reliability and speed', 'Varies with device', 'Varies with device', '0', '0', '0');


CREATE TABLE `wish_list` (
  `user_id` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `product_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;
