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

  <title>Agricultural Products</title>

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
            Agricultural Products
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
        table,tr,td,th{
            border:2px solid #003333;
            border-collapse:collapse;
            width:600px;
        margin-left: 260px;
        background-color:  #86cfda;
            
            
        }
        </style>
    <section class="slider_section">
        <br>
        <br>
        <br>
      <div class="container">
          <style>
             .gallery {
	display: flex;
	flex-wrap: wrap;
	// Compensate for excess margin on outer gallery flex items /
	margin: -1rem -1rem;
}
.gallery-item {
	// Minimum width of 24rem and grow to fit available space /
	flex: 1 0 24rem;
	// Margin value should be half of grid-gap value as margins on flex items don't collapse /
	margin: 1rem;
	box-shadow: 0.3rem 0.4rem 0.4rem rgba(0, 0, 0, 0.4);
	overflow: hidden;
        border: 2px solid #003333;
}
p{
    color:  aqua;
    font-size:12px;
}
h6{
    font-size:13px;
}
     </style> 
     <h1 style=" text-align:center; color:white;font-size:20px; margin-top:-200px;">View status and Purchase Products</h1>
       
     
     <table>
         <tr> <th>Owner Name</th>
                <th>PID</th>
                <th>P.Name</th>
                <th>Cost</th>
                <th>Description</th>
                <th>HashKey</th>
                <th>Status</th>
               
                </tr> 
     
     
     <%    
                 
                        String uuser=session.getAttribute("uuser").toString();
      String pid=request.getParameter("pid");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
                        PreparedStatement query=con.prepareStatement("select DISTINCT pid,pname,ouser,uuser,cost,des,status,hashkey from ureq where uuser='"+uuser+"'  ");
                        System.out.println(query);
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                      
                         String ouser=rs.getString("ouser");   
                        String pname=rs.getString("pname");
                         String cost=rs.getString("cost");
                 
                         String des=rs.getString("des"); 
                   
                           String hashkey=rs.getString("hashkey");
                             String status=rs.getString("status");  
                   %>
                                         
        <tr>
                
                        <td><%= ouser%></td>
                      <td><%=rs.getString("pid") %></td>
                    <td><%=pname%></td>
                    <td><%=cost%></td>
                     <td><%=des%></td>
                  
                     <td style=" color: crimson"><%=hashkey%>   </td> 
                    <td style=" color: darkviolet"><%=status%></td>
       
        
        
        <%}%></table> <br>
                        <br>
                      
                        <br>
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