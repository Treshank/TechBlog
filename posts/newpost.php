<?php

include("../include/url_posts.php");


/* If not logged in then redirect to login page */
if(!isset($_SESSION['username']))
{
	header("location:../users/login.php");
}

if(isset($_POST['submit'])) {

	$postTitle=$_POST['postTitle'];
	$postDesc=$_POST['postDesc'];
	$postMini=$_POST['postMini'];
	$categoryID=$_POST['catID'];
	$postAuthor=$_SESSION['username'];

	include("../db/dbconnect.php");

	/* CHECK if same user or email exists or not ? */
	$query="INSERT INTO posts_buffer (postTitle , postDesc , postAuthor, postMini, categoryID)
			VALUES ('$postTitle' , '$postDesc' , '$postAuthor', '$postMini', '$categoryID') ";
	mysqli_query($conn , $query);
	header("location:posts.php");
	printf("Successfully posted your post\n");


}

/* * * * * POST Form * * * * */
else {
	/*
	echo "
		<form action='newpost.php' method='POST' >
			Title : <input type='text' name='title'></br>
			Description : <input type='text' name='description'></br>
			Tags : <input type='text' name='tag'></br>
			<input type='submit' name='submit' value='Publish'></br>
		</form>
	";*/

	include("../include/frame_newpost.php");

}


?>
