<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "List by weekly_recommended (user can see the list of books which are under the weekly recommended list)"."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM books WHERE weekly_recommended = '1'";
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
