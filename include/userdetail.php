<?php
$username=$_SESSION['username'];
?>

<ul class="navbar-nav mb-2 mb-lg-0" style="padding-left: 10px">
     <li class="nav-item nav-link"><a href=<?php echo $newpost_url ?> >
             <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentcolor" class="bi bi-patch-plus-fill" viewBox="0 0 16 16" color="#04724D">
                 <path d="M10.067.87a2.89 2.89 0 0 0-4.134 0l-.622.638-.89-.011a2.89 2.89 0 0 0-2.924 2.924l.01.89-.636.622a2.89 2.89 0 0 0 0 4.134l.637.622-.011.89a2.89 2.89 0 0 0 2.924 2.924l.89-.01.622.636a2.89 2.89 0 0 0 4.134 0l.622-.637.89.011a2.89 2.89 0 0 0 2.924-2.924l-.01-.89.636-.622a2.89 2.89 0 0 0 0-4.134l-.637-.622.011-.89a2.89 2.89 0 0 0-2.924-2.924l-.89.01-.622-.636zM8.5 6v1.5H10a.5.5 0 0 1 0 1H8.5V10a.5.5 0 0 1-1 0V8.5H6a.5.5 0 0 1 0-1h1.5V6a.5.5 0 0 1 1 0z"/>
             </svg>
         </a>
     </li>

    <li class="nav-item">
        <a class="nav-link" href=<?php echo $profile_url; echo "?user=".$username; ?> >
            Hello <?php echo "$username" ?>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href=<?php echo $logout_url ?> >
            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-patch-plus-fill" viewBox="0 0 12 16">
                <path d="M7.5 1v7h1V1h-1z"></path>
                <path d="M3 8.812a4.999 4.999 0 0 1 2.578-4.375l-.485-.874A6 6 0 1 0 11 3.616l-.501.865A5 5 0 1 1 3 8.812z"></path>
            </svg>
            <span class="bi bi-power" aria-hidden="true"></span>
        </a>
    </li>
 </ul>
