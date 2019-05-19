<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "3. Choose an app to be weekly recommended list."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE apps SET weekly_recommended = 1 WHERE (app_id = 9);";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
} else {
    echo "Successed! Changed 1";
}
$conn->close();
?>
