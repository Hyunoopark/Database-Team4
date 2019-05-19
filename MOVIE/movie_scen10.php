<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "10. while user seeing the information of the movie, similar movies are recommended"."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT movies.title, movies.price, movies.genre
  FROM movies, (SELECT MyMvList.user as user_id, MyMvList.movie_id as movie_id, count(myMovies.movie_id) as other_user
  FROM (SELECT user,movie_id FROM myMovies WHERE user = '21600301@handong.edu') as MyMvList
  JOIN myMovies
  ON MyMvList.movie_id = myMovies.movie_id
  AND (myMovies.user <> '21600301@handong.edu')
  GROUP BY myMovies.movie_id
  ORDER BY other_user DESC) as recommend
  WHERE movies.movie_id = recommend.movie_id
  AND movies.genre = (select genre from movies where movies.title = 'Avengers')
LIMIT 3;
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
