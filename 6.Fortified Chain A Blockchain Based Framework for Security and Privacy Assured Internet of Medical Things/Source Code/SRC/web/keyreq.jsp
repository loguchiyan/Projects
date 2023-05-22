
<%@page import="java.sql.*"%>
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
                         <li><a href="phome.jsp" class="active">Home</a></li>
                         <li><a href="profile.jsp">Profile</a></li>
                          <li><a href="keyreq.jsp">Key Request</a></li>
                         <li><a href="viewrep.jsp">Report Request</a></li>
                          <li><a href="send.jsp">Send Key</a></li>
                     <li><a href="clinical.jsp">Clinical Report  </a></li>
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
   
          <section class="simple-cta">
    <div class="container">
      <div class="row">
          <style>
              table,tr,td,th{
                 padding:2px;
                  text-align: center;
                  margin-top: -100px;
                
              }
              th{
                  color: navy ;
              }
              </style>
              <%
             
              String pname=session.getAttribute("pname").toString();
              
              %>
        <h1 style=" font-size:20px; text-align:center; margin-top:-150px;color:white;">Sent Key Request</h1>
         
             
             <form action="reqinc.jsp">
                 <center>
        <table style="width:600px; height:auto;" >
            <input type="hidden" name="pname" value="<%=pname%>">
            
            <tr><td>Send Key request:</td><td style=" margin-left:-50px;"><input type="submit"  value="Send Key request" ></td></tr>
          </table>
            <br>
            <br>
            <br>
            <a href="kstatus.jsp" style=" text-decoration:none; color:black;font-weight: bolder; font-size:24px;">KEY REQUEST STATUS</a>
     </center>
      
      </form>
      
      
      
      
      
      
      </div>
       
      </div>
    </div>
  </section>
       
      </div>
 
      
  </section>
  <!-- ***** Main Banner Area End ***** -->

  
</body>

</html>