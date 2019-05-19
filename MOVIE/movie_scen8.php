<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "8. When one movie is chosen, the detailed information of the movie is shown."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM movies WHERE movies.title = '언니';";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Title: " . $row["title"]. " / Year: " . $row["year"]. " / Number of Downloads: " . $row["downloaded"]. " / Genre: " . $row["genre"]."<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
