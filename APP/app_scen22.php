<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "22. List all the apps that user had installed."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT email_id, app_name FROM download_apps LEFT JOIN apps ON download_apps.app_id = apps.app_id WHERE email_id = '21600301@handong.edu';";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Email: " . $row["email_id"]. " / App Name: " . $row["app_name"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
