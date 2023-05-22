<%@page import="algo.CipherHelper"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

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

  <title>Accounts Payable</title>

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
              <span style=" color: #ffc107;">
           Accounts Payable
            </span>
          </a>
          <div class="" id="">
              <style>
                  .nac{
                      color: #ffc107; 
                      padding:5px;
                  }
              </style>
            <div class="User_option">
                <div class="nac">
                    <a href="uhome.jsp" style=" color: #ffc107;">Home</a>&ensp;&ensp;
             
                <a href="acc.jsp" style=" color: #ffc107;">Add Account</a>&ensp;&ensp;
                <a href="proreq.jsp" style=" color: #ffc107;"> Products request</a>&ensp;&ensp;
                <a href="products.jsp" style=" color: #ffc107;">Purchase Products</a>&ensp;&ensp;
          
                <a href="index.html" style=" color: #ffc107;">Logout</a>&ensp;&ensp;
            </div>

            
            <div id="myNav" class="overlay">
              <div class="overlay-content">
                
              </div>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

    <!-- slider section -->
    
   <style>
       
                 input,select,option{
                     width: 200px;
                     border-radius:12px;
                 
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
                 label{
                     margin-left:410px;
                     display: inline-block;
                     min-width:130px;
                 }
                 #us{
                     padding:3px;
                 }
                 form{
                      border:2px solid #003333;
                        background-color:#eff8f9;
                    
                       
                 }
                 </style>
    <section class="slider_section">
        <br>
        <br>
        <br>
      <div class="container">
          <br>
          <br>
          <br>
          <br><br>
          <br>
          
           <h1 style=" text-align:center; color:white;font-size:20px; margin-top:-200px;">Add Account Details</h1>
         <br>
         <%
             String uuser=session.getAttribute("uuser").toString();
              
     %>
              <div class="" >    
         <form action="accaction.jsp" method="post" >
             <input type="hidden" name="uuser" value="<%=uuser%>" >
            <div class="log">
             <label>UserName</label>
              <input id="us" type="text"  name="uuser"  value="<%=uuser%>"/>
            </div>
           
            <div class="log">
                  <label>Card Type</label>
             <select name="ctype"   id="us">
                   <option>--Choose--</option>
                     <option>Credit Card</option>
                     <option>Debit Card</option>
                    
                   </select>
            </div>
            <div class="log">
                <label>Bank Name</label>
                <input   id="us" type="text"   name="bname" value=""/>
            </div>
           <div class="log">
                <label>Account Number</label>
                <input   id="us" type="text"   name="acc" value=""/>
            </div>
                  <div class="log">
                      <label>IFSC Code</label>
                <input type="text"   id="us"  name="ifsc"/>
            </div>
                 <div class="log">
                    <label>CVV number</label>
                <input type="text"    id="us" name="cvv"/>
            </div>
                   <div class="log">
                    <label>Branch</label>
                <input type="text"    id="us" name="branch"/>
            </div>
               <br>
          <div class="log1">
              <button  style=" margin-left:530px;">Submit</button>
              </div>  
            </form>
            <div><a href="money.jsp" style=" color:white; font-size:30px;">Add Money</a></div>
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