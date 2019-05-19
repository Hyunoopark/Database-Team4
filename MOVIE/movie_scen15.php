<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "12. All Movies where specific one actor/actress starred in are also able to be shown"."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title, genre, price, personInMovie.name
  FROM personInMovie, (SELECT title, genre, price, MoviePersonel.official_id as relatedP
  FROM movies
  JOIN MoviePersonel
  ON movies.movie_id = MoviePersonel.movie_id
  ) peoplerelated
  WHERE personInMovie.role = 'actor'
  AND personInMovie.official_id = relatedP
  AND personInMovie.name LIKE '%Leonardo DiCaprio%';
";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo "Title: " . $row["title"]. " / Price: " . $row["price"]. " / Genre: " . $row["genre"]."<br>";
  }
} else {
    echo "0 results";
}
$conn->close();
?>
