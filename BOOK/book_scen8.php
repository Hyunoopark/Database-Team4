<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "8. Book can be sold and it is stored in MyBooks storage of a user who bought it."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT *
    FROM myBooks, books
    WHERE myBooks.book_id = books.book_id
    AND myBooks.user = '21300333@handong.edu';
";
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
