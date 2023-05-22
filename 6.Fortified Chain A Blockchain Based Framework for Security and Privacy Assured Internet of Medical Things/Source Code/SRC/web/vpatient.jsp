
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
                            <li style="padding:6px;"><a href="chome.jsp" class="active">Home</a></li>
                          
                        
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
              <%
              String diseas=request.getParameter("diseas");
          
              %>
              <br>
              
              
                <h5 style=" font-size:20px;  margin-top:-160px;color: #dc3545; font-weight: bolder;"><span style=" color:black;">Block:</span> <%=diseas%></h6>
       
                   <h1 style=" font-size:20px; text-align:center; margin-top:-200px;color:white;">View Patient Details based on <%=diseas%> Block</h1>
        
        <center>
             <br>
             <br>
             <table style="width:600px; height:auto; " >
             <tr> 
                 <th>Reporter Name</th>
                 <th>Patient Name</th>
                 <th>Email</th>
                 <th>Diseases</th>
                 <th>Block hash Value</th>
                 <th>Patient Report</th>
                 
             </tr>
           
                 <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
                        PreparedStatement query=con.prepareStatement("Select * from upload where diseas='"+diseas+"'");
                         System.out.println(query);
                         ResultSet rs=query.executeQuery();
                         while(rs.next()){
                             
                         
               
                  String pname=rs.getString("pname");
                  String patient=rs.getString("patient");
                  String email=rs.getString("email");
           String keyy=rs.getString("keyy");
                 String file=rs.getString("file");
                 String sno=rs.getString("sno");
                 %>
                   <tr>
                    <td><%=pname%></td>   
                     <td><%=patient%></td> 
                     <td><%=email%></td> 
                     <td><%=diseas%></td> 
                     <td><%=keyy%></td>
                     <td><a href="view.jsp?file=<%=file%>" style=" text-decoration: none; color: red;"><%=file%></a></td> 
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