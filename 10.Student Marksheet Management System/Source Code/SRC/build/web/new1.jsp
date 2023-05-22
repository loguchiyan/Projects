<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>MarkSheet</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

 
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container d-flex justify-content-between align-items-center">

      <div id="logo">
        <h1><a href="index.html">MarkSheet</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt=""></a> -->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
     <li><a class="nav-link scrollto " href="ahome.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="addwater.jsp">Add Water Cans and Bottles</a></li>
            
            <li><a class="nav-link scrollto" href="new1.jsp">New order</a></li>
           <li><a class="nav-link scrollto " href="sorder.jsp">View Transaction</a></li>
            <li><a class="nav-link scrollto" href="index.html">Logout</a></li>
         
         
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">

    <div class="hero-text" data-aos="zoom-out">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
      <main >
                  
                    
                   
                   <style>
                    tr,td{
                                  
                                        font-size: 15px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        margin-left: 150px;
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid black;
                                        border-radius: 30px;
                        		padding:5px;
                        		text-align:center;
                                        color:black;
                                        margin-top: -380px;
                                       
                                        
                    }
                    th{
                                        color: skyblue;
                    }
                    table{
                                        height: auto;
                                        width: auto;
                        }
                           
                        	
                        	
                        	
                </style>

    
        <div class="header-text">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <h3 class="h4" align="center" style=" color: white; font-size: 23px; margin-bottom: 400px;  margin-left: 150px; "> View User Order and Make Confirm</h3>
							
                <style>
                    tr,td{
                                        font-family: cursive;
                                        font-size: 20px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid black;
                                        border-radius: 20px;
                        		padding:5px;
                        		text-align:center;
                                        background: white;
                                      
                    }
                    
                    table{
                        		margin-left:50px;
                                        height: auto;
                    }th{
                        color:  #1dc8cd;
                    }
                        	
                        	
                        	
                </style>

    <!-- ***** Welcome Area Start ***** -->
        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <div class="container"><table align="center" style="width:700px; ">    
                            <tr>
                                <th>Sno</th>
                            <th>User name</th>
                            <th>Product ID</th> 
                            <th>Product name</th>
                            <th>Quantity Needed</th>  
                            <th>Amount Paid</th>    
                             <th>Confirm order</th>
         </tr>
  <%  
                                 
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/water","root","root");
                        PreparedStatement query=con.prepareStatement("select * from orders ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next())
                            
                            
                        {   
                            String sno=rs.getString("sno");
                            String user=rs.getString("user");
                            String pid=rs.getString("pid");
                            String pname=rs.getString("pname"); 
                            String much=rs.getString("much");
                            String amount=rs.getString("amount");
                            String status=rs.getString("status");
                            
                        %>
          <tr><td><%= sno%></td>
                            <td><%= user%></td>
                            <td><%=pid%></td>
                            <td><%=pname%></td>  
                            <td style="color: red"><%=much%></td> 
                            <td style="color: brown"><%=rs.getString("amount")%></td>     
                             <%
                                                    if(status.equals("Waiting")){
                                                 %>
                                                 <td ><a  style="color:  darkmagenta;" href="Com.jsp?sno=<%=sno%>">Waiting</a></td>
                                                <%
                                                 }else{
                                                %>
                                                <td style="color:Green">Order Delivered</td>
                                                  
                                        </tr>		
	            <%	
	            	}}
	            %></table>  
                            <br><br><br><br></div></div></div>
	
       </form>  

  </section><!-- End Hero Section -->


  
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-chevron-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>