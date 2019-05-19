<?php
$servername = "localhost";
$username = "root";
$password = "zxasqw12";
$dbname = "FindDB";

echo "4. somebody can report the comment as a spam"."<br>"."<br>";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE `comments_movies` SET reported = reported + 1 WHERE (`comment_id` = '5') and (`user_email` = 'hi@gmail.com') and (`movie_id` = '1');

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
