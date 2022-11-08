 <style type="text/css">
  .nav-item {
    color: white;
  }
  #min-logo{
    height: 50px;
    width: 150px;

  }
  .navbar{
    background-color: black;
  }
  .navbar-toggler{
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='30' height='30' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 255, 255, 0.5%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
  }
  .navbar-toggler-icon {
    display: inline-block;
    width: 0.5em;
    height: 0.5em;
    vertical-align: middle;
    content: "";
    background: 50%/100% 100% no-repeat;
}
 </style>

 <nav class="navbar fixed-top navbar-expand-lg fixed-top" >
      <div class="container">
        <a class="navbar-brand" href="index.php">
          <img src="images/logo.png" alt="Haldia News" id="min-logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
        <div class="collapse navbar-collapse"  id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link text-light" href="about-us.php">About</a>
            </li>
                 <li class="nav-item">
              <a class="nav-link text-light" href="index.php">News</a>
            </li>
             <li class="nav-item">
              <a class="nav-link text-light" href="contact-us.php">Contact us</a>
            </li>
             <li class="nav-item">
              <a class="nav-link text-light" href="admin/index.php">Admin</a>
            </li>

  
          </ul>
        </div>
      </div>
    </nav>