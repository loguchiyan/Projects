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
              table,tr,td{
                  border:2px solid white;
                  text-align: center;
                  margin-top: -100px;
                
              }
              th{
                  color: navy ;
              }
              select,option{
                  text-align: center;
              }
              </style>
                   
           
             
        <h1 style=" font-size:20px; text-align:center; margin-top:-150px;color:white;">View Patient Details by Block</h1>
         
          <br>
        <center>
            <form action="vpatient.jsp" method="post" >
        <table style="width:600px; height:auto; ">
          
         
          
          
           <tr><td>Diseases By Block</td><td> 
                   <select name="diseas"  class="form-control item" ><option>--Choose--</option>
                       
                       <%
                       
                     Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
                         PreparedStatement query1=con.prepareStatement("select * from upload group by diseas");
                        System.out.println(query1);
                       ResultSet rs1=query1.executeQuery();
                        
	            	while(rs1.next())
	            	{
                         
                        %>
                      
            <option><%=rs1.getString("diseas")%></option>
           <%}%>
            </select></td></tr>
         <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;background-color: #d63384; ">Submit</button></td></tr>
                    
          
      </table>
         </form>
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