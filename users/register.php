<?php
include("../include/url_users.php");
require_once '../include/recaptcha.php';
$site_key = '6LelmBsaAAAAAF9gh6CGs5rQL5cPdzdLm3gxBcnh';
$secret_key = '6LelmBsaAAAAAAg-H5drR039HAzUliLDm0c81oXw';
$recaptcha = new Recaptcha('register_form', $site_key, $secret_key);


/* If already logged in then redirect to previous page */
if(isset($_SESSION['username'])) {
		header('Location:../index.php');
}

if(isset($_POST['submit']) && isset($_POST['recaptcha_response'] )) {
	// Build POST request:
	$recaptcha_url = 'https://www.google.com/recaptcha/api/siteverify';
	$recaptcha_secret = '6LelmBsaAAAAAAg-H5drR039HAzUliLDm0c81oXw';
	$recaptcha_response = $_POST['recaptcha_response'];

	// Make and decode POST request:
	$recaptcha = file_get_contents($recaptcha_url . '?secret=' . $recaptcha_secret . '&response=' . $recaptcha_response);
	$recaptcha = json_decode($recaptcha);

	if ($recaptcha->score >= 0.5) {
		$username = $_POST['username'];
		$firstname = $_POST['firstname'];
		$emailid = $_POST['emailid'];
		$password = $_POST['password'];

		include("../db/dbconnect.php");

		/* CHECK if same user or email exists or not ? */
		$query = "SELECT * FROM users , users WHERE username='$username' OR emailid='$emailid' ";
		$result = mysqli_query($conn, $query);
		$rows = mysqli_num_rows($result);

		if ($rows > 0) {

			header("location:register.php");
		} else {
			$query = "INSERT INTO users_buffer (username, firstname, password, emailid)
					VALUES ('$username','$firstname','$password','$emailid')";
			mysqli_query($conn, $query);
			header("location:../index.php");
		}
	}
	else{
		echo "Unknown error";
	}

}

/* * * * * Registeration Form * * * * */
else {
	include("../include/frame_register.php");

}

?>
