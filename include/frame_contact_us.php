<?php

if(isset($_POST['submit'])) {
        // Check if name has been entered
        if (!$_POST['name']) {
        $errName = 'Please enter your name';
        }

        // Check if email has been entered and is valid
        if (!$_POST['email'] || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $errEmail = 'Please enter a valid email address';
        }

        //Check if message has been entered
        if (!$_POST['message']) {
        $errMessage = 'Please enter your message';
        }
        //Check if simple anti-bot test is correct
        if ($human !== 5) {
        $errHuman = 'Your anti-spam is incorrect';
        }
} else {
  $errName="";
  $errEmail="";
  $errMessage="";
  $errHuman="";
}
 ?>
<head>
    <script src="https://www.google.com/recaptcha/api.js?render=6LelmBsaAAAAAF9gh6CGs5rQL5cPdzdLm3gxBcnh"></script>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6LelmBsaAAAAAF9gh6CGs5rQL5cPdzdLm3gxBcnh', { action: 'contact_us' }).then(function (token) {
                var recaptchaResponse = document.getElementById('recaptchaResponse');
                recaptchaResponse.value = token;
            });
        });
    </script>
    <title>Contact Us</title>
</head>
<body  class="area"">
<ul class="circles">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
</ul>
<div class="container">
    <div class="my-card" style="width: 500px">
        <h2>Tech Blog</h2>
        <h4>Register</h4>
      <form class="form-horizontal" role="form" method="post" action="contact_us.php" id="contact_form">
          <div class="form-group">
              <label for="name" class="control-label">Name</label>
              <div style="width: 90%; margin: auto">
                  <input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name" >
                  <?php echo "<p class='text-danger'>$errName</p>";?>
              </div>
          </div>
          <div class="form-group">
              <label for="email" class="control-label">Email</label>
              <div style="width: 90%; margin: auto">
                  <input type="email" class="form-control" id="email" name="email" placeholder="example@domain.com">
                  <?php echo "<p class='text-danger'>$errEmail</p>";?>
              </div>
          </div>
          <div class="form-group">
              <label for="message" class="control-label">Message</label>
              <div style="width: 90%; margin: auto">
                  <textarea class="form-control" rows="4" name="message"></textarea>
                  <?php echo "<p class='text-danger'>$errMessage</p>";?>
              </div>
          </div>
          <div class="form-group">
              <div class="col-sm-10 col-sm-offset-2" style="margin: auto">
                  <input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
              </div>
          </div>
          <input type="hidden" name="recaptcha_response" id="recaptchaResponse">
          <div class="form-group">
              <div class="col-sm-10 col-sm-offset-2">
                  <?php
                  if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['recaptcha_response'])) {

                      // Build POST request:
                      $recaptcha_url = 'https://www.google.com/recaptcha/api/siteverify';
                      $recaptcha_secret = '6LelmBsaAAAAAAg-H5drR039HAzUliLDm0c81oXw';
                      $recaptcha_response = $_POST['recaptcha_response'];

                      // Make and decode POST request:
                      $recaptcha = file_get_contents($recaptcha_url . '?secret=' . $recaptcha_secret . '&response=' . $recaptcha_response);
                      $recaptcha = json_decode($recaptcha);

                      // Take action based on the score returned:
                      if ($recaptcha->score >= 0.5) {
                          if (isset($result))
                              echo $result;
                      }
                  }else {
                  }

                  ?>
              </div>
          </div>
      </form>
    </div>
</div>
</body>
</div>
</body>
