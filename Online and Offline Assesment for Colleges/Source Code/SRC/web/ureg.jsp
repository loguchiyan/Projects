<!DOCTYPE html>
<html lang="en">
<head>
    <title>Assessment</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- ElegantFonts CSS -->
    <link rel="stylesheet" href="css/elegant-fonts.css">

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="hero-content">
        <header class="site-header">
            <div class="top-header-bar">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
                        

                           
                        </div><!-- .col -->

                        <div class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                         

                         
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container-fluid -->
            </div><!-- .top-header-bar -->

            <div class="nav-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-9 col-lg-3">
                            <div class="site-branding">
                                <h1 class="site-title"><a href="index.html" rel="home">Assess<span>ment</span></a></h1>
                            </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li class="current-menu-item"><a href="index.html">Home</a></li>
                                    <li><a href="admin.jsp">Staff</a></li>
                                    <li><a href="user.jsp">Student</a></li>
                               
                                </ul>

                                
                            </nav><!-- .site-navigation -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .nav-bar -->
        </header><!-- .site-header -->

        <div class="hero-content-overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="hero-content-wrap flex flex-column justify-content-center align-items-start">
                            <header class="entry-header">
                               <h4  style=" font-size: 20px; margin-top: -100px; color:#18d26e;font-weight: bolder; font-family:  sans-serif; ">Welcome Student Login!!!</h4>
                           <br>
                           <br>
                           
                            <style>
                            h4{
                                font-size: 20px;
                             
                                margin-left: 380px;
                                
                            }
                            
                            table,tr,td{
                                margin-left: 380px;
                                font-size: 14px;
                                font-weight: bold;
                                padding: 5px;
                               
                                color:white;
                                
                            }
                        </style>
                    
                       
                        <form action="Register" method="post" enctype="multipart/form-data" > 
                            <table align="center">
                                 <tr><td><strong>Profile&emsp; </strong></td><td><input type="file" name="image" value="" style="border-radius: 10px; color: #2f323a; " required></td></tr>
                              <tr><td><strong>Student ID&emsp; </strong></td><td><input type="text" name="id" value="" style="border-radius: 10px; color: #2f323a; " required></td></tr>
                            <tr><td><strong>Student name&emsp; </strong></td><td><input type="text" name="user" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Password &emsp; </strong></td><td><input type="password" name="password" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Email &emsp; </strong></td><td><input type="email" name="email" value="" style="border-radius: 10px; color: #2f323a; " required></td></tr>
                            <tr><td><strong>Date of Birth &emsp; </strong></td><td><input type="text" name="date" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            </select></td></tr>
                            <tr><td><strong>Gender&emsp; </strong></td><td>
                            <input type="radio" name="gender" value="male" style=" "> Male
                            <input type="radio" name="gender" value="female"> Female
                            <input type="radio" name="gender" value="other"> Other</td></tr>    
                            <tr><td><strong>10th Mark&emsp; </strong></td><td><input type="text" name="mobile" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>12th Mark&emsp; </strong></td><td><input type="text" name="country" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                            <tr><td><strong>CGPA &emsp; </strong></td><td><input type="text" name="state" value="" style=" border-radius: 10px; color: #2f323a;  " required></td></tr>
                          
                           
                            <tr><td align="center" colspan="2"><button type="submit" value="submit" style=" margin-left: -60px; color: black; font-size: 15px; background-color: #18d26e; font-family: sans-serif;">Register</button> </td></tr>
                                                           </table></form>
                    
              </div>
            </div>
                            </header><!-- .entry-header -->

                            

                    
                        </div><!-- .hero-content-wrap -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .hero-content-hero-content-overlay -->
    </div><!-- .hero-content -->


<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/swiper.min.js'></script>
<script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
<script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>

</body>
</html>