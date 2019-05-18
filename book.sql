CREATE TABLE IF NOT EXISTS books(
  book_id  INT NOT NULL AUTO_INCREMENT, ISBN BIGINT NOT NULL,
  product_id INT,
  title VARCHAR(40) NOT NULL,
  author VARCHAR(30) NOT NULL,
  price INT DEFAULT NULL,
  page  INT NOT NULL,
  genre VARCHAR(50) NOT NULL,
  language VARCHAR(30) NOT NULL,
  publisher VARCHAR(40) NOT NULL,
  posted_date DATE NOT NULL,
  num_sales BIGINT DEFAULT NULL,

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

  INSERT INTO books (`book_id`, `ISBN`, `title`, `author`, `price`, `page`, 'genre', `language`, 'publisher', 'posted_date') VALUES
  (1, 9791189015572, 'Six wakes', 'Mur Lafferty', 9900 , 648, 'Fiction / Science Fiction / General', 'korean', 'Kyobobook MCP', 190425) ,
  (2, 9788932966557, 'Hollywood', 'Charles Bukowski', 9000, 486, 'Fiction / General', 'korean', 'Open books', 190503),
  (3, 9788934995005, 'Fact Ful Nes', 'Hans Rosling', 11880, 572, 'Literary Collections / Essays Philosophy / General', 'korean', 'Co. kimyong', 190228),
  (4, 9791164130801, 'Bad Blood', 'John Carreyrou', 10080, 468, 'Business & Economics / General', 'korean', 'Wiseberry', 190415);

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
