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
                                   <h1 class="site-title"><a href="index.html" rel="home">ASPA  <span>Amigos </span></a></h1>
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
                                <h1> Add MCQ Questions</h1>
                               
                               <form action="mcqaction.jsp">
                                <table align="center" style="width: 400px;line-height: 3;">
                                    
                                    
                                    <tr style="color:#18d26e;font-weight: bold; width: 300px;" ><td ><select  name="title" value=" " required=""><option>----Choose Test Type--------</option>
                                                <option>Quantitative</option>
                                                <option>Logical</option>
                                                <option>Verbal</option>
                                                <option>Coding</option>
                                                <option>Mock Test</option>
                                            </select>      
                                           </td></tr>
                                     <tr style="color:  white;font-weight: bold;"><td>Test Name</td><td><input type="text" name="testn" style="color: navy;" required></td></tr>
                                   
                                    <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">1)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 1</td><td><input type="text" name="q1" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="a1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="a2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="a3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="a4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 1</td><td><input type="text" name="ans1" style="color: green;" required></td></tr>
                                    
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">2)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 2</td><td><input type="text" name="q2" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="b1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="b2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="b3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="b4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 2</td><td><input type="text" name="ans2" style="color: green;" required></td></tr>
                                    
                                    <tr style="color:#18d26e; font-weight: bold;"><td colspan="2">3)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 3</td><td><input type="text" name="q3" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="c1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="c2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="c3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="c4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 3</td><td><input type="text" name="ans3" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">4)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 4</td><td><input type="text" name="q4" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="d1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="d2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="d3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="d4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 4</td><td><input type="text" name="ans4" style="color: green;" required></td></tr>
                                    
                                    <tr style="color:#18d26e;font-weight: bold;"><td colspan="2">5)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 5</td><td><input type="text" name="q5" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="e1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="e2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="e3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="e4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 5</td><td><input type="text" name="ans5" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">6)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 6</td><td><input type="text" name="q6" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="f1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="f2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="f3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="f4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 6</td><td><input type="text" name="ans6" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">7)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 7</td><td><input type="text" name="q7" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="g1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="g2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="g3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="g4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 7</td><td><input type="text" name="ans7" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">8)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 8</td><td><input type="text" name="q8" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="h1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="h2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="h3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="h4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 8</td><td><input type="text" name="ans8" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">9)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 9</td><td><input type="text" name="q9" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="i1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="i2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="i3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="i4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 9</td><td><input type="text" name="ans9" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">10)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 10</td><td><input type="text" name="q10" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="j1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="j2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="j3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="j4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 10</td><td><input type="text" name="ans10" style="color: green;" required></td></tr>
                                    
                                   <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">11)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 11</td><td><input type="text" name="q11" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="k1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="k2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="k3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="k4" style="color: darkred;" required></td></tr>
                                    <tr style="color:darkturquoise;font-weight: bold;"><td>Answer 11</td><td><input type="text" name="ans11" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">12)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 12</td><td><input type="text" name="q12" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="l1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="l2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="l3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="l4" style="color: darkred;" required></td></tr>
                                     <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 12</td><td><input type="text" name="ans12" style="color: green;" required></td></tr>
                                    
                                     <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">13)--------------------------------------------------</td></tr>
                                   
                                    <tr style="color: darkturquoisee;font-weight: bold;"><td>Question 13</td><td><input type="text" name="q13" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="m1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="m2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="m3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="m4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 13</td><td><input type="text" name="ans13" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">14)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 14</td><td><input type="text" name="q14" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="n1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="n2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="n3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="n4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 14</td><td><input type="text" name="ans14" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">15)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 15</td><td><input type="text" name="q15" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="o1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="o2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="o3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="o4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 15</td><td><input type="text" name="ans15" style="color: green;" required></td></tr>
                                    
                                    
                                      
                                   <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">16)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 16</td><td><input type="text" name="q16" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="p1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="p2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="p3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="p4" style="color: darkred;" required></td></tr>
                                    <tr style="color:darkturquoise;font-weight: bold;"><td>Answer 16</td><td><input type="text" name="ans16" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">17)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 12</td><td><input type="text" name="q17" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="qe1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="qe2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="qe3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="qe4" style="color: darkred;" required></td></tr>
                                     <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 17</td><td><input type="text" name="ans17" style="color: green;" required></td></tr>
                                    
                                     <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">18)--------------------------------------------------</td></tr>
                                    <tr style="color: darkturquoisee;font-weight: bold;"><td>Question 18</td><td><input type="text" name="q18" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="r1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="r2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="r3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="r4" style="color: darkred;" required></td></tr>
                                    <tr style="color:darkturquoise;font-weight: bold;"><td>Answer 18</td><td><input type="text" name="ans18" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">19)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 14</td><td><input type="text" name="q19" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="s1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="s2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="s3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="s4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 19  </td><td><input type="text" name="ans19" style="color: green;" required></td></tr>
                                    
                                    <tr style="color: #18d26e;font-weight: bold;"><td colspan="2">20)--------------------------------------------------</td></tr>
                                    <tr style="color:  white;font-weight: bold;"><td>Question 20</td><td><input type="text" name="q20" style="color: navy;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 1</td><td><input type="text" name="t1" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 2</td><td><input type="text" name="t2" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 3</td><td><input type="text" name="t3" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkred;font-weight: bold;"><td>Choice 4</td><td><input type="text" name="t4" style="color: darkred;" required></td></tr>
                                    <tr style="color: darkturquoise;font-weight: bold;"><td>Answer 20</td><td><input type="text" name="ans20" style="color: green;" required></td></tr>
                                    
                                    <tr align="center"><td colspan="2" align="center"><input type="submit" value="Create Exam"></td></tr>
                                </table>
                            </form>
               
                            
                            
                            
                            
                            
                         

                            

                    
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
