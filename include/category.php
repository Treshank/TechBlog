<?php
if(!isset($_SESSION['username'])){
    header('Location:../index.php');
}
else if($_SESSION['usertype']!='admin') {
    header('Location:../index.php');
}
else {
    $user=$_SESSION['username'];
}
$addCatlink = '../include/add_category.php';
echo
"<div class='add_cat'>
    <form name='addcat' method='post' action='$addCatlink'>
        Add category: <input type='text' placeholder='Category Name' name='cat_name' id='cat_name'><input type='submit' placeholder='add'>
    </form>
</div>
</div>

<table class='table' style='width:400px'>
    <tr>
        <th>ID</th>
        <th>Name</th>
    </tr>
<tbody>" ;

$query='SELECT * FROM category ORDER BY catID DESC';
$result=mysqli_query($conn , $query );

if($result) {
    if(mysqli_num_rows($result)>0) {
        while($row=mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>".$row['catID']."</td>";
            echo "<td>".$row['catName']."</td>";
            echo "</tr>";
        }
        echo "
    </tbody>
  </table>
   ";

    }
} else {
    echo "failed";
}
?>