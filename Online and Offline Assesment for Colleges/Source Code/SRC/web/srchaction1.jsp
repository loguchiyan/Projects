
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

        <div class="">
          
                    
                     
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
          
          border-collapse: collapse;
      }
      td{
          color:  crimson;
      }
     
  </style>
   <%
                            String title=request.getParameter("title");
                            System.out.println(title);
                            String testn=request.getParameter("testn");
                            System.out.println(testn);
                        %>
                         
                        <h1 align="center" style="font-size: 30px;"><%=title%></h1><br><br>
                        <form action="QuestionsAction1.jsp">
                            <table align="left" style=" margin-bottom: -1000px; margin-left:400px; text-align:center; border-radius: 7px;line-height: 2;">
                        <%
                           //session.setAttribute("back", "try");
                           String qid=request.getParameter("id");
                      
                          
                           int i=0;
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlinelearning","root","root");
                           PreparedStatement query1=con.prepareStatement("SELECT * FROM java1  where title='"+title+"'  ");
                           
                           System.out.println(query1);
                           ResultSet rs=query1.executeQuery();
                           System.out.println(rs);
                        
                           while(rs.next())
                           {
                               i++;
                               String id=rs.getString("id");
                              
                               String question=rs.getString("questions");
                              
                               session.setAttribute("code", id);
                               %>
                               <tr style="color:  #18d26e;font-size: 20px;font-weight: bold;text-align: left"><td><%=i%>. <%=question%></td></tr>
                               <tr style="color: darkgreen;font-size: 20px;font-weight: bold;text-align: left">
                                    <td>
                                       <input type="hidden" value="<%=question%>" name="q<%=i%>" id="q<%=i%>">
                                       
                                        <input type="hidden" value="<%=title%>" name="title" id="title">
                                          <input type="hidden" value="<%=testn%>" name="testn" id="title">
                                          &emsp;&emsp;&emsp;<input type="textarea" id="" name="answer<%=i%>" value="" required style="width:600px;">
                                    </td>
                               </tr>
                               
                               <%
                           }
                           if(i==0)
                           {
                               %>
                               <tr style="color: darkgreen;font-size: 20px;font-weight: bold;"><td colspan="3" align="center">----No Exams is there----</td></tr>
                               <%
                           }
                           %>
                           <tr align="center"><td colspan="2"><input type="submit" value="Submit"></td></tr>
                            </table>
                        </form>
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

