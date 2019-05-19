<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "6. Movies ,which have once won the Oscar, under action fiction(genre)"."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title,year, genre, price
  FROM movies
  WHERE genre LIKE '%action%' OR genre LIKE '%adventure%'
  AND oscar = 1
  ORDER BY downloaded DESC;
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
