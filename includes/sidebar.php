
<div class="col-md-3">
         
          <!-- Side Widget -->
          <div class="card my-4" style="border: 1px solid black;">
            <h5 class="card-header  text-light" style="background-color: black;">Recent News</h5>
            <div class="card-body">
                      <ul class="mb-0" style="list-style-type: none;">
            <?php
              $query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId limit 8");
              while ($row=mysqli_fetch_array($query)) {

            ?>

   <a style="text-decoration:none;color:black;" href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>">
    <img src="images/right.gif" alt="→" style="height: 20px;width:20%;float:left;">
    <li >
      <?php echo htmlentities($row['posttitle']);?>
    </li>
  </a>
            <?php } ?>
          </ul>
            </div>
          </div>

</div>
