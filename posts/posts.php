<?php
include("../include/url_posts.php");
include_once("../include/algos.php");

 ?>

<?php

	/* CHECK if same user or email exists or not ? */
	$query="SELECT * FROM posts ORDER BY postTime DESC";
	$result=mysqli_query($conn , $query);

	if(mysqli_num_rows($result) > 0) {
        include('../include/post_page.php');
	}
?>