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
                    <a href="index.html" style=" color: #ffc107;">Home</a>&ensp;&ensp;
                <a href="auth.jsp" style=" color: #ffc107;">Authorize</a>&ensp;&ensp;
                <a href="vupl.jsp" style=" color: #ffc107;">Uploaded Product</a>&ensp;&ensp;
                <a href="vdown.jsp" style=" color: #ffc107;">Purchased Product</a>&ensp;&ensp;
                <a href="graph.jsp" style=" color: #ffc107;">Graph</a>&ensp;&ensp;
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
        table,tr,td,th{
            border:2px solid #003333;
            border-collapse:collapse;
            width:600px;
        margin-left: 260px;
        background-color:  #eff8f9;
            
            
        }
        </style>
    <section class="slider_section">
        <br>
        <br>
        <br>
      <div class="container">
          <h1 style=" text-align:center; color:white;font-size:20px; margin-top:-200px;">View Owner and authorize</h1>
         <br>
         <br>
         <br>
          <table algin="center">
            <tr>
                <th>Id</th>
                <th>Username</th>
                <th>Email</th>
                <th>Action</th>
                </tr>
           <%
               Class.forName("com.mysql.jdbc.Driver");
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
                     
          PreparedStatement ps1=con.prepareStatement("select * from oreg  ");
                        ResultSet rs1=ps1.executeQuery();
                        System.out.println(rs1);
                        while(rs1.next()){
             %>     
             <tr>
                 <td><%=rs1.getString("sno")%></td>
                    <td><%=rs1.getString("ouser")%></td>
                    <td><%=rs1.getString("email")%></td>
                    <td><a href="oauth1.jsp?sno=<%=rs1.getString("sno")%>" style=" color: darkblue; font-weight:bolder;"><%=rs1.getString("status")%></a></td>
            <%}%></table>
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