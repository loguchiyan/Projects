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
                    <a href="ohome.jsp" style=" color: #ffc107;">Home</a>&ensp;&ensp;
             
                <a href="upload1.jsp" style=" color: #ffc107;">Uploaded Product</a>&ensp;&ensp;
                <a href="view1.jsp" style=" color: #ffc107;">View Products</a>&ensp;&ensp;
                <a href="graph.jsp" style=" color: #ffc107;">User Request</a>&ensp;&ensp;
                <a href="has.jsp" style=" color: #ffc107;">Send Hashkey</a>&ensp;&ensp;
                <a href="vdown.jsp" style=" color: #ffc107;">Purchased Product</a>&ensp;&ensp;
                
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
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
     <h1 style=" text-align:center; color:white;font-size:20px; margin-top:-200px;">View Request and Send Hashkey</h1>
      <br>
      
     
     <table>
         <tr> <th>User Name</th>
                <th>PID</th>
                <th>P.Name</th>
                <th>Cost</th>
                <th>Description</th>
               
                <th>Status</th>
                <th>HashKey</th>
                </tr> 
     
     
     <%    
                 
                        String ouser=session.getAttribute("ouser").toString();
      String pid=request.getParameter("pid");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
                        PreparedStatement query=con.prepareStatement("select DISTINCT sno,pid,pname,ouser,uuser,cost,des,status,hashkey from ureq where ouser='"+ouser+"'  ");
                        System.out.println(query);
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                      
                         String uuser=rs.getString("uuser");   
                        String pname=rs.getString("pname");
                         String cost=rs.getString("cost");
                 
                         String des=rs.getString("des"); 
                   String sno=rs.getString("sno");
                           String hashkey=rs.getString("hashkey");
                             String status=rs.getString("status");  
                           
                   %>
                                         
        <tr>
                
                        <td><%= uuser%></td>
                      <td><%=rs.getString("pid") %></td>
                    <td><%=pname%></td>
                    <td><%=cost%></td>
                     <td><%=des%></td>
                  
                   
                     <td style=" color: darkviolet"><a href="reqaction.jsp?sno=<%=sno%>"><%=status%></a></td>
                     <td style=" color: crimson"><a href="hashaction.jsp?uuser=<%=uuser%>&&pid=<%=rs.getString("pid") %>"><%=hashkey%> </a>  </td> 
        
        
        <%}%></table> <br>
                        <br>
                      
                        <br>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

  
  <!-- end about section -->

  





  <!-- info section -->

  

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