<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "Apps can be recommended.";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT email, name, birthday FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "email: " . $row["email"]. " - Name: " . $row["name"]. " " . $row["birthday"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
