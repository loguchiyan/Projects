<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.*"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="seo & digital marketing">
    <meta name="keywords" content="marketing,digital marketing,creative, agency, startup,promodise,onepage, clean, modern,seo,business, company">
    <meta name="author" content="Themefisher.com">

   <title>Supporting Authorized Duplicate Check in a Hybrid Cloud Architecture</title>
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



                <%String pic=session.getAttribute("pic").toString();
                String name=session.getAttribute("name").toString();%>
<nav class="navbar navbar-expand-lg fixed-top trans-navigation">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="profile/<%=pic%>" style="width: 90px; height: 80px; border-radius: 30px;" alt="" class="img-fluid b-logo">&nbsp; Welcome <%=name%> !
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNav" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon">
                    <i class="fa fa-bars"></i>
                </span>
              </button>

            <div class="collapse navbar-collapse justify-content-end" id="mainNav">
                <ul class="navbar-nav ">
                   
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="User_Home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="Uploadrequest.jsp">Request & Upload</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="Manage.jsp">Manage</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="Viewother.jsp">Show Files</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link smoth-scroll" href="Download.jsp">Download File</a>
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
                        margin-left: 20%;
                        color:salmon;
                    }
                    h3{
                        font-weight: bold;
                        font-size: 30px;
                        color:salmon;
                        margin-left: 50px;
                    }</style>
                            <h2 style="margin-top: -100px;"> Supporting Authorized Duplicate Check in a Hybrid Cloud Architecture</h2><br><br>
                      <h2 style="color: white; text-shadow: 0px 5px 6px white;  margin-left: 50px;font-family: cambria;font-weight: bold; font-size: 30px;">Show Type Cloud Files </h2><br>
                    
            <%                         
            String oname=request.getParameter("oname");
            String fname=request.getParameter("reg");
            String id=request.getParameter("id");
            String image=request.getParameter("image");
            String trap=request.getParameter("trap");
                         String jspPath = session.getServletContext().getRealPath("/res");
            String txtFilePath = "C:\\files\\enc\\"+image;           
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;
            while((line = reader.readLine())!= null){
                 sb.append(line+"\n");
                }
            String book=sb.toString();
			

                        %>
                       <center>
                        <h3><%=image%></h3>
                        <form action="Viewother.jsp">
                        <input type="hidden" name="fname" value="<%=image%>">
                        <textarea rows="15" cols="40" style="width:400px;height: 250px;"><%=book%></textarea><br><br>
                        <input type="submit" value="Click to Back">
                        </form>
                        </center> </div>
                </div>
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
   