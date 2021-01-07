<?php

/* search.php?q='dp' */

include("../include/url_posts.php");
include("../include/algos.php");

if(isset($_POST['submit'])) {
	$q=$_POST['q'];
} else {
	printf("No search Result found here");
	$q='';

}

$query="SELECT * FROM posts WHERE 
                          instr(postTitle,'$q') OR
                          instr(postDesc,'$q') OR
                          instr(postAuthor,'$q') OR
                          categoryID IN (select catID from category where inStr(category.catName,'$q')) ";

$result=mysqli_query($conn , $query);

if(mysqli_num_rows($result)) {
	include("../include/post_page.php");
}

?>
