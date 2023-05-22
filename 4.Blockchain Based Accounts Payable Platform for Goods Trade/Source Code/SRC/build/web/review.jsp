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
              <span style=" color: #ffc107;">
          ACCOUNTS PAYABLE
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
    
   <div id="wrapper">

        <div id="home" class="video-section js-height-full">
            <div class="overlay"></div>
            <div class="home-text-wrapper relative container">
                <div class="home-message">
                    <main >
                  
                    <style>
                    tr,td
                    {
                                        font-family:sans-serif ;
                                        font-size: 30px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        margin-left: 300px;
                                        height: auto;
                        		border-collapse: collapse;
                        		border: 2px solid black;
                                        border-radius: 3px;
                        		padding:5px;
                        		text-align:center;
                                        color:black;
                                        font-family:  sans-serif;
                                        margin-top: 10px;
                                        background-color: #01bacf;
                                        
                    }
                    th{
                                        color: black;
                    }
                    table{
                                        height: auto;
                                        width: 350px;
                        }
                        td{
                            color:black;
                            
                        }
                           
                        	
                        	
                        	
                </style>

    
        <div class="header-text">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>       
            <br>

            <h2 align="center" style=" color: whitesmoke; font-family:sans-serif;font-weight: bold; font-size: 30px; margin-right: 50px; margin-top:-100px;">Make Review & Rating </h2><br><br>
   <div class="container">
       <%
           String ouser=request.getParameter("ouser");
       String image=request.getParameter("image");
       String pcat=request.getParameter("pcat");
       String pname=request.getParameter("pname");
       String description=request.getParameter("descripion");
       %>
        <form action="ranking.jsp"> 
                  <table>
                            <tr><input type="hidden" name="image" value="<%=image%>">
                            <tr align="center"><td colspan="2"><img src="profile/<%=image%>" alt="image" style="width:60px; height: 60px;"></td></tr>
                                 <th>Seller Name </th><td><input type="text" name="ouser" value="<%=ouser%>" style="border:0px;"></td></tr>
                            <th>Product Name </th><td><input type="text" name="pname" value="<%=pname%>" style="border:0px;"></td></tr>
                       <tr><th>Product Category</th><td><input type="text" name="pcat" value="<%=pcat%>"</td></tr>
                           <tr align="center"><td style="color:black;">Review </td><td><textarea name="review" style="width:100px;"></textarea></td></tr>
                           <tr align="center"><td>Rating</td><td>
                               <select name ="rank" style="border-radius: 8px; height: 45px; width: 100px;" required>
                                <option>-Give Ranking-</option>
                                <option>* * * * *</option>
                                <option>* * * *</option>
                                <option>* * *</option>
                                <option>* *</option>
                                <option>*</option>
                                </select>
                                   </td></tr>
                       <tr align="center"><td align="center" colspan="2"><button type="submit">Submit</button></td></tr>
      
                            
                    </table> </form>  
                    <br><br><br><br></div></div></div>
                      
         </main>
          
                    </div><!-- end row -->
                </div>
            </div>
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