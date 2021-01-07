<?php
include("../db/dbconnect.php");
if (isset($_POST['liked'])) {
    $postid = $_POST['postid'];
    $result = mysqli_query($conn, "SELECT * FROM posts WHERE postID=$postid");
    $row = mysqli_fetch_array($result);
    $n = $row['likes'];

    mysqli_query($conn, "INSERT INTO likes (userid, postid) VALUES (1, $postid)");
    mysqli_query($conn, "UPDATE posts SET likes=$n+1 WHERE postID=$postid");

    echo $n+1;
    exit();
}
if (isset($_POST['unliked'])) {
    $postid = $_POST['postid'];
    $result = mysqli_query($conn, "SELECT * FROM posts WHERE postID=$postid");
    $row = mysqli_fetch_array($result);
    $n = $row['likes'];

    mysqli_query($conn, "DELETE FROM likes WHERE postid=$postid AND userid=1");
    mysqli_query($conn, "UPDATE posts SET likes=$n-1 WHERE postID=$postid");

    echo $n-1;
    exit();
}
?>