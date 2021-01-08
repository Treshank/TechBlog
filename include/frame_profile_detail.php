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
          <div class="panel panel-default" style="float: none; margin: auto; margin-top: 100px">
            <div class="panel-heading">
              <h3 class="panel-title"> Profile </h3>
            </div>
            <div class="panel-body">
              <div class="row">
                  <div class=" col-md-9 col-lg-9 ">
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Name</td>
                        <td><?php echo $row['firstname']; ?></td>
                      </tr>
                      <tr>
                        <td>User Handle</td>
                        <td><?php echo $row['username']; ?></td>
                      </tr>
                        <tr>
                          <td>Email</td>
                          <td><?php echo $row['emailid']; ?></td>
                        </tr>

                      </tr>

                    </tbody>
                  </table>

                  <a href=<?php echo "../posts/post.php?user=".$_REQUEST['user']; ?> class="btn btn-default lik">My Posts</a>

                </div>
              </div>
            </div>
                  <!--
                 <div class="panel-footer">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="" type="button" class="btn btn-sm btn-default"><i class="glyphicon glyphicon-edit"></i></a>
                            <a href=<?php echo "../users/delete_user.php?user=".$row['username']; ?>  type=\"button\" class="btn btn-sm btn-default"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                  </div>
                -->
          </div>
        </div>
      </div>
  </div>
</body>
</div>
