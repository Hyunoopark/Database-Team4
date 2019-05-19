<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "9. Movie can be sold and it is stored in MyMovies storage of a user who bought it."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title,year
  FROM myMovies, movies
  WHERE myMovies.movie_id = movies.movie_id
  AND myMovies.user = '21600301@handong.edu';
";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Title: " . $row["title"]. " / Year: " . $row["year"]."<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
