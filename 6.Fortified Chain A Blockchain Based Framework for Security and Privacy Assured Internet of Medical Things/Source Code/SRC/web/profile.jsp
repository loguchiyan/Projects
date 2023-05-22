
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
        <div class="col-lg-6 align-self-center">
            <br>
            <br>
            <style>
                table,tr,td{
                    padding:3px;
                    margin-left:110px;
                 
                    
                }
                table{
                    border:2px solid rgba(219,138,222,1);
                }
            </style>
            <%
            
            String pname=session.getAttribute("pname").toString();
            %>
          <div class="header-text">
              <h1 style=" font-weight: bolder; font-size:25px; margin-left:150px; "> Profile </div>
                
       <br>
                    
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
                        PreparedStatement ps=con.prepareStatement("select * from preg where pname='"+pname+"'");
                        ResultSet r=ps.executeQuery();
                        while(r.next()){
                    %>
                      <table>
                          <tr><td style=" color: purple;font-weight:bold;">Name:</td><td style=" color:black;font-weight:bold;"><%=r.getString("pname")%></td></tr>
                    
                    
                     
                     <tr><td style=" color: purple;font-weight:bold;">Email:</td><td style=" color:black;font-weight:bold;"><%=r.getString("email")%></td></tr>
                    
                     <tr><td style=" color: purple;font-weight:bold;">Contact:</td ><td style=" color:black;font-weight:bold;"><%=r.getString("contact")%></td></tr>
                    
                     <tr><td style=" color: purple;font-weight:bold;"> Location:</td><td style=" color:black;font-weight:bold;"><%=r.getString("location")%></td></tr>
                  
                     <%}%></table>
              <div class="col-lg-6">
          <div class="">
            
          </div>
             </div>
            
        </div>
        <div class="col-lg-6">
          <div class="right-image">
              <img src="assets/images/doc.avif" width="600px;" height="400px;"alt="" style=" border-radius:50%;">
          </div>
        </div>
      </div>
    </div>
      
  </section>
      </div>
 
      
  </section>
  <!-- ***** Main Banner Area End ***** -->

  
</body>

</html>