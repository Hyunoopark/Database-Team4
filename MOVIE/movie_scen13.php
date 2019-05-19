<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "13. Search for studio name is warner brothers"."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title, genre, price FROM movies WHERE studio LIKE '%warner brothers%';";
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
