<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>One Music - Modern Music HTML5 Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="index.html" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                       <li><a href="upload.jsp">Upload</a></li>
                                         <li><a href="search.jsp">Search Music </a></li>
                                         <li><a href="play.jsp">Your Playlist</a></li>
                                         <li><a href="index.html">logout</a></li>
                                </ul>
                                    

                                <!-- Login/Register & Cart Button -->
                              
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
       <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/mu.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <style>
                                table{
                                  width:300px;
                                   line-height: normal;
                                   padding:3px;
                                   font-size: 18px;
                                   
                                }
                                input{
                                    border:1px solid black;
                                }
                                td{
                                    white-space:  nowrap;
                                    padding:5px;
                                }
                                table,tr,td{
                                 padding-bottom: 10px;
                              color: white;
                              border-collapse: collapse;
                              margin-left: 400px;
                           font-weight:  700;
                         
      }
                                
                                </style>
                            <div class="hero-slides-content text-center">
                                <marquee  direction="left" style="color:white;  margin-bottom:500px; ">  Music is God's gift to man, the only art of Heaven given to earth, the only art of earth we take to Heaven.</marquee>
                              
                               <form action="srchaction.jsp">
                                   <table align="center" style=" margin-top:-400px; text-align: center" >
                        <tr><td><strong>Search By  Music Directors: </strong></td><td>
                            <select name="music" style="border-radius: 10px;  height: 20px; width: 250px; height: 30px" required>
                                <option>Choose one</option>
                        <%
                               String music=request.getParameter("music");
                             
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","root");
                        PreparedStatement query=con.prepareStatement("select * from upload group by music ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                        %>
                       
                                <option><%=rs.getString("music")%></option><%}%>
                               
                                
                            </select>
                            </td></tr>
                        <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;">Submit</button></td></tr>
                    </table>
                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            
        </div>
    </section>
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>
