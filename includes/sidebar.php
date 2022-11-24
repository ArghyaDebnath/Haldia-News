

<div class="col-md-3">
         
          <!-- Side Widget -->
          <div class="card my-4" style="border: 1px solid black;">
            <h5 class="card-header  text-light" style="background-color: black;">Recent News</h5>
            <div class="card-body">
                      <ul class="mb-0" style="list-style-type: none;">
            
<?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 5;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);   

$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT 5");
while ($row=mysqli_fetch_array($query)){
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
