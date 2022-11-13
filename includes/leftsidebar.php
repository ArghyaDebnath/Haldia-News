
          <!-- Search Widget -->
          <div class="card mb-4" style="border: 1px solid black;">
            <h5 class="card-header text-light" style="background-color: black;">Search</h5>
            <div class="card-body">
                   <form name="search" action="search.php" method="post">
              <div class="input-group">
           
        <input type="text" name="searchtitle" style="border: 1px solid black" class="form-control" placeholder="Search for..." required>
                <span class="input-group-btn">
                  <button class="btn search-button" id="search-button" type="submit">Go!</button>
                  <style>
                    #search-button{
                      background-color: black;
                      color: white;
                      transition: 1s;
                    }
                    #search-button:hover{
                      background: #212F3D;
                      transition: 1s;
                      /* cursor: text; */
                    }
                  </style>
                </span>
              </form>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4" style="border: 1px solid black;">
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
                        background-color: #212F3D;
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

   

