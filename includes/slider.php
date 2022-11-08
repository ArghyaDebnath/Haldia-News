<style>
  @import url('https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap');
body {
  padding-top: 60px;
}
.carousel-indicators {
  bottom: 2041px;
}
.carousel-item {
  height: 90vh;
  min-height: 300px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

.portfolio-item {
  margin-bottom: 30px;
}
@media screen and (max-width: 600px) {
  body {
    padding-top: 60px;
  }
  .carousel-item {
  height:26vh;
  min-height: 237px;
      
  }
  #slider-text{
  background: rgba(0, 0, 0, 0.699);
  padding: 4vh;
  width: 100%;
  /* position: initial; */
  margin-left: -238px;
  font-size: 25px;
  font-family: 'Oswald', sans-serif;
  max-width: 100% !important;
    padding: 0 !important;
    line-height: 14px !important;
    position: absolute !important;
    margin-left: unset !important;
    text-align: center !important;
    top: 50%;
    left: 0 !important;
    right: 0 !important;
    bottom: auto;
    transform: translateY(-50%);
  }
  .carousel-indicators {
  bottom: 2295px;
}

}
#slider-text{
  background: rgba(0, 0, 0, 0.699);
  padding: 4vh;
  width: 100%;
  /* position: initial; */
  margin-left: -238px;
  font-size: 25px;
  font-family: 'Oswald', sans-serif;
  

}

</style>
<?php 
include('admin/includes/config.php');

    ?>
    <?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 1;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
while ($row=mysqli_fetch_array($query)) {
?>

<div id="carouselExampleIndicators" class="carousel slide pt-1" data-ride="carousel">
   <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
     <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>"><img class="d-block w-100" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>"> </a>
       <div class="carousel-caption d-none d-md-block" id="slider-text">
   <div class="card-title" id="card-title"><?php echo htmlentities($row['posttitle']);?></div>
  </div>
    </div>
<?php } ?>
<?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 2;
        }
        $no_of_records_per_page = 1;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);   

$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
while ($row=mysqli_fetch_array($query)){
?>    
    <div class="carousel-item">
       <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>"><img class="d-block w-100" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>"></a>
       <div class="carousel-caption d-none d-md-block"  id="slider-text">
    <div class="card-title"><?php echo htmlentities($row['posttitle']);?></div>
  </div>
    </div>

<?php } ?>
<?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 3;
        }
        $no_of_records_per_page = 1;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);   

$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
while ($row=mysqli_fetch_array($query)){
?>
    <div class="carousel-item">
       <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>"><img class="d-block w-100" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>"></a>
       <div class="carousel-caption d-none d-md-block"  id="slider-text">
    <div class="card-title"><?php echo htmlentities($row['posttitle']);?></div>

  </div>
    </div>
  </div>
  <?php } ?>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
