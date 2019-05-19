CREATE TABLE `books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(40) NOT NULL,
  `author` varchar(30) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `page` int(11) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `language` varchar(30) NOT NULL,
  `publisher` varchar(40) NOT NULL,
  `posted_date` date NOT NULL,
  `num_sales` bigint(20) NOT NULL,

  PRIMARY KEY(`book_id`)
);

//add weekly_recommended attribute
ALTER TABLE `books`
ADD COLUMN `weekly_recommended` VARCHAR(45) NULL DEFAULT 0 AFTER `num_sales`;

CREATE TABLE `myBooks` (
  `user` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `purchase_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO books (`ISBN`, `product_id`, `title`, `author`, `price`, `page`, `genre`, `language`, `publisher`, `posted_date`, `num_sales`) VALUES
(9791189015572, 5, 'Six wakes', 'Mur Lafferty', 9900 , 648, 'Fiction / Science Fiction / General', 'korean', 'Kyobobook MCP', 190425, 0) ,
(9788932966557, 6, 'Hollywood', 'Charles Bukowski', 9000, 486, 'Fiction / General', 'korean', 'Open books', 190503, 0),
(9788934995005, 7, 'Fact Ful Nes', 'Hans Rosling', 11880, 572, 'Literary Collections / Essays Philosophy / General', 'korean', 'Co. kimyong', 190228, 0),
(9791164130801, 8, 'Bad Blood', 'John Carreyrou', 10080, 468, 'Business & Economics / General', 'korean', 'Wiseberry', 190415, 0);


INSERT INTO books (`ISBN`, `product_id`, `title`, `author`, `price`, `page`, `genre`, `language`, `publisher`, `posted_date`, `num_sales`) VALUES
(9791126534159, 9, 'Figering in bed', '계바비', 3150, 425, 'Fiction / Romance / General', 'korean', 'Donga', 190111, 0),
(NULL, null, '황제의 검', '임무성', null, 220, 'Fiction / Action & Adventure', 'korean', '환상북스', 120425, 0);

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

  SELECT title, author FROM books ORDER BY num_sales DESC limit 30;
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
