<?php
	include("bootstrap_cdn.php");
	include("../db/dbconnect.php")
?>

<head>
	  	<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
        <script src="../ckfinder/ckfinder.js"></script>
	  	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	  	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
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
	<div class="row">
	<div class="panel panel-default">
			    <div class="panel-heading">New Post</div>
			    <div class="panel-body">

			     <!-- FORM STARTS HERE --> 
			      <form role="form" method="POST" action="newpost.php">
					  <div class="form-group">
					    <label class="control-label">Title</label>
					    <input type="text" class="form-control" name="postTitle" >
					  </div>
                      <div class="form-group">
                          <label class="control-label">Category</label>
                          <input class="form-control" list="catOptions" id="catID" name="catID" placeholder="Type to search Category...">
                          <datalist id="catOptions">
                              <?php
                              $query="SELECT * FROM category ORDER BY catID";
                                  $res=mysqli_query($conn , $query);
                                  if(mysqli_num_rows($res) > 0) {
                                      while ($post = mysqli_fetch_assoc($res)) {
                                          $catid = $post['catID'];
                                          $name = $post['catName'];
                                          echo "<option value='$catid'>$name</option>";
                                      }
                                  }
                              ?>
                          </datalist>
                      </div>
                      <div class="form-group">
                          <label class="control-label">Mini Description</label>
                          <input type="text" class="form-control" name="postMini" maxlength="200" placeholder="max 200 characters">
                      </div>

					  <div class="form-group">
  						<label for="Description">Description : </label>
  						<textarea class="form-control" rows="8" id="content" name="postDesc">
  							
  						</textarea>
  						<script type="module">
        					CKEDITOR
    						.replace( document.querySelector( '#content' ),{
                                height: 300,
                                filebrowserUploadUrl: "/ckeditor_fileupload/ajaxfile.php?type=file",
                                filebrowserImageUploadUrl: "/ckeditor_fileupload/ajaxfile.php?type=image",
                            } )
   						.then( editor => {
        						console.log( editor );
   						} )
    						.catch( error => {
        						console.error( error );
    						} );
      					</script>
					  </div>
				  	   <button type="submit" class="btn btn-secondary" name="submit" style="margin-top: 10px;">
				  	   		Publish 
				  	   	</button>
				</form>

				<!-- FORM ENDS HERE -->

			    </div>
			  </div>
			</div>
	</div>
</div>
</div
</body>