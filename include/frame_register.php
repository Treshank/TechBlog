<head>
    <script src="https://www.google.com/recaptcha/api.js?render=6LelmBsaAAAAAF9gh6CGs5rQL5cPdzdLm3gxBcnh"></script>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6LelmBsaAAAAAF9gh6CGs5rQL5cPdzdLm3gxBcnh', { action: 'register' }).then(function (token) {
                var recaptchaResponse = document.getElementById('recaptchaResponse');
                recaptchaResponse.value = token;
            });
        });
    </script>
    <title>Register</title>
</head>

<body>
<div class="container">
<?php ob_start(); ?>
<form class="form-horizontal col-sm-offset-2" role="form" action="register.php" method="post" id="register_form">

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">User name </label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="username" placeholder="" name="username">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">First Name </label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="firstname" name="firstname" placeholder="">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">E mail </label>
    <div class="col-sm-5">
      <input type="email" class="form-control" id="email" placeholder="" name="emailid">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-5">
      <input type="password" class="form-control" id="pwd" placeholder="" name="password">
    </div>
  </div>

  <div class="form-group" style="padding-top: 10px">
    <div class="col-sm-offset-2 col-sm-5">
      <button type="submit" class="btn btn-success" name="submit">Register</button>
    </div>
  </div>

    <input type="hidden" name="recaptcha_response" id="recaptchaResponse">
</form>
</div>
</body>
