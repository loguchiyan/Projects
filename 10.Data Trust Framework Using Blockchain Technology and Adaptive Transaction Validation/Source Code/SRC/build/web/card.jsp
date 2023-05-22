<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Transaction Validation</title>
  <!-- loader-->
  <link href="assets/css/pace.min.css" rel="stylesheet"/>
  <script src="assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
  <!-- Vector CSS -->
  <link href="assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
  <!-- simplebar CSS-->
  <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
  <link href="assets/css/app-style.css" rel="stylesheet"/>
  
</head>

<body class="bg-theme bg-theme1">
 
<!-- Start wrapper-->
 <div id="wrapper">
 
  <!--Start sidebar-wrapper-->
   <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
     <div class="brand-logo">
      <a href="index.html">
       <img src="assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
       <h5 class="logo-text"> Transaction Validation </h5>
     </a>
   </div>
   <ul class="sidebar-menu do-nicescrol">
      <li class="sidebar-header">MAIN NAVIGATION</li>
      <li>
        <a href="uhome1.jsp">
          <i class="zmdi zmdi-view-dashboard"></i> <span>Home</span>
        </a>
      </li>

      <li>
        <a href="card.jsp">
    <i class="fa fa-user" aria-hidden="true"></i> <span>Card Details</span>
        </a>
      </li>
      
   
       <li>
        <a href="index.html" target="_blank">
          <i class="fa fa-sign-out" aria-hidden="true"></i> <span>Logout</span>
        </a>
      </li>
    </ul>
   
   </div>
   <!--End sidebar-wrapper-->

<!--Start topbar header-->
<header class="topbar-nav">
 <nav class="navbar navbar-expand fixed-top">
  <ul class="navbar-nav mr-auto align-items-center">
    <li class="nav-item">
      <a class="nav-link toggle-menu" href="javascript:void();">
       <i class="icon-menu menu-icon"></i>
     </a>
    </li>
 
  </ul>
     
 
</nav>
</header>
<!--End topbar header-->

<div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">
<style>
    h2{
        font-size:25px;
        margin:60px;
/*        margin-left: 250px;*/
  
        text-align: center;
    }
    .bg-image{
        margin-left: 180px;
    }
</style>
<%
String user=session.getAttribute("user").toString();
%>
        <h2>Add Card Details</h2>
<div class="col-lg-6" style=" margin-left:300px;">
        <div class="card" >
           <div class="card-body" >

           <hr>
           <form action="upload1.jsp" method="post" >
           <div class="form-group">
                <div class="form-group">
            <div>
            <label for="input-6">Username</label>
            <input type="text" class="form-control form-control-rounded" name="user" value="<%=user%>">
           </div>
                <label for="input-6">Card Type</label>
                <select class="form-control form-control-rounded" name="ctype" required="">
            <option >Select Card Type:</option>
            <option>Credit card</option>
            <option >Debit Card</option>
            <option >Rupay</option>
            </select>
           </div>
            <div>
            <label for="input-6">Card NO</label>
            <input type="text" class="form-control form-control-rounded" name="cno" value="" placeholder="Enter the  Card No" required="">
           </div>
          
          
          <div class="form-group">
            <label for="input-8">CVV Number</label>
            <input type="text" class="form-control form-control-rounded" name="cvno" placeholder="Enter the  CVV Number" required="">
           </div>
          <div class="form-group">
            <label for="input-8">Expiry Date</label>
            <input type="text" class="form-control form-control-rounded" name="exp" placeholder="Enter the Expiry date" required="">
           </div>
                <div class="form-group">
            <label for="input-8">Mobile No</label>
            <input type="text" class="form-control form-control-rounded" name="mobile" placeholder="Enter the Mobile No" required="">
           </div>
            <div class="form-group">
            <label for="input-8">Email ID</label>
            <input type="text" class="form-control form-control-rounded" name="email" placeholder="Enter the Email Id" required="">
           </div>
                
              <div class="form-group">
            <label for="input-8">Account Limit</label>
            <input type="text" class="form-control form-control-rounded" name="aclim" placeholder="Amount Per Day" required="">
           </div>  
               <div class="form-group">
            <label for="input-8">Password</label>
            <input type="password" class="form-control form-control-rounded" name="password" placeholder="Enter a Password" required="">
           </div> 
               
               <div class="form-group">
            <label for="input-8">Security Question</label>
            <input type="text" class="form-control form-control-rounded" name="sec" placeholder="Enter a Security Question" required="">
           </div> 
               <div class="form-group">
            <label for="input-8">Answer</label>
            <input type="text" class="form-control form-control-rounded" name="ans" placeholder="Answer the Security Questions" required="">
           </div> 
           <div class="form-group py-2">
            
           </div>
           <div class="form-group">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <button type="submit" class="btn btn-light btn-round px-5"><i class="icon-lock"></i> Submit</button>
      
           </div>  
          </form>

     <div class="col-12 col-lg-4 col-xl-4">
       
     </div>
	</div>
	  

		  <div class="overlay toggle-menu"></div>

		
    </div>
  
    
    </div><!--End content-wrapper-->
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	<!--Start footer-->
        <br>
        <br>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
        <br>
	<footer class="footer">
      <div class="container">
        <div class="text-center">
         
        </div>
      </div>
    </footer>
	<!--End footer-->
	
  <!--start color switcher-->
   <div class="right-sidebar">
    
    <div class="right-sidebar-content">

      <p class="mb-0">Gaussion Texture</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme1"></li>
        <li id="theme2"></li>
        <li id="theme3"></li>
        <li id="theme4"></li>
        <li id="theme5"></li>
        <li id="theme6"></li>
      </ul>

      <p class="mb-0">Gradient Background</p>
          <hr>
      
      <ul class="switcher">
        <li id="theme7"></li>
        <li id="theme8"></li>
        <li id="theme9"></li>
        <li id="theme10"></li>
        <li id="theme11"></li>
        <li id="theme12"></li>
		<li id="theme13"></li>
        <li id="theme14"></li>
        <li id="theme15"></li>
      </ul>
      
     </div>
   </div>
  <!--end color switcher-->
   
  </div><!--End wrapper-->

  <!-- Bootstrap core JavaScript-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
	
 <!-- simplebar js -->
  <script src="assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="assets/js/sidebar-menu.js"></script>
  <!-- loader scripts -->
  <script src="assets/js/jquery.loading-indicator.js"></script>
  <!-- Custom scripts -->
  <script src="assets/js/app-script.js"></script>
  <!-- Chart js -->
  
  <script src="assets/plugins/Chart.js/Chart.min.js"></script>
 
  <!-- Index js -->
  <script src="assets/js/index.js"></script>

  
</body>
</html>

