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
<div class="context">
<div class="container">
<?php ob_start(); ?>
    <div class="my-card" style="width: 400px">
        <h2>Tech Blog</h2>
        <h4>Register</h4>
        <form role="form" action="register.php" method="post" id="register_form">

          <div class="form-group">
            <label class="control-label" for="email">User name </label>
            <div style="width: 90%; margin: auto">
              <input type="text" class="form-control" id="username" placeholder="" name="username">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label" for="email">First Name </label>
              <div style="width: 90%; margin: auto">
              <input type="text" class="form-control" id="firstname" name="firstname" placeholder="">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label" for="email">E mail </label>
              <div style="width: 90%; margin: auto">
              <input type="email" class="form-control" id="email" placeholder="" name="emailid">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label" for="pwd">Password:</label>
              <div style="width: 90%; margin: auto">
              <input type="password" class="form-control" id="pwd" placeholder="" name="password">
            </div>
          </div>

          <div class="form-group" style="padding-top: 10px">
            <div class="col-sm-offset-2 col-sm-5" style="margin: auto">
              <button type="submit" class="btn btn-success" name="submit">Register</button>
            </div>
          </div>

            <input type="hidden" name="recaptcha_response" id="recaptchaResponse">
        </form>
    </div>
</div>
</div>
</body>
