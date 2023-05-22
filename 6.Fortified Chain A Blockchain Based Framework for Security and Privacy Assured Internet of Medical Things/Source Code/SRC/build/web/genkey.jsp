
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
                           <li><a href="chome.jsp" class="active">Home</a></li>
                      <li style="padding:6px;"><a href="chome.jsp" class="active">Home</a></li>
                          <li  style="padding:6px;"><a href="dauth.jsp">Authorize Doctor </a></li>
                         <li  style="padding:6px;"><a href="pauth.jsp">Authorize Patient</a></li>
                          <li  style="padding:6px;"><a href="genkey.jsp">Generate Key</a></li>
                           <li  style="padding:6px;"><a href="vpatient1.jsp">Trace Patient</a></li>
                             <li  style="padding:6px;"><a href="dreq.jsp">Key Transaction </a></li>
                           <li  style="padding:6px;"><a href="graph.jsp">Graph</a></li>
                          <li  style="padding:6px;"><a href="index.html">Logout</a></li>
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
                  border:2px solid white;
                  text-align: center;
                  margin-top: -100px;
                
              }
              th{
                  color: navy ;
              }
              </style>
        <h1 style=" font-size:20px; text-align:center; margin-top:-150px;color:white;">View Doctor and Authorize</h1>
         <center>
        <table style="width:600px; height:auto; " >
             <tr> 
                 <th>User Name</th>
                 <th>Generate Key</th>
                
                 <th>Status</th>
             </tr>
           
                 <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
                        PreparedStatement query=con.prepareStatement("Select * from request");
                         System.out.println(query);
                         ResultSet rs=query.executeQuery();
                         while(rs.next()){
                             
                         
               
                  String pname=rs.getString("pname");
                 String sno=rs.getString("sno"); 
                 String status=rs.getString("status");
                 String keyy=rs.getString("keyy");
                 
                 %>
                
                   <tr>
                    <td> <%=pname%></td>
                    <td> <a href="key.jsp?sno=<%=sno%>"><%=keyy%></a></td>
                     <td><a href="key1.jsp?sno=<%=sno%>" style=" text-decoration: none; color: red;"><%=status%></a></td> 
           </tr>
           <%}%> 
          </table>
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