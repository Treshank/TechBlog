<?php
	include_once("bootstrap_cdn.php");
    if(!isset($_SESSION['username'])){
        header('Location:../index.php');
    }
    else if($_SESSION['usertype']!='admin') {
        header('Location:../index.php');
    }
?>

<!-- POSTS -->

<div class="container context">
			<div class="panel panel-default" style="width: 100%">
				<!-- TITLE -->
		  		<div class="panel-heading">
		    		<h3 class="panel-title">
		    		<?php echo $row['postTitle']; ?>
		    		</h3>
		  		</div>

		  		<!-- 	CONTENT -->
		  		<div class="panel-body">
						<?php
							echo $row['postDesc'];
		    		?>
		  		</div>

		  		<!-- FOOTER-->
		  		<div class="panel-footer">
						<span class="col-sm-2" >
				  			<span class="glyphicon glyphicon-user" aria-hidden="true"></span>

										<?php echo $row['postAuthor']; ?>

					</span>
                    <span class='col-sm-2' style="float:right">
                        <a href = '../include/accept_requested_post.php?id=<?php echo $row['postID'] ?>'  type = "button" class="btn btn-sm btn-success">
                            Accept
                        </a>
                        <a href='../include/delete_requested_post.php?id=<?php echo $row['postID'] ?>' type="button" class="btn btn-sm btn-danger">
                            Discard
                        </a>
                    </span>
		  		</div>

			<!-- comments -->
			<?php
					if(isset($_REQUEST['id'])) {
							include("../posts/comments.php");
							if(isset($_SESSION['username']))
									include("../include/commentform.php");
					}
			?>

			</div>
				<!-- end of panel -->
		</div>

		</div>
</div>
