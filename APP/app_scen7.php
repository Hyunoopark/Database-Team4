<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "7. Apps can be listed based on the number sold."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM apps WHERE downloaded_num > '100000000';";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Name: " . $row["app_name"]. " / Price: " . $row["price"]. " / Number of Downloads: " . $row["downloaded_num"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
