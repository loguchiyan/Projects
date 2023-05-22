<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlinelearning","root","root");
    String user=(String)session.getAttribute("user");
    System.out.println(user);
    
    String id=(String)session.getAttribute("id");
    System.out.println(id);
    String questioncode=(String)session.getAttribute("code");
    System.out.println(questioncode);
   
    String title=request.getParameter("title");
    String testn=request.getParameter("testn");
    System.out.println(testn);
    System.out.println(title);
    int total=15;
    int right=0;
    int wrong=0;
    int total_attend=0;
    for(int i=1;i<=15;i++)
    {
        String question=request.getParameter("q"+i);
        String choice=request.getParameter("c"+i); 
        String ans=request.getParameter("ans"+i);
        if(choice.equalsIgnoreCase(ans))
        {
            right++;
            PreparedStatement query1=con.prepareStatement("insert into answers(id,user,question_code,question,answer,language,title,testn)"
                    + "values('"+id+"','"+user+"','"+questioncode+"','"+question+"','"+ans+"','"+title+"','"+title+"','"+testn+"') ");
          System.out.println( query1);
            query1.executeUpdate();
        }
        else
        {
            wrong++;
            PreparedStatement query1=con.prepareStatement("insert into answers(id,user,question_code,question,answer,language,title,testn)"
                    + "values('"+id+"','"+user+"','"+questioncode+"','"+question+"','---','"+title+"','"+title+"','"+testn+"') ");
            System.out.println( query1); 
            query1.executeUpdate();
        }
    }
    total_attend=right+wrong;
    PreparedStatement query1=con.prepareStatement("insert into results(id,user,title,question_code,language,total,mark,testn)"
            + "values('"+id+"','"+user+"','"+title+"','"+questioncode+"','"+title+"','"+total+"','"+right+"','"+testn+"')");
    System.out.println( query1);
    query1.executeUpdate();
%>
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
                                <h1 class="site-title"><a href="index.html" rel="home">Online <span>Learning </span></a></h1>
                            </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li class="current-menu-item"><a href="index.html">Home</a></li>
                                   
                                     <li><a href="asse.jsp">Online Assessment</a></li>
                                      <li><a href="asse1.jsp">Offline Assessment</a></li>
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
                                
                               <h4  style=" font-size: 20px; margin-top: -200px; color:#18d26e;font-weight: bolder; margin-left:300px;">Successfully Completed Your Test</h4>
                           <br>
                           <br>
                           
                           <br>
                            <table align="center" border="1" style="font-size: xx-large; margin-left:350px;text-align: left;padding-left: 30px;padding-right: 30px;padding-bottom: 10px;padding-top: 10px;border:  #18d26e solid 2px;line-height: 1.5;color: navy;font-weight: bold; ">
                                <tr><td colspan="2" align="center"><%=title%></td></tr>
                                <tr style="color: deeppink;"><td>Test Type </td><td style="padding-left: 15px;color: deeppink;"> :<%=title%></td></tr>
                                <tr style="color: brown;"><td>Total Questions</td><td style="padding-left: 15px;color: brown;"> :<%=total%></td></tr>
                                <tr style="color: royalblue;"><td>Attend Questions</td><td style="padding-left: 15px;color: royalblue;"> :<%=total_attend%></td></tr>
                                <tr style="color: green;"><td>Correct Answer</td><td style="padding-left: 15px;color: green;"> :<%=right%></td></tr>
                                <tr style="color: red;"><td>Wrong Answers</td><td style="padding-left: 15px;color: red;"> :<%=wrong%></td></tr>
                            </table>
                    </article>
                </div>
                            <h1 align="center"><a href="asse.jsp">Click to Back</a></h1>
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
