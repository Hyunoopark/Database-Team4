<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "3. comments are listed in latest date order."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM comments_movies ORDER BY commented_date DESC;";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Email: " . $row["email"]. " / Score: " . $row["score"]. " / Comment: " . $row["comment_contents"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
