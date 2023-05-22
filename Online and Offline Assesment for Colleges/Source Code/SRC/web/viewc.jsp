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
                                    <li><a href="viewc.jsp">View Course and Download</a></li>
                                     <li><a href="asse.jsp">Take Assessment</a></li>
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
                                <%
                                 String user=session.getAttribute("user").toString();
                                %>
                               <h4  style=" font-size: 20px; margin-top: -200px; color:#18d26e;font-weight: bolder; margin-left:300px;">View Course and Download Syllabus!!!</h4>
                           <br>
                           <br>
                           
                          <style>
      table{
        
          width: 50%;
          color: #007bff;
          
          font-size: 15px;
          
      }
      table,tr,td{
          padding-bottom: 10px;
          border: #0056b3 2px solid;
          border-collapse: collapse;
      }
      td{
          color: red;
      }
     
  </style>
   <table align="center" border="1" style="width: 90% !important; margin-left: 180px;line-height: 1.7;background: aliceblue;border-radius: 12px;text-align: left;color: black;text-transform: capitalize;">
	        	<tr style="color: navy;font-weight: bold">
                            <td>Course Name</td>	
                            <td>Course Duration</td>                                
                                <td>Description</td>
	        		<td>Syllabus</td>
	        		
	        	</tr>
	            <%
                  
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelearning","root","root");
                        PreparedStatement query=con.prepareStatement("select * from upload ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                            
	             %>
	            			<tr>
                                            <td style=" color: black;"><%=rs.getString("cname") %></td>       
                                                <td style=" color: black;"><%=rs.getString("dura") %></td>
	            				<td style=" color: black;"><%=rs.getString("desci") %></td>
                                                <td style=" color: black;"><a href="download.jsp?image=<%=rs.getString("image")%>"><%=rs.getString("image") %></a></td>
                                        </tr>		
	            <%	
	            	}	
	            %>
	        </table>
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
