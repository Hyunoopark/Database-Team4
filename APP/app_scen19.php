<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "19. Apps can be listed by top recently download."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM (SELECT download_apps.app_id, COUNT(*) FROM download_apps WHERE date = '2019-05-18' GROUP BY app_id ORDER BY COUNT(*) DESC) AS dt_c, apps WHERE dt_c.app_id = apps.app_id;";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Name: " . $row["app_name"]. " / Price: " . $row["price"]. " / Date: " . $row["date"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
