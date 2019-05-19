<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "2. Newly released movies can be listed to users.(in a year)"."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title, price
  FROM movies
  WHERE year BETWEEN NOW() - INTERVAL 365 DAY AND NOW();
";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Title: " . $row["title"]. " / Price: " . $row["price"]."<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
