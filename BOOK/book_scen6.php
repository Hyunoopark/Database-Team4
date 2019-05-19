<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "6. List by the highest number of books with free prices"."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM books WHERE price = 0 ORDER BY num_sales DESC limit 30;";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo "Title: " . $row["title"]. " / Author: " . $row["author"]. " / Publisher: " . $row["publisher"]. " / Price: " . $row["price"]. "<br>" ;
  }
} else {
    echo "0 results";
}
$conn->close();
?>
