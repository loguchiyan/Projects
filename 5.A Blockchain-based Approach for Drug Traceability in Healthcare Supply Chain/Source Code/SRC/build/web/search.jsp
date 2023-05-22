

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Description">
    <meta name="author" content="Author">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
	<meta property="og:site_name" content="" /> <!-- website name -->
	<meta property="og:site" content="" /> <!-- website link -->
	<meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
	<meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
	<meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
	<meta property="og:url" content="" /> <!-- where do you want your post to link to -->
	<meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>Block based Drug Recommendation</title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
</head>
<body data-spy="scroll" data-target=".fixed-top">
    
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark">
        <div class="container">
            
            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Revo</a> -->

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="index.html" style=" text-decoration:none;"><p style=" color:#3dcac8; font-size:20px; font-weight:bolder;" >Drug Traceability</p></a> 

            <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll-active" href="uhome.jsp" style="color: #3dcac8; ">HOME <span class="sr-only">(current)</span></a>
                    </li>
                      <li class="nav-item">
                        <a class="nav-link page-scroll" href="search.jsp" style=" color: #3dcac8;">Search</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="order.jsp" style=" color: #3dcac8;">Order Status</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="review.jsp" style=" color: #3dcac8;">Reviews</a>
                    </li>
                       <li class="nav-item">
                        <a class="nav-link page-scroll" href="topk.jsp" style=" color: #3dcac8;">Top k Drugs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="index.html" style=" color: #3dcac8;">Logout</a>
                    </li>
                </ul>
               
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Header -->
    <header id="header" class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
 <h1 style=" text-align:center;">Search Drug</h1>
                    <style>
     h1.hover{
          color:#3dcac8;
           margin-bottom:200px;
                                                        
             }
     h1{
          font-size:25px;
          margin-top:-50px;
         }
         table,tr,td{
             padding:5px;
         }      
 </style>           <%
                       Class.forName("com.mysql.jdbc.Driver");
                     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
                           PreparedStatement ps=con.prepareStatement(" SELECT * FROM upload ");
                           System.out.println (ps);
                           ResultSet r=ps.executeQuery();
                           System.out.println(r);
                           while(r.next()){
                               String hashkey=r.getString("hashkey");
                               System.out.println(hashkey);
                           
 
 
                    %>



                       
                            <form action="searchinc.jsp" method="post">
                                <center>
                          <table>
                              <input type="hidden" name="hashkey" value="<%=r.getString("hashkey")%>"> <%}%> 
                         <tr><td>Search :</td><td><input type="text" name="cate" value=""></td></tr>
                         <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;background-color: #3dcac8;  ">Submit</button></td></tr>
                         </table>
                                   </center>            
                          </form>
                                 <br> 
                                  <br> 
                                  <br> 
                                  <br> 
                                  <br> 
                                  <br> 
                                  <br> 
                                  <br> 
                                  <br> 
                                  <br> 
                                   <br> 
                                  <br> 
                                     <br> 
                                      <br> 
                                       <br> 
                                     <br> 
                                
                                            </div> <!-- end of text-container -->
                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                               

                        

                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of text slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
           
        </div> <!-- end of container -->
    </header> <!-- end of header -->
    <!-- end of header -->


    <!-- Registration -->
    <div id="registration" class="form-1 bg-dark-blue">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6">

                    <!-- Registration Form -->
                    <form id="registrationForm">
                        <div class="form-group">
                            <input type="text" class="form-control-input" id="rname" required>
                            <label class="label-control" for="rname">Name</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control-input" id="roccupation" required>
                            <label class="label-control" for="roccupation">Occupation</label>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control-input" id="remail" required>
                            <label class="label-control" for="remail">Email</label>
                        </div>
                        <div class="form-group checkbox">
                            <input type="checkbox" id="rterms" value="Agreed-to-Terms" required>I agree with the website's <a href="privacy.html">Privacy Policy</a> and <a href="terms.html">Terms & Conditions</a>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="form-control-submit-button">SIGN UP</button>
                        </div>
                    </form>
                    <!-- end of registration form -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of form-1 -->
    <!-- end of registration -->


  
    <!-- end of details 1 -->


   



    <!-- Testimonials -->
    <div class="slider-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider">
                            <div class="swiper-wrapper">
                                
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="images/testimonial-1.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">I just finished my trial period and was so amazed with the support and results that I quickly purchased the app</p>
                                            <p class="testimonial-author">Jude Thorn - Designer</p>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="images/testimonial-2.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">I don't know how I managed to get work done without Revo. The speed of this application is amazing!</p>
                                            <p class="testimonial-author">Roy Smith - Developer</p>
                                        </div>
                                    </div>        
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="images/testimonial-3.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">This app has the potential of becoming a mandatory tool in every developer's day to day regular operations</p>
                                            <p class="testimonial-author">Marsha Singer - Marketer</p>
                                        </div>
                                    </div>        
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="images/testimonial-4.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">Searching for a great prototyping and layout design app was difficult but thankfully I found Revo suite</p>
                                            <p class="testimonial-author">Tim Shaw - Designer</p>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="images/testimonial-5.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">Revo's support team is amazing. They've helped me with some issues and I am so grateful to the entire team</p>
                                            <p class="testimonial-author">Lindsay Spice - Designer</p>
                                        </div>
                                    </div>        
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="card">
                                        <img class="card-image" src="images/testimonial-6.jpg" alt="alternative">
                                        <div class="card-body">
                                            <p class="testimonial-text">Who would have thought that Revo can provide such amazing results in just a few weeks of normal basic use</p>
                                            <p class="testimonial-author">Ann Black - Developer</p>
                                        </div>
                                    </div>        
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
                            
                            </div> <!-- end of swiper-wrapper -->
        
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- end of add arrows -->
        
                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of slider-1 -->
    <!-- end of testimonials -->


   

    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © <a href="#your-link">Drug</a></p>
                </div> <!-- end of col -->
               <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright --> 
    <!-- end of copyright -->
    
    	
    <!-- Scripts -->
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>