<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "1. Movies can be listed by popularity(Ranking)."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title,year, downloaded FROM movies ORDER BY downloaded DESC;";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Title: " . $row["title"]. " / Year: " . $row["year"]. " / Number of Downloads: " . $row["downloaded"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
