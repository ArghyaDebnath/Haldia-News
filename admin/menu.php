<?php
session_start();
include('includes/config.php');
error_reporting(0);

?>


<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Stock News | Add Category</title>

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
        <script src="assets/js/modernizr.min.js"></script>

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

<!-- Top Bar Start -->
 <?php include('includes/topheader.php');?>
<!-- Top Bar End -->


<!-- ========== Left Sidebar Start ========== -->
           <?php include('includes/leftsidebar.php');?>
 <!-- Left Sidebar End -->

            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">
							<div class="col-xs-12">
								<div class="page-title-box">
                                    <h4 class="page-title">Add Menu</h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Admin</a>
                                        </li>
                                        <li>
                                            <a href="#">Menu </a>
                                        </li>
                                        <li class="active">
                                            Add Menu
                                        </li>
                                    </ol>
                                    <div class="clearfix"></div>
                                </div>
							</div>
						</div>
                        <!-- end row -->


    <div class="row">
        <div class="col-sm-12">
            <div class="card-box">
                <h4 class="m-t-0 header-title"><b>Add Menu </b></h4>
                <hr />

<div class="row">
    <div class="col-md-12">
      <form method="POST" action="menu.php" >
	     <div class="form-group">
	         <label >Menu Name</label>
	            <input type="text" class="form-control" value="" name="name" >
	     </div>
             <div class="form-group">
             <label >Parent Id</label>
                <input type="text" class="form-control" value="" name="parent_id" required>
             </div>
             <div class="form-group">
             <label >Menu Address</label>
                <input type="text" class="form-control" value="" name="address" required>
             </div>
	          
              <input type="submit" name="menu" value="Add Menu" class="btn btn-success">
                </form>
            </div>
        </div>
</div>
 </div>
 </div>
<!-- end row -->

</div> <!-- container -->
</div> <!-- content -->

<?php include('includes/footer.php');?>

            </div>
        </div>

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

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>


<?php  
if (isset($_POST['menu'])) {
    $name = $_POST['name'];
    $parent_id = $_POST['parent_id'];
    $address = $_POST['address'];
    $querry = "INSERT INTO menu(name,parent_id,adddress)VALUES('$name','$parent_id','$address')";
    if (mysqli_query($con,$querry)) {
        ?>
          <script type="text/javascript">
            alert('Data is inserted');
          </script> 
        <?php
    }
    else{
        ?>
          <script type="text/javascript">
            alert('Data is not inserted');
          </script> 
        <?php
    }
}


?>