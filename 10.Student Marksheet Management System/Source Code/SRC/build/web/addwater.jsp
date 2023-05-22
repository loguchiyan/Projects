<%@page import="algo.CipherHelper"%>
<%@page import="java.util.Random"%>
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
          <li><a class="nav-link scrollto" href="addwater.jsp">Add Students</a></li>
           <li><a class="nav-link scrollto" href="Viewstu.jsp">Add Semester Subjects</a></li>
            <li><a class="nav-link scrollto" href="Viewsub.jsp">Give Marks</a></li>
           <li><a class="nav-link scrollto " href="sorder.jsp">View All Marks</a></li>
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
            <%
 Random r = new Random(); 
                      String x = Integer.toString(r.nextInt(10000));
                      String a="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghiiaifia";                      
                   CipherHelper cc = new CipherHelper();
                    String tkey=cc.cipher("12345678",x);
                  
                   long code   =(long)((Math.random()*9*Math.pow(10,15))+Math.pow(10,15));
  
String unique_password="";
for (long i=code;i!=0;i/=100)
    {
        long digit=i%100;
        if (digit<=90)
        digit=digit+32; 
       char ch=(char) digit;
       unique_password=ch+unique_password;
    }
    System.out.println("unique password ="+unique_password);
System.out.println("unique password ="+tkey);
      
                          
                           
        %>
            <h3 class="h4" align="center" style=" color: white; font-size: 23px; margin-bottom: 400px;  margin-left: 150px; "> Add Student Details </h3>
							
               				
                <div class="container">
    <form action="Add.jsp" method="post"   > 
                            <table align="center">
                                <tr><td><strong>Student ID&emsp; </strong></td><td><input type="text" name="sid" value="SID<%=x%>" style="border-radius: 10px; color: #2f323a; " required></td></tr>
                             <tr><td><strong>Student Name&emsp; </strong></td><td><input type="text"  name="name" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Last name&emsp; </strong></td><td><input type="text" name="lname" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                             <tr><td><strong>Gender &emsp; </strong></td><td><select name="gender" style=" border-radius: 10px; color: #2f323a;  " required >
                                        <option>--Choose--</option>
                                        <option>Male</option>
                                        <option>Female</option>
                                        <option>Others</option>
                                        </select></td></tr>
                            <tr><td><strong>Date of Birth&emsp; </strong></td><td><input type="text"  name="dob" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Department&emsp; </strong></td><td><input type="text" name="dept" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Year&emsp; </strong></td><td><input type="text" name="year" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Semester&emsp; </strong></td><td><input type="text" name="sem" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                           
                            <tr><td><strong>Contact No&emsp; </strong></td><td><input type="text" name="contact" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Address&emsp; </strong></td><td><input type="text" name="address" value="" style="border-radius: 10px; color: #2f323a; " required></td></tr>
                            <tr><td><strong>city &emsp; </strong></td><td><input type="text" name="city" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                           
                             <tr><td align="center" colspan="2"><button type="submit" style=" margin-left: -60px; color: black; font-size: 15px; background-color: #18d26e; font-family: sans-serif;">Submit</button> </td></tr>
                                                           </table></form>
      

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