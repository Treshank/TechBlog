<?php
include "../db/dbconnect.php";

if(!isset($_SESSION['username'])){
    header('Location:../index.php');
}
else if($_SESSION['usertype']!='admin') {
    header('Location:../index.php');
}
else {
    $user=$_SESSION['username'];
}

if(isset($_REQUEST['cat_name'])) {
    $cat=$_REQUEST['cat_name'];
    $query="INSERT INTO `category` (`catID`, `catName`) VALUES (NULL, `$cat`); ";
    $result=mysqli_query($conn , $query);
    if($result==TRUE) {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    } else {
        echo "Something went Wrong ! please try again later";
    }
}