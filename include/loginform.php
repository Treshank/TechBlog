<form action=<?php echo $login_url; ?> method="POST">
    <ul class="navbar-nav">
        <li class="nav-link"><input type="text" class="form-control me-2" placeholder="Username" name="username"></li>
        <li class="nav-link"><input type="password" class="form-control me-2" placeholder="Password" name="password"></li>
        <li class="nav-link nav-item">
            <button type="submit" class="btn" name="submit">Sign In</button>
        </li>
        <li class="nav-link nav-item"> <a href=<?php echo $register_url; ?> class="btn">Sign up</a></li>
    </ul>
</form>

 <!-- Split button -->
 <!--
<div class="btn-group">
  <button type="button" class="btn btn-danger">Action</button>
  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="caret"></span>
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
    <li><a href="#">Something else here</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">Separated link</a></li>
  </ul>
</div>
-->
