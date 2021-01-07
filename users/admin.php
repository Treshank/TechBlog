<?php
include("../include/url_users.php");
include("../include/bootstrap_cdn.php");
error_reporting(E_ALL ^ E_WARNING);
if(!isset($_SESSION['username'])){
	header('Location:../index.php');
}
else if($_SESSION['usertype']!='admin') {
  header('Location:../index.php');
}
else {
	$user=$_SESSION['username'];
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container">
  <h2>Admin Panel</h2>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" id="posts-tab" data-bs-toggle="tab" role="tab" aria-controls="posts" aria-selected="true" href="#posts">Post Requests</a>
        </li>
        <li class="nav-item">
            <a <a class="nav-link" id="acc-tab" data-bs-toggle="tab" role="tab" aria-controls="acc" aria-selected="false" href="#acc">Account Requests</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="user-tab" data-bs-toggle="tab" role="tab" aria-controls="user" aria-selected="false" href="#user">User Details</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="messages-tab" data-bs-toggle="tab" role="tab" aria-controls="messages" aria-selected="false" href="#messages">Messages</a>
        </li>
<!--        <li class="nav-item">-->
<!--            <a class="nav-link" id="category-tab" data-bs-toggle="tab" role="tab" aria-controls="category" aria-selected="false" href="#category">Categories</a>-->
<!--        </li>-->
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="posts" role="tabpanel" aria-labelledby="posts">
            <?php include("../include/post_request.php"); ?>
        </div>
        <div class="tab-pane fade" id="acc" role="tabpanel" aria-labelledby="acc-tab">
            <?php include("../include/account_request.php");?>
        </div>
        <div class="tab-pane fade" id="user" role="tabpanel" aria-labelledby="user-tab">
            <?php include("userlist.php");?>
        </div>
        <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="messages-tab"><?php
            include("../include/messages.php");
            ?></div>
<!--        <div class="tab-pane fade" id="category" role="tabpanel" aria-labelledby="category-tab">--><?php
//            include("../include/category.php");
//            ?><!--</div>-->
    </div>
</div>
</body>
</html>
