<nav class="navbar navbar-expand-lg navbar-light bg-light context-nav" style="position: absolute; top:0; width: 100%;">
  <div class="container-fluid">
      <a class="navbar-brand" href="<?php echo $popular_posts_url; ?>"><h1>Tech Blog</h1></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<?php echo $posts_url; ?>">New Posts</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo $top_posts_url; ?>">Top Posts</a>
        </li>
        <li class="nav-item">
           <a class="nav-link" href="<?php echo $contact_us_url; ?>">Contact Us</a>
        </li>
      </ul>
      <form class="d-flex" role="search" action=<?php echo $search_url; ?> method="post" style="padding-right: 20px">
        <input type="text" class="form-control me-2" placeholder="Search" name="q">
        <button class="btn btn-outline-success" type="submit" name="submit">Search</button>
      </form>
       	<?php
            if(!isset($_SESSION['username'])) {
                include("loginform.php");
            }
            else {
                include("userdetail.php");
            }
       ?>
    </div>
  </div>
</nav>

<!--  HEADER -->
