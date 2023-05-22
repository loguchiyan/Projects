<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Health Care Supply Chain</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--

TemplateMo 573 EduWell

https://templatemo.com/tm-573-eduwell

-->
  </head>

<body>


  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="index.html" class="logo">
                         
                          <h2 style=" margin-left:-50px;"><em >Fortified Chain</em></h2>
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                           <li><a href="chome.jsp" class="active">Home</a></li>
                         
                          <li><a href="dauth.jsp">Authorize Doctor </a></li>
                         <li><a href="pauth.jsp">Authorize Patient</a></li>
                          <li><a href="genkey.jsp">Generate Key</a></li>
                           <li><a href="vpatient.jsp">Patient details</a></li>
                          
                          <li><a href="index.html">Logout</a></li>
               
                      </ul>        
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <!-- ***** Main Banner Area Start ***** -->
  <section class="main-banner" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center">
            <br>
            <br>
          
           
          <header class="mb-4"><h1 class="tm-text-shadow" style=" margin-left: 84px;"align="center">User Report  </h1></header><br>
                 
                  <style>
                    table{
                        line-height: 25px;
                        width: 80%;
                        margin-left: 100px;
                    }
                    h3{
                        font-family: cursive;
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                        margin-left: 299px;
                    }
                    table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 5px;
                        font-size: 15px;
                    }
                    
                </style>
            <%                         
           String pname=request.getParameter("pname");
            String file=request.getParameter("file");
            String keyy=request.getParameter("keyy");
            if(keyy.equals(keyy)){
                         String jspPath = session.getServletContext().getRealPath("/res");
            String txtFilePath = "C:\\files\\"+file;           
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;
            while((line = reader.readLine())!= null){
                 sb.append(line+"\n");
                }
            String book=sb.toString();
			
%>
            
                       <center>
                       
                        <form action="repinc.jsp">
                            <input type="hidden" name="pname" value="<%=pname%>">
                        <input type="hidden" name="file" value="<%=file%>">
                        <textarea rows="15" cols="40" style="width:400px;height: 250px; margin-left: 80px;"><%=book%></textarea><br><br>
                        <input type="submit" value="Give Solution">
                        </form><%}%>
                        </center>
                </table> 
                   		
                              <div class="col-lg-6">
          <div class="">
            <img src="assets/images/banner-left-dec.png" alt="">
          </div>
             </div>
            
        </div>
        <div class="col-lg-6">
          <div class="right-image">
              <img src="assets/images/chomee.avif" width="200px;" height="400px;"alt="">
          </div>
        </div>
      </div>
    </div>
      
  </section>
  <!-- ***** Main Banner Area End ***** -->

  
</body>

</html>
