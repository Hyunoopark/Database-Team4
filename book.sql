CREATE TABLE IF NOT EXISTS books(
  book_id  INT NOT NULL AUTO_INCREMENT,
  ISBN BIGINT NOT NULL,
  product_id INT,
  title VARCHAR(40) NOT NULL,
  author VARCHAR(30) NOT NULL,
  price INT DEFAULT NULL,
  page  INT NOT NULL,
  genre VARCHAR(50) NOT NULL,
  language VARCHAR(30) NOT NULL,
  publisher VARCHAR(40) NOT NULL,
  posted_date DATE NOT NULL,
  num_sales BIGINT NOT NULL,

  PRIMARY KEY (book_id),
  foreign key (product_id) references product(product_id) on delete set null on update cascade

)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS myBooks (
  user VARCHAR(30) NOT NULL,
  book_id INT NOT NULL,
  purchase_date datetime default current_timestamp,

  PRIMARY KEY(user, book_id),
  INDEX book_idx (book_id),
  CONSTRAINT fk_user_myBooks FOREIGN KEY(user) REFERENCES user(email) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_book_myBooks FOREIGN KEY(book_id) REFERENCES books(book_id) ON UPDATE CASCADE ON DELETE CASCADE
);

  INSERT INTO books (`book_id`, `ISBN`, 'product_id', `title`, `author`, `price`, `page`, 'genre', `language`, 'publisher', 'posted_date', 'num_sales') VALUES
  (1, 9791189015572, 5, 'Six wakes', 'Mur Lafferty', 9900 , 648, 'Fiction / Science Fiction / General', 'korean', 'Kyobobook MCP', 190425, 0) ,
  (2, 9788932966557, 6, 'Hollywood', 'Charles Bukowski', 9000, 486, 'Fiction / General', 'korean', 'Open books', 190503, 0),
  (3, 9788934995005, 7, 'Fact Ful Nes', 'Hans Rosling', 11880, 572, 'Literary Collections / Essays Philosophy / General', 'korean', 'Co. kimyong', 190228, 0),
  (4, 9791164130801, 8, 'Bad Blood', 'John Carreyrou', 10080, 468, 'Business & Economics / General', 'korean', 'Wiseberry', 190415, 0);

  INSERT INTO books (`book_id`,`ISBN`, `product_id`, `title`, `author`, `price`, `page`, `genre`, `language`, 'publisher', 'posted_date') VALUES
  (1, 9791189015572, 5, 'Six wakes', 'Mur Lafferty', 9900 , 648, 'Fiction / Science Fiction / General', 'korean', 'Kyobobook MCP', 190425, 0) ,
  (2, 9788932966557, 6, 'Hollywood', 'Charles Bukowski', 9000, 486, 'Fiction / General', 'korean', 'Open books', 190503, 0),
  (3, 9788934995005, 7, 'Fact Ful Nes', 'Hans Rosling', 11880, 572, 'Literary Collections / Essays Philosophy / General', 'korean', 'Co. kimyong', 190228, 0),
  (4, 9791164130801, 8, 'Bad Blood', 'John Carreyrou', 10080, 468, 'Business & Economics / General', 'korean', 'Wiseberry', 190415, 0);

  SELECT * FROM books WHERE genre LIKE "%Fiction%";
  // Searching for Fiction Genres

  SELECT * FROM books ORDER BY posted_date DESC limit 30;
  // 신작 보기 (30개 제한 )

  SELECT * FROM books WHERE genre LIKE "%Fiction%" ORDER BY posted_date DESC limit 30;
  // Fiction(특정) 장르의 최신작 보기 (30개 제한)

  SELECT * FROM books WHERE NOT genre LIKE '%Fiction%' ORDER BY posted_date DESC limit 30;
  // NonFiction 장르의 최신작 보기 (30개 제한)

  SELECT * FROM books WHERE weekly_recommended = '1';
  // 추천 스터디셀러 보기

  SELECT * FROM books ORDER BY num_sales DESC limit 30;
  // 최다 판매 book 나열

  SELECT * FROM books WHERE price = null ORDER BY num_sales DESC limit 30;
  // 인기 무료 도서 보기



  //mybooks를 통해 구매한 책이 있다면 num_sales 업데이트 해주기

  delimiter |
  CREATE TRIGGER tri_mybooks_ins_aft BEFORE INSERT ON myBooks
  FOR EACH ROW BEGIN
  UPDATE books SET books.num_sales = books.num_sales+1
  WHERE books.book_id = new.book_id;
  END;
  |

  INSERT INTO myBooks(user, book_id) VALUES
  ('21600301@handong.edu', 1),
  ('21600301@handong.edu', 2),
  ('21600301@handong.edu', 3),
  ('21500172@handong.edu', 1),
  ('21500172@handong.edu', 4),
  ('21500771@handong.edu', 1),
  ('21500771@handong.edu', 2),
  ('21300333@handong.edu', 1);

INSERT INTO movies (`movie_id`,`product_id`, `title`, `year`, `language`, `length`, `age_limit`, `subtitle`, `price`) VALUES
(1, 6,'How to train your dragon3', '2019.01.11', 'korean', 104, 0, NULL, 6500) ,
(2, 7,'wonder', '2017.11.21', 'English', 113, 0, 'korean', 5000),
(3, 8,'Spiderman: homecoming', '2017.07.23', 'English', 133, 12, 'Korean', 3500),
(4, 9,'The dark knight', '2009.02.02', 'English', 152, 15, 'Korean', 4500);

CREATE TABLE IF NOT EXISTS myMovies (
  user VARCHAR(30) NOT NULL,
  movie_id INT NOT NULL,
  purchase_date datetime default current_timestamp,

  PRIMARY KEY(user, movie_id),
  INDEX movie_idx (movie_id),
  CONSTRAINT fk_user_myMovies FOREIGN KEY(user) REFERENCES user(email) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_book_myMovies FOREIGN KEY(movie_id) REFERENCES movies(movie_id) ON UPDATE CASCADE ON DELETE CASCADE
);
