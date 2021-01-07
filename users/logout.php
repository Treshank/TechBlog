<?php

include("../include/url_users.php");

session_destroy();

printf("Successfully logged out");

/* Redirect to current page */
header('Location: ' . $_SERVER['HTTP_REFERER']);
//header("location:../index.php");

?>
