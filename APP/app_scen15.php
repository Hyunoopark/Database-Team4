<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "15. When the detail of an app is shown, all the comments related are shown "."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT app_name, user_id, comment_contents, comments_apps.score, commented_date, num_of_likes  FROM apps LEFT JOIN comments_apps ON apps.app_id = comments_apps.app_id WHERE comment_id > 0;";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Name: " . $row["app_name"]. " / email: " . $row["user_id"]. " / Comment_contents: " . $row["comment_contents"]. " / score: " . $row["comments_apps.score"]." / Date: " . $row["commented_date"]." / Number of likes: " . $row["num_of_likes"]."<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
