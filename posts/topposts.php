<?php

/* SHOWS MOST VIEWED POSTS */

include("../include/url_posts.php");
include("../db/dbconnect.php");
include_once("../include/algos.php");


	$query="SELECT *
      FROM user_post , posts
      WHERE user_post.postID=posts.postID
      ORDER BY postViews DESC
      ;
      ";

	$result=mysqli_query($conn , $query);

  if($result==false) {
    echo "problem fetching posts";
  } else {
      if(mysqli_num_rows($result)) {
        include('../include/post_page.php');
      }
  }

?>
