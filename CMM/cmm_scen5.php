<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "5. comments can get ‘like’ from each user."."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE `comments_movies` SET num_of_likes = num_of_likes + 1 WHERE (`comment_id` = '1') and (`user_email` = 'hjkim@gmail.com') and (`movie_id` = '24');

SELECT * FROM comments_movies;

";
echo $sql."<br>"."<br>";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Email: " . $row["email"]. " / Score: " . $row["score"]. " / Comment: " . $row["comment_contents"]. "<br>";
    }
} else {
    echo "Successed!";
}
$conn->close();
?>
