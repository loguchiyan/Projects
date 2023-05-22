
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
                       <li><a href="dhome.jsp" class="active">Home</a></li>
                          <li><a href="dpro.jsp"> Profile</a></li>
                          <li><a href="vreq.jsp"> Patient Request</a></li>
                         <li><a href="vres.jsp">Key Response </a></li>
                          <li><a href="grep.jsp">Give Report</a></li>
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
          <%
          String dname=session.getAttribute("dname").toString();
          %>
          <style>
              table,tr,td,th{
                  border:2px solid white;
                  text-align: center;
                  margin-top: -100px;
                  width:400px;
                
              }
              th{
                  color: navy;
              }
              </style>
         <%
                  String pname=request.getParameter("pname");
                  String file=request.getParameter("file");
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
                        PreparedStatement query=con.prepareStatement("Select * from request1 where pname='"+pname+"' and file='"+file+"' ");
                         System.out.println(query);
                         ResultSet rs=query.executeQuery();
                         System.out.println(rs);
                         while(rs.next()){
                             
                         
             
                  String patient=rs.getString("patient");
                  String status=rs.getString("status");
                 String pstatus=rs.getString("pstatus");
                 String keyy=rs.getString("keyy");
                 String estatus=rs.getString("estatus");
                 %>
         <center>
             <form action='inaction.jsp' method="post">
                    <table style=" margin-left:300px; margin-top: -100px; margin-left:-100px;">
               
                        <input type='hidden' name='pname' value='<%=pname%>'>
                     <br> <tr><td style='color:blue; font-size: 20px;'><strong >&ensp; &ensp;Patient Name: </strong></td><td><input type="text" name="patient"  value="<%=patient%>" ></td></tr>
                     <br> <tr><td style='color:blue; font-size: 20px;'><strong > &ensp; File Name: </strong></td><td><input type="text" name="file"  value="<%=file%>" ></td></tr>
                     <br> <tr><td style='color:blue; font-size: 20px;'><strong >&ensp; &ensp;Give Solution: </strong></td><td><input type="text" name="sol"  style=" width:300px; height: 100px;"></td></tr>
                   <br> <tr><td align='center' colspan="2"><input type="submit" Value='Submit' style="border-radius: 2px; width: 100px; height: 30px;  text-align: center;  ;background-color: lightblue; color:darkblue;"></td></tr>
           </form>
                
                   
      
          </table>     <%}%> 
     </center>
      
      
      
      
      
      
      
      
      </div>
       
      </div>
    </div>
  </section>
       
      </div>
 
      
  </section>
  <!-- ***** Main Banner Area End ***** -->

  
</body>

</html>