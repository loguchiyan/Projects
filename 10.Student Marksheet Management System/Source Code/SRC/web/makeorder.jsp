<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
          <li><a class="nav-link scrollto active" href="shome.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="search.jsp"> Available Products</a></li>
          <li><a class="nav-link scrollto" href="new.jsp"> Orders</a></li>
            <li><a class="nav-link scrollto" href="status.jsp">Status for Order</a></li>
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
        <br>
        <br>
        <br>
        <style>
            td{
                color:black;
            }
  </style>
  <%

  String user=session.getAttribute("user").toString();
  %>
    <h2 style="color:darkslateblue;font-family: cambria;font-weight: bold; font-size: 30px;">Product Details</h2><br>
    <form action="orderaction.jsp">
         <tr align="center"><td style="color:black"><input type="hidden" name="user" value="<%=user%>" ></td></tr>
                      
	            <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/water","root","root");
                        PreparedStatement query=con.prepareStatement("select * from product  ");
                        ResultSet rs=query.executeQuery();
	            	if(rs.next())
	            	{
                    %>
                    <table align="center">
                            
                            <tr align="center"><td>Product ID </td><td style="color:black"><input type="text" name="pid" value="<%=rs.getString("pid")%>" readonly=""></td></tr>
                            <tr align="center"><td>Product Name </td><td style="color:darkblue"><input type="text" name="pname" value="<%=rs.getString("pname")%>" readonly=""></td></tr>
                            <tr align="center"><td>Cost </td><td style="color:brown"><input type="text" name="cost" value="<%=rs.getString("cost")%>" readonly=""></td></tr>
                            <tr align="center"><td>Quanity </td><td style="color:crimson"><input type="text" name="qua" value="<%=rs.getString("qua")%>" readonly=""></td></tr>
                             <tr align="center"><td>Needed Quantity</td><td style="color:forestgreen"><input type="text" name="much" value="" required=""></td></tr>
                            <tr align="center"><td>Amount </td><td style="color:crimson"><input type="text" name="amount" value="" required=""></td></tr>
                            <tr align="center"><td>Bank Name </td><td style="color:lightseagreen"><input type="text" name="bank" value=" "  required=""></td></tr>
                            <tr align="center"><td>Card No </td><td style="color:lightseagreen"><input type="text" name="card" value=" " required=""></td></tr>
                            <tr align="center"><td>IFSC Code</td><td style="color:forestgreen"><input type="text" name="ifsc" value="" required=""></td></tr>
                            <tr align="center"><td>CVV no</td><td style="color:forestgreen"><input type="text" name="cvv" value="" required=""></td></tr>
                         <tr><td align="center" colspan="2">
                                <button type="submit" style="border-radius: 20px; height: 40px; width:120px; background-color: lightcoral; ">
                                    Order
                                </button>
                            </td>
                        </tr>
                    
                        <%
                        }
                        %>
                        </table>
       </form>  

    </div>

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