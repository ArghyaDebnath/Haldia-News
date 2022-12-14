<?php 
session_start();
include('includes/config.php');
error_reporting(0);


if($_GET['action']='restore')
{
$postid=intval($_GET['pid']);
$query=mysqli_query($con,"update tblposts set Is_Active=1 where id='$postid'");
if($query)
{
$msg="Post restored successfully ";
}
else{
$error="Something went wrong . Please try again.";    
} 
}


// Code for Forever deletionparmdel
if($_GET['presid'])
{
    $id=intval($_GET['presid']);
    $query=mysqli_query($con,"delete from  tblposts  where id='$id'");
    $delmsg="Post deleted forever";
}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
    <style>
#myTable {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 1em;
    font-family:Arial, Helvetica, sans-serif;   
    min-width: 800px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

#myTable td, #myTable th {
  border: 1px solid black;
  padding: 8px;
}

#myTable tr:nth-child(even){background-color: white;}

#myTable tr:hover {background-color: black;color: white;}

#myTable th {
  padding-top: 12px;
  width:40px;
  padding-bottom: 12px;
  text-align: center;
  background-color: black;
  color: white;
}
</style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <link rel="shortcut icon" href="assets/images/users/hdlogo.png" type="image/x-icon">
        <meta name="author" content="Coderthemes">

        <!-- App title -->
        <title>Haldia News | Manage Posts</title>

        <!--Morris Chart CSS -->
		<link rel="stylesheet" href="../plugins/morris/morris.css">

        <!-- jvectormap -->
        <link href="../plugins/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- <link href="assets/css/core.css" rel="stylesheet" type="text/css" /> -->
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap4.min.css">
		<link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js">
        

        <script src="assets/js/modernizr.min.js"></script>

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
           <?php include('includes/topheader.php');?>

            <!-- ========== Left Sidebar Start ========== -->
           <?php include('includes/leftsidebar.php');?>


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">
							<div class="col-xs-12">
								<div class="page-title-box" style="border-bottom:1px solid #5D6D7E;">
                                    <h4 class="page-title">Trashed Posts </h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Admin</a>
                                        </li>
                                        <li>
                                            <a href="#">Posts</a>
                                        </li>
                                        <li class="active">
                                          Trashed Posts 
                                        </li>
                                    </ol>
                                    <div class="clearfix"></div>
                                </div>
							</div>
						</div>
                        <!-- end row -->


<div class="row">
<div class="col-sm-6">  
 


<?php if($delmsg){ ?>
<div class="alert alert-danger" role="alert">
<strong>Oh snap!</strong> <?php echo htmlentities($delmsg);?></div>
<?php } ?>


</div>


                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box" style="border:1px solid #5D6D7E;">
                         

                                    <div class="table-responsive">
                                    <table id="myTable"class="display" style="width:100%">
<thead>
<tr>
                                           
<th>Sl No.</th>
<th>Title</th>
<th>Category</th>
<th>Subcategory</th>
<th>Action</th>
</tr>
</thead>
<tbody>

<?php
$query=mysqli_query($con,"select tblposts.id as postid,tblposts.PostTitle as title,tblcategory.CategoryName as category,tblsubcategory.Subcategory as subcategory from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join tblsubcategory on tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=0");
$rowcount=mysqli_num_rows($query);
if($rowcount==0)
{
?>
<tr>

<td colspan="4" align="center"><h3 style="color:red">No record found</h3></td>
<tr>
<?php 
} else {
    $cnt=1;
while($row=mysqli_fetch_array($query))
{
?>
 <tr>
 <th scope="row"><?php echo htmlentities($cnt);?></th>
<td><b><?php echo htmlentities($row['title']);?></b></td>
<td><?php echo htmlentities($row['category'])?></td>
<td><?php echo htmlentities($row['subcategory'])?></td>

<td>
<a href="trash-posts.php?pid=<?php echo htmlentities($row['postid']);?>&&action=restore" onclick="return confirm('Do you really want to restore ?')"> <i class="ion-arrow-return-right" title="Restore this Post"></i></a>
    &nbsp;
    <a href="trash-posts.php?presid=<?php echo htmlentities($row['postid']);?>&&action=perdel" onclick="return confirm('Do you really want to delete ?')"><i class="fa fa-trash-o" style="color: #f05050" title="Permanently delete this post"></i></a> 
 </td>
 </tr>
<?php $cnt++;} }?>
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div> <!-- container -->

                </div> <!-- content -->

       <!-- <?php include('includes/footer.php');?> -->

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->



        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

        <!-- CounterUp  -->
        <script src="../plugins/waypoints/jquery.waypoints.min.js"></script>
        <script src="../plugins/counterup/jquery.counterup.min.js"></script>

        <!--Morris Chart-->
		<script src="../plugins/morris/morris.min.js"></script>
		<script src="../plugins/raphael/raphael-min.js"></script>

        <!-- Load page level scripts-->
        <script src="../plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="../plugins/jvectormap/gdp-data.js"></script>
        <script src="../plugins/jvectormap/jquery-jvectormap-us-aea-en.js"></script>


        <!-- Dashboard Init js -->
		<script src="assets/pages/jquery.blog-dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap4.min.js"></script>
        <script>
            $(document).ready(function () 
            {
               $('#myTable').DataTable({
                "pagingtype": "full_numbers", "lengthMenu":[
                    [10, 25, 50, -1],[10, 25, 50, "All"]
                ],
                responsive: true,
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search Data",
                }
               });
            });
        </script>

    </body>
</html>
