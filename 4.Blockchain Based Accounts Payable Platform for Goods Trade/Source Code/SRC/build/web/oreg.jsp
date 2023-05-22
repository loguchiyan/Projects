<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

  <title>ACCOUNTS PAYABLE</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />


  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body>
  <div class="hero_area ">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href="index.html">
            <span>
           ACCOUNTS PAYABLE
            </span>
          </a>
          <div class="" id="">
            <div class="User_option">
              <form class="form-inline my-2  mb-3 mb-lg-0">
                <input type="search" placeholder="Search" />
                <button class="btn   my-sm-0 nav_search-btn" type="submit"></button>
              </form>
            </div>

            <div class="custom_menu-btn">
              <button onclick="openNav()">
                <span class="s-1"> </span>
                <span class="s-2"> </span>
                <span class="s-3"> </span>
              </button>
            </div>
            <div id="myNav" class="overlay">
              <div class="overlay-content">
                <a href="index.html">Home</a>
                <a href="admin.jsp">Account Payable Block</a>
                <a href="owner.jsp">Seller Block</a>
                <a href="user.jsp">Buyer Block</a>
              </div>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

    <!-- slider section -->
    <style>
img {
  border-radius: 50%;
}
</style>
    <section class="slider_section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 ">
            <div class="detail-box">
              <h1 style="font-size:20px; margin-left:180px; margin-top:-140px;">Register Seller Block</h1>
             <style>
                 input{
                     width: 200px;
                     border-radius:12px;
                     margin-left:170px;
                     font-size:16px;
                     border:2px solid  black;
                     text-align: center;
                    font-family: sans-serif;
                 }
                 .log{
                   padding:1px;  
                   
                 }
                 .log1 button{
                     margin-left:180px;
                        border-radius:12px;
                 }
                 </style>
            <div class="form_container">
            <form action="oregaction.jsp" method="post">
                <div class="log">
                <input type="text" placeholder="User Name " name="ouser" />
            </div>
            
           <div class="log">
                <input type="password" placeholder="Password"  name="pass"/>
            </div>
                  <div class="log">
                <input type="email" placeholder="Email"  name="email"/>
            </div>
                 <div class="log">
                <input type="text" placeholder="Data of Birth"  name="dob"/>
            </div>
                  <div class="log">
                <input type="text" placeholder="Contact"  name="contact"/>
            </div>
                  <div class="log">
                <input type="text" placeholder="Location"  name="loc"/>
            </div>
          
                <br>
          <div class="log1">
              <button>Submit</button>&ensp;<a href="owner.jsp" style="color:white;">Login</a>
              </div>  
            </form>
          </div>
            </div>
          </div>
          <div class="col-md-6 ">
            <div class="img-box">
              <img src="images/reg.png" alt=""  style="border-radius: 50%; height:90%; margin-left:50px; " >
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

 
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <!-- End Google Map -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>

</body>

</html>