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
        
    <style>
                    tr,td{
                                  
                                        font-size: 15px;
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
                        color:  darkviolet;
                    }
                    
                        	
                        	
                        	
                </style>

    <!-- ***** Welcome Area Start ***** -->
        <!-- ***** Header Text Start ***** -->
        <%
            String sid=session.getAttribute("sid").toString();
        String name=session.getAttribute("name").toString();
        String sem=request.getParameter("sem");
        %>
        <div class="header-text">
            <h2 align="center" style=" color:white;font-size: 20px;">View <%=name%>  <span style=" color: black;"><%=sem%> </span> Subjects</h2><br><br>
             <div class="container"><table align="center" style="width:700px; ">    
                            <tr>
                            
                             <th>Register ID</th>
                            <th>Semester</th>
                            <th>Subject1 </th> 
                              <th>Subject2 </th>
                                <th>Subject3 </th>
                                  <th>Subject4 </th>
                                    <th>Subject5 </th>
                                      <th>Lab 1 </th>
                                        <th>Lab 2</th> 
         </tr>
  <%  
                                
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/marksheet","root","root");
                        PreparedStatement query=con.prepareStatement("select * from sem1 where sid='"+sid+"' and sem='"+sem+"' ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next())
                        {    
                             String s1=rs.getString("s1");
String s2=rs.getString("s2");
String s3=rs.getString("s3");
String s4=rs.getString("s4");
String s5=rs.getString("s5");
String l1=rs.getString("l1");
String l2=rs.getString("l2");
                        %>
          <tr>
              
                            <td><%= sid%></td>
                             <td><%= sem%></td>
                            <td><%= s1%></td>
                            <td><%=s2%></td>
                            <td><%=s3%></td>  
                           <td><%= s4%></td>
                            <td><%=s5%></td>
                            <td><%=l1%></td> 
                               <td><%= l2%></td></tr>
                            <%}%></table>  
                           <br>
                           <br>
	
       <h3 align="center" style=" color:white;font-size: 20px; ">View <%=name%>  <span style=" color: black;"><%=sem%> </span> marks</h3><br><br>
 
   <table align="center" style="width:800px; ">    
                            <tr>
                            
                             <tr>
                                <th>Register ID</th>
                            <th>Semester</th>
                            <th>Subject1 Mark</th> 
                              <th>Subject2 Mark</th>
                                <th>Subject3 Mark</th>
                                  <th>Subject4 Mark</th>
                                    <th>Subject5 Mark</th>
                                      <th>Lab 1 Mark</th>
                                        <th>Lab 2 Mark</th> 
                               <th>Overall Percentage</th></tr>
         </tr>
  <%  
                        PreparedStatement query1=con.prepareStatement("select * from sem1 where sid='"+sid+"' and sem='"+sem+"' ");
                        ResultSet rs1=query1.executeQuery();
                        System.out.println(query1);
                        while(rs1.next())
                        {    
                                                         	 
    String m1=rs1.getString("m1");
String m2=rs1.getString("m2");
String m3=rs1.getString("m3");
String m4=rs1.getString("m4");
String m5=rs1.getString("m5");
String lm1=rs1.getString("lm1");
String lm2=rs1.getString("lm2");
String cgpa=rs1.getString("cgpa");
                        %>
           <tr>
                            
                          <td><%= sid%></td>
                          <td><%= sem%></td>
                          <td><%= m1%></td>
                          <td><%=m2%></td>
                          <td><%=m3%></td>  
                          <td><%= m4%></td>
                          <td><%=m5%></td>
                          <td><%=lm1%></td> 
                          <td><%= lm2%></td>
                           <td><%= cgpa%></td>
                        </tr> <%	
	            	}
	            %>                           
           
	           </table>  
             
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