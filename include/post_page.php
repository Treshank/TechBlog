<div class="posts card-group">
    <div class="row row-cols-2 row-cols-lg-auto gap-lg-5" style="margin: auto;">
        <?php
            while($post=mysqli_fetch_assoc($result)) {
                $id=$post['postID'];
                $title=$post['postTitle'];
                $desc=$post['postDesc'];
               // $tags=$post['postTag'];
                $author=$post['postAuthor'];
                $time=$post['postTime'];
                $mini=$post['postMini'];
                $shortpost=1;  /* short post with read more  */
                $views=showViews($id,$author);
                $likes=$post['likes'];
                include("../include/post_page_cards.php");
            }
        ?>
    </div>
</div>
<div class="categories">
    <div class="card" style="width: 400px;">
        <div class="card-header" style="background: var(--mbg)">
            <h3>Categories</h3>
        </div>
        <ul class="list-group list-group-flush">
            <?php
            $query="SELECT * FROM category ORDER BY catID";
            $res=mysqli_query($conn , $query);
            if(mysqli_num_rows($res) > 0) {
                while($post=mysqli_fetch_assoc($res)) {
                    $catid = $post['catID'];
                    $name = $post['catName'];
                    ?>
                    <li class='list-group-item'><a style="text-decoration: none" href="<?php echo "post.php?catID="; echo $catid; ?>"><?php echo "$name" ?></a></li>
                <?php    }
            }
            ?>
        </ul>
    </div>
</div>
