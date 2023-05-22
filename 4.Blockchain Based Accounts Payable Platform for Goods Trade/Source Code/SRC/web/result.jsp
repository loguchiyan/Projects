<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
                 <a href="ukrslt.jsp" style=" color: #ffc107;">View Top K Results</a>&ensp;&ensp;
                  <a href="viewproduct.jsp" style=" color: #ffc107;">View all Products</a>&ensp;&ensp;
                <a href="reqact.jsp" style=" color: #ffc107;">Request Status</a>&ensp;&ensp;
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
      <br>
   <br>
   <br>
   <br>
   <br>
   <br>
            <br>
   <br>
   <br>
 
          
     <style>
                tr,td{
                    color: red;
                    font-family: cursive;
                    font-size: 20px;
                    padding: 10px;
                    font-weight: bold;
                }
                table{
                    border-radius: 20px;
                }
                                    
            </style>
             <div class="header-text">
            <br>
            <br>
            <h2 align="center" style=" color: whitesmoke; font-family: monospace;font-weight: bold; font-size: 20px; margin-right: 50px; margin-top: -180px;">View Top K Results Based on Products </h2><br><br>
   <div class="container">
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
                       <%
                        String uname=request.getParameter("text");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
                      
                       %>
                       <div style="margin-top: -220px;">
                         <div>
                    <br><br><br></div>
               
                
                <style>
                      table,td,tr,th{
                           border-collapse: collapse;
                           border: 2px solid black;
                           text-align: center;
                           font-weight: bold;
                           padding: 5px;
                          
                           font-family: monospace;
                      }
                      td{
                          font-size: 20px;
                          color:white;
                      }
                      th{
                          font-size: 22px;
                          background-color: #01bacf;
                      }

                  </style>
                   <table style="margin-top: 30px; width: 60%; margin-left: 200px;">
                       <tr>
                         
                           <th>Product Name</th>
                            <th>Product Category</th>
                             <th>Image</th>
                           <th> Review </th>
                           <th> Ranking </th>
                       </tr>
                       <%  String i="null";
                                  String ranking=request.getParameter("rank");
                                   if(ranking.equals("1"))
                {
                  i="* * * * *";   
                }else if(ranking.equals("2"))
                {
                    i="* * * *";
                }else if(ranking.equals("3"))
                {
                    i="* * *";
                }else if(ranking.equals("4"))
                {
                    i="* *";
                }else
                {
                    i="*";
                }
                
                           PreparedStatement ps=con.prepareStatement(" SELECT * FROM review WHERE ranking='"+i+"' ");
                           ResultSet r=ps.executeQuery();
                           while(r.next()){
                       %>
                       <tr>
                          
                           <td><%=r.getString("pname")%></td>
                        
                           <td><%=r.getString("pcat")%></td>
                             <td><img src="profile/<%=r.getString("image")%>" alt="image" style="width:80px; height: 80px;"></td>
                            <td><%=r.getString("review")%></td>
                           <td><%=r.getString("ranking")%></td>
                             <%}%>
                   </table>
                     
                   <br><br>
  <!-- about section -->

 
  <!-- end  footer section -->

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