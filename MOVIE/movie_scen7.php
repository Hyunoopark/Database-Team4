<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "7. Six movies are shown at once when firstly listed."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title,year, genre, price
  FROM movies
  WHERE genre LIKE '%action%'
  OR genre LIKE '%action%'
  LIMIT 6;
";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Title: " . $row["title"]. " / Year: " . $row["year"]. " / Price: " . $row["price"]. " / Genre: " . $row["genre"]."<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
