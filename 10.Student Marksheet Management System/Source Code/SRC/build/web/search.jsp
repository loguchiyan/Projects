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
          <li><a class="nav-link scrollto" href="search.jsp"> View Semester Marks</a></li>
          
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
        <%
        String name=session.getAttribute("name").toString();
        %>
     <style>
                    tr,td{
                                       
                                        font-size: 20px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid black;
                                        border-radius: 15px;
                        		padding:5px;
                        		text-align:center;
                                        background: white;
                                        color:  #18d26e;
                    }
                    th{
                                        color:  #d63384;
                    }
                    table{
                        		margin-left:-100px;
                                        height: auto;
                        }
                        	
                        td{
                            color:  #d63384;
                        }	
                        	
                </style>

    <!-- ***** Welcome Area Start ***** -->
        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
        <h2 align="center" style=" color:white;font-size: 20px;">Search by Location!</h2><br><br>
        <div class="container">
            <%
            String sid=session.getAttribute("sid").toString();
            %>
       <form action="searchaction.jsp">
       <table align="center" style="width:700px; ">          
        
             
        <!-- Page Content  -->
        <tr><td><strong>Search By Semester</strong></td><td>
                <select name="sem" >
                    <option>Select Our Semester</option>
                     <% 
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/marksheet","root","root");
                        PreparedStatement query=con.prepareStatement("select * from sem1  where sid='"+sid+"' group by sem ");
                        System.out.println(query);
                        ResultSet r=query.executeQuery();
                        while(r.next()){
%>  
                    <option><%=r.getString("sem")%><%}%></option>
                </select></td></tr>
        <tr><td align="center" colspan="2"><button type="submit">Search</button></td></tr>
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