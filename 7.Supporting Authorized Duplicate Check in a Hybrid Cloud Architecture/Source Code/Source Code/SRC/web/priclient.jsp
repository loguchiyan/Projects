<%@page import="java.sql.*"%>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="seo & digital marketing">
    <meta name="keywords" content="marketing,digital marketing,creative, agency, startup,promodise,onepage, clean, modern,seo,business, company">
    <meta name="author" content="Themefisher.com">

   <title>Supporting Authorized Duplicate Check in a Hybrid Cloud Architecture </title>
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- Icofont -->
    <link rel="stylesheet" href="plugins/icofont/icofont.css">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css">


</head>


<body data-spy="scroll" data-target=".fixed-top">



   
<nav class="navbar navbar-expand-lg fixed-top trans-navigation">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="profile/" alt="" class="img-fluid b-logo">&nbsp; Welcome Private Cloud !
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNav" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon">
                    <i class="fa fa-bars"></i>
                </span>
              </button>

            <div class="collapse navbar-collapse justify-content-end" id="mainNav">
                <ul class="navbar-nav ">
                   
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="Private_Home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="priclient.jsp">Private Client</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="prifiles.jsp">Private Files</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="Result1.jsp">Result</a>
                    </li><li class="nav-item">
                        <a class="nav-link smoth-scroll" href="index.html">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--MAIN HEADER AREA END -->

<!--MAIN BANNER AREA -->
<div class="banner-area banner-2">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 m-auto text-center col-sm-12 col-md-12">
                          <div class="banner-content content-padding"><style>
                    table{
                        line-height: 25px;
                        width: 50%;
                        color:salmon;
                    }
                    h3{
                        font-weight: bold;
                        font-size: 30px;
                        color:salmon;
                        margin-left: 50px;
                    }</style>
                            <h2 style="margin-top: -100px;">Supporting Authorized Duplicate Check in a Hybrid Cloud Architecture</h2><br><br>
                      <h2 style="color: white; text-shadow: 0px 5px 6px white;  margin-left: 50px;font-family: cambria;font-weight: bold; font-size: 30px;">Private Cloud Clients</h2><br>
                    <style>
                   
                    table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 5px;
                        font-size: 15px;
                    }
                    
                    
                </style>
                <table align="center">
                    <tr>
                        <td style='color:navy; font-weight: bold;'>Id</td>
                        <td style='color:navy; font-weight: bold;'>Name</td>
                        <td style='color:navy; font-weight: bold;'>Mail Id</td>
                        <td style='color:navy; font-weight: bold;'>DOB</td>
                        <td style='color:navy; font-weight: bold;'>Gender</td>
                        <td style='color:navy; font-weight: bold;'>Profile</td>
                        <td style='color:navy; font-weight: bold;'>Contact</td>
                        <td style='color:navy; font-weight: bold;'>Type</td>
                        <td style='color:navy; font-weight: bold;'>Address</td>
                    </tr>
                    
                        
                        <% 
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/secureiot","root","root");
                        PreparedStatement query=con.prepareStatement("select * from upload where type='Private Cloud'");
                        ResultSet r=query.executeQuery();
                        System.out.println(query);
                        while(r.next())
                        {
                            String reg=r.getString("reg");
                            System.out.println(reg);
                        PreparedStatement query1=con.prepareStatement("select * from reg where id='"+reg+"'");
                        ResultSet rs=query1.executeQuery();
                        System.out.println(query);
                        while(rs.next())
                        {
                         
                        %>
                        <tr>
                        <td style='font-weight: bold;'><%=rs.getString("id")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("name")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("mail_id")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("dob")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("gender")%></td>
                        <td style='font-weight: bold;'><img src="profile/<%=rs.getString("profile")%>" alt="" class="img-fluid b-logo"></td>
                        <td style='font-weight: bold;'><%=rs.getString("cont")%></td>
                        <td style='font-weight: bold; color:gold'><%=r.getString("type")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("address")%></td>
                    </tr><%}}%>
                </table>   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--MAIN HEADER AREA END -->
<!--  ABOUT AREA START  -->
    <section id="intro" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-md-12">
                    <div class="section-heading">
                        <p class="lead">Integrating IoT devices and cloud computing technology is considered as an effective approach to storing and managing the enormous amount of data generated by various devices.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5  d-none d-lg-block col-sm-12">
                    <div class="intro-img">
                        <img src="images/banner/why-choose.png" alt="intro-img" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-7 col-md-12 col-sm-12 ">
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-md-6">
                            <div class="intro-box">
                                <span>01.</span>
                                <h4>Management</h4>
                                <p>we founded September with the goal of creating meaningful digital experiences that connect with people.</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-md-6">
                            <div class="intro-box">
                                <span>02.</span>
                                <h4>Strategy</h4>
                                <p>We?re full service which means we?ve got you covered on design & content right through to digital. </p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-md-6">
                            <div class="intro-box">
                                <span>03.</span>
                                <h4>Experience</h4>
                                <p>You?ll form a lasting relationship with us, collaboration is central to we do.Digital experiences connect people.</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-md-6">
                            <div class="intro-box">
                                <span>04.</span>
                                <h4>Build</h4>
                                <p>Technology and design are the core of success for real estate related businesses. Leverage our years.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-12">
                           <div class="intro-cta">
                               <p class="lead ">Still have any question on mind ? <a href="#contact" class="smoth-scroll">Contact us</a></p>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  ABOUT AREA END  -->

<!--  SERVICE AREA START  -->
<!--  SERVICE PARTNER END  -->

    <!--  BLOG AREA END  -->

<!--  FOOTER AREA START  -->

<!--  FOOTER AREA END  -->

   

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4.3.1 -->
    <script src="plugins/bootstrap/js/popper.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- Woow animtaion -->
    <script src="plugins/counterup/wow.min.js"></script>
    <script src="plugins/counterup/jquery.easing.1.3.js"></script>
     <!-- Counterup -->
    <script src="plugins/counterup/jquery.waypoints.js"></script>
    <script src="plugins/counterup/jquery.counterup.min.js"></script>

    <!-- Google Map -->
    <script src="plugins/google-map/gmap3.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>   
    <!-- Contact Form -->
    <script src="plugins/jquery/contact.js"></script>
    <script src="js/custom.js"></script>

  </body>
  </html>
   