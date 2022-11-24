<?php 
session_start();
include('includes/config.php');

    ?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/hdlogo.png" type="image/x-icon">

    <title>Haldia News | Home Page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

        <link href="fonts/css/fontawesome.css" rel="stylesheet">
  <link href="fonts/css/brands.css" rel="stylesheet">
  <link href="fonts/css/solid.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
   <?php include('includes/header.php');?>
   <!-- <h3 align="center">LATEST NEWS</h3> -->
   <?php include('includes/slider.php'); ?>
    <!-- Page Content -->
    <div class="container-fluide m-3">
     

     
      <div class="row" style="margin-top: 4%">
       <div class="col-md-3">
        <?php include"includes/leftsidebar.php"; ?>
       </div>
        <!-- Blog Entries Column -->
        <div class="col-md-6">

          <!-- Blog Post -->
<?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 4;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
while ($row=mysqli_fetch_array($query)) {
?>


            <style>
              #text{
                overflow: hidden;
                text-overflow: ellipsis;
                display: -webkit-box;
                -webkit-line-clamp: 1;
                        line-clamp: 1;
                -webkit-box-orient: vertical;
              }
              .content-show{
                margin-bottom: 10px;
              }
              #content-hide {
                margin-top: 15px;
                display: none;
              }
              #read-m-button{
                background-color: black;
                color: white;
                padding: 6px 30px 6px 10px;
                border-radius: 5px;
                margin-bottom: 15px;
                border: none;
                transition: 1s;

              }
              #read-m-button:hover{
                cursor: pointer;
                background-color: #212F3D;
                border: none;
                transition: 1s;
                
              }
              a{
                text-decoration: none;
              }
              #latest-blog{
                border: 1px solid black;
              }
            </style>
            
              <div id="latest-blog" class="card mb-4">
                <div class="container">
                        <div class="">
                            <div class="blog-post">
                                <div class="blog-thumb">
                                    <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>" class="" id="RM-hover">
                                      <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>">
                                    </a>
                                </div>
                                <div class="blog-content" style="margin-top: 15px">
                                    <div class="content-show">
                                        <h2 style="text-decoration: none"><?php echo htmlentities($row['posttitle']);?></h2>
                                        <p><b>Category : </b> <a href="category.php?catid=<?php echo htmlentities($row['cid'])?>"><?php echo htmlentities($row['category']);?></a> </p>
                                        <span>Posted on <?php echo htmlentities($row['postingdate']);?></span>
                                    </div>
                                    <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>" class="" id="RM-hover">
                                    <button id="read-m-button">Read More</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                </div>
              </div>
          
<?php } ?>
       

      

          <!-- Pagination -->


    <ul class="pagination justify-content-center mb-4" id="card-hover">
        <li class="page-item"><a style="background-color: #1C2833;color:white;cursor:pointer;" href="?pageno=1"  class="page-link">First</a></li>
        <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?> page-item">
            <a style="background-color: #2C3E50;color:white;cursor:pointer;" href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>" class="page-link">Prev</a>
        </li>
        <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?> page-item">
            <a style="background-color: #2C3E50;color:white;cursor:pointer;" href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?> " class="page-link">Next</a>
        </li>
        <li class="page-item"><a style="background: #1C2833;color:white;cursor:pointer;" href="?pageno=<?php echo $total_pages; ?>" class="page-link">Last</a></li>
    </ul>
    
    <style>
      #card-hover li:hover{
        background-color: #2C3E50;
      }
    </style>

        </div>

        <!-- Sidebar Widgets Column -->
      <?php include('includes/sidebar.php');?>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
      <?php include('includes/footer.php');?>



      <script src="js/hidden.js"></script>

