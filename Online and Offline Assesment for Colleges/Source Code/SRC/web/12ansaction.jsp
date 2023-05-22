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
                                  
                                   
                                    <li><a href="add.jsp">Online Assessment</a></li>
                                    <li><a href="add1.jsp">Offline Assessment</a></li>
                                      <li><a href="off.jsp">Offline Answers</a></li>
                                    <li><a href="vmark.jsp">View Marks</a></li>
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
                            <h4 style=" font-size: 20px; margin-top: -200px; color:#18d26e;font-weight: bolder; margin-left:300px;">View 2 Mark Answers!!!</h4>
                           <br>
                           <br>
                           
                          <style>
      table{
        
          width: 70%;
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
   <%
  String user=request.getParameter("user").toString();
  String id=request.getParameter("id").toString();
   %>
  <form action="markaction12.jsp" method="post">
   <table align="center" border="1" style="width: 90% !important; margin-left: 180px;line-height: 1.7;background: aliceblue;border-radius: 12px;text-align: left;color: black;text-transform: capitalize;">
       <tr><td>Id</td><td><input type='text' name='id' value="<%=id%>">
       <tr><td>Student</td><td><input type='text' name='id' value="<%=user%>">
      <tr><td><strong>Search By  Student: </strong></td><td>
                            <select name="mark" style="border-radius: 10px;  height: 20px; width: 250px; height: 30px" required>
                                 <option>1</option>
                                 <option>2</option>
                                 <option>3</option>
                                 <option>4</option>
                                 <option>5</option>
                                 <option>6</option>
                                 <option>7</option>
                                 <option>8</option>
                                 <option>9</option>
                                 <option>10</option>
                                  <option>11</option>
                                 <option>12</option>
                                 <option>13</option>
                                 <option>14</option>
                                 <option>15</option>
                                 <option>16</option>
                                 <option>17</option>
                                 <option>18</option>
                                 <option>19</option>
                                 <option>20</option>
                                
                            </select>
                            </td></tr>
                        <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;">Submit</button></td></tr>
                    
       
       
       
       
                                       
   </table>         	
       
       
      
                       
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


