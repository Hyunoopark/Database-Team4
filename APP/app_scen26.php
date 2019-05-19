<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "26. User leaves comment and gives score on the app."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT app_name, score_average FROM apps WHERE app_id = '1';";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Name: " . $row["app_name"]. " / Average Score: " . $row["score_average"] . "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
