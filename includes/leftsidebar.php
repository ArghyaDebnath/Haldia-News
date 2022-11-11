
          <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header text-light" style="background-color: black;">Search</h5>
            <div class="card-body">
                   <form name="search" action="search.php" method="post">
              <div class="input-group">
           
        <input type="text" name="searchtitle" class="form-control" placeholder="Search for..." required>
                <span class="input-group-btn">
                  <button class="btn btn-secondary " style="background-color: black;" type="submit">Go!</button>
                </span>
              </form>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header  text-light" style="background-color: black;">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-12">
                  <ul class="list-unstyled mb-0">
<?php $query=mysqli_query($con,"select id,CategoryName from tblcategory");
while($row=mysqli_fetch_array($query))
{
?>

                    
                      <a style="color:white;width:100%;font-family
                      :'Times New Roman', Times, serif;" id="HL-category" href="category.php?catid=<?php echo htmlentities($row['id'])?>">
                      <li id="category">
                      
                      <?php echo htmlentities($row['CategoryName']);?>
                      </li>
                    </a>

                    <style>
                      #category{
                        padding: 8px;
                        width: 100%;
                        background-color: black;
                        margin-top: 2px;
                        text-align: center;
                        transition: .4s;
                      }
                      #category:hover{
                        text-decoration: none;
                        background-color: gray;
                        /* border: 2px solid black; */
                        margin-bottom: 10px;
                        transition: .4s;
                      }
                      #HL-category{
                        text-decoration: none;
                      }
                    </style>


<?php } ?>
                  </ul>
                </div>
       
              </div>
            </div>
          </div>

   

