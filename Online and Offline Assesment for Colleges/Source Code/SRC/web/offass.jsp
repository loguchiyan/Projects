<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
                               <h1 class="site-title"><a href="index.html" rel="home">Assess<span>ment </span></a></h1>
                          </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li class="current-menu-item"><a href="index.html">Home</a></li>
                                 <li><a href="asse.jsp">Online Assessment</a></li>
                                      <li><a href="offass.jsp">Offline Assessment</a></li>
                                      <li><a href="final.jsp">Online Mark</a></li>
                                         <li><a href="final2.jsp">Offline  Mark</a></li>
                                    <li><a href="index.html">Logout</a></li>
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
                     
                         <br>
                           <br>
                           
                            <style>
                            h1{
                                font-size: 20px;
                                margin-top: 200px;
                                margin-left: 220px;
                                
                            }
                            
                            table,tr,td{
                                margin-left: 350px;
                                font-size: 16px;
                                font-weight: bold;
                                padding: 5px;
                                font-family: sans-serif;
                                color:white;
                                
                            }
                            button{
                                background-color: #19c880;
                                margin:10px;
                                margin-bottom:350px;
                                margin-left:220px;
                            }
                            .buttn{
                                margin-right:5px; 
                            }
                        </style>
                        <div class="butt">
                    <a href="2marks.jsp"> <button class="buttn">2 Mark</button> </a> 
                    <a href="5marks.jsp"> <button class="buttn">5 Mark</button> </a> 
                    <a href="12marks.jsp"> <button class="buttn">10 Mark</button> </a> 
                    <div>
                       
<!--                        <form action="Upload" method="post" enctype="multipart/form-data"  > 
                            <table align="center">
                               <tr style="color:#18d26e;font-weight: bold; width: 300px;" ><td ><select  name="title1" value=" " required=""><option>----Choose Test Type--------</option>
                                                <option>2 Marks</option>
                                                <option>5 Marks</option>
                                                <option>12 Marks</option>
                                               
                                            </select>      
                                           </td></tr>
                                <tr style="color:#18d26e;font-weight: bold; width: 300px;" ><td ><select  name="sub" value=" " required=""><option>------Choose Subject--------</option>
                                                   <option>C Program</option>
                                                <option>Java</option>
                                                <option>Python</option>
                                                <option>Operating System</option>
                                               <option>OOPS </option>
                                            
                                            </select>      
                                           </td></tr>
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">1)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:400px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">2)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:400px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">3)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:400px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">4)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:300px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">5)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:300px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">6)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:300px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">7)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:300px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">8)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:300px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">9)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:300px;"></td></tr>   
                              <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">10)--------------------------------------------------</td></tr>
                              <tr><td><input type="textarea " name="que1" required="" style=" width:300px;"></td></tr>   
                           
                            
                            
                            
                            
                            
                            </table></form>
                    
                        
                            
                            
                            
                            -->
                            
                            
                            
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

