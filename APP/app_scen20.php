<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "20. Increment the number of downloaded_num if someone buys the app."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "DELETE FROM `FindDB`.`download_apps` WHERE (`email_id` = '21500771@handong.edu') and (`app_id` = '1');";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

$sql = "SELECT * FROM apps WHERE app_id = '1';";
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

$sql = "INSERT INTO `download_apps` (`email_id`, `app_id`, `date`, `paid_amount`, `is_deleted`, `need_update`) VALUES ('21500771@handong.edu', '1', '2019-05-15', '0', '0', '0');";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

$sql = "SELECT * FROM apps WHERE app_id = '1';";
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
