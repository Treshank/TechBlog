<div class='panel-footer-comments'>
<?php
    /* fetch comments from db */
      $query="SELECT * FROM comments WHERE postID='$id'  ";
      $result=mysqli_query($conn , $query);

      if($result) {
        echo "
        <h4>Comments</h4>
        ";
          if(mysqli_num_rows($result) > 0) {
            while($comment=mysqli_fetch_assoc($result)) {
                include("../include/frame_comment.php");
            }
          }
      } else {
        echo "Query failed";
      }
?>
</div>
