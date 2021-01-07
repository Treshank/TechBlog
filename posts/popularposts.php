<?php

/* SHOWS Popular POSTS */

include("../include/url_posts.php");
include("../db/dbconnect.php");
include_once("../include/algos.php");


$query="SELECT *
      FROM posts
      ORDER BY likes DESC
      ;
      ";

$result=mysqli_query($conn , $query);

if($result==false) {
    echo "problem fetching posts";
} else {
    if(mysqli_num_rows($result)) {
        /* set variables */
        include('../include/post_page.php');
    }
}

?>

