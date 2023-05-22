<%@page import="java.util.Calendar"%>
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
    <%
    String am_pm;
    java.text.DateFormat df = new java.text.SimpleDateFormat("dd MMM yyyy");
    Calendar cal = Calendar.getInstance();
    java.text.DateFormat tim = new java.text.SimpleDateFormat("hh:mm");
    Calendar cal2 = Calendar.getInstance();
    if(cal2.get(Calendar.AM_PM) == 0) 
        am_pm = "AM";
    else
        am_pm = "PM";
    String date=df.format(cal.getTime());
    String st =tim.format(cal2.getTime());
    String Time = st +" "+ am_pm;
    System.out.println("Date : "+date+"       Time :  "+Time);
%>
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
                                   <h1 class="site-title"><a href="index.html" rel="home">Assess  <span>ment </span></a></h1>
                          </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                           

                                
                            </nav><!-- .site-navigation -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .nav-bar -->
        </header><!-- .site-header -->

        <div class="hero-content-overlay">
            
                           <style>
                               input,td{
                                    width: 300px;
                               }
                            </style>   
                               
                               <br>
                                <h1> Add </h1>
                               
                               <form action="mcqaction12.jsp">
                                <table align="center" style="width: 400px;line-height: 3;">
                                    
                                    
                                    <tr style="color:#18d26e;font-weight: bold; width: 300px;" ><td ><select  name="title" value=" " required=""><option>----Choose Test Type--------</option>
                                                <option>C Programming</option>
                                                <option>Java</option>
                                                <option>OOPS</option>
                                                <option>Python</option>
                                                <option>Digital Marketing</option>
                                            </select>      
                                           </td></tr>
                                    
                                    <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">1)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 1</td><td><input type="textarea" name="q1" style="color: navy;" required></td></tr>
                                   
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">2)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 2</td><td><input type="textarea" name="q2" style="color: navy;" required></td></tr>
                                    
                                   
                                  
                                   
                                    <tr align="center"><td colspan="2" align="center"><input type="submit" value="Create Exam"></td></tr>
                               <br>
                               <br>
                               <br>
                              
                                </table>
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
                               <br><br>
                               <br>
                               <br>
                               <br>
                               <br>
                               <br>
                               <br><br>
                               <br>
                               <br>
                               <br>
                               <br>
                     
                               <br>
                               <br>
                    
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
