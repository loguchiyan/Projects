
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
                         
                          <li><a href="keyreq.jsp">Key Request</a></li>
                        
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
              <%
              
                  String hname=request.getParameter("hname");
                  String pname=session.getAttribute("pname").toString();
              String keyy=request.getParameter("keyy");
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
                  PreparedStatement query=con.prepareStatement("select * from dreg where hname='"+hname+"'");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                        String dname=rs.getString("dname");
                        String spec=rs.getString("spec");
                        %>          
           
               <h6 style=" font-size:20px;  margin-top:-120px;color: #dc3545; font-weight: bolder;">Under The Hash value:<%=keyy%></h6>
        <h1 style=" font-size:20px; text-align:center; margin-top:-150px;color:white;">View Doctor and Authorize</h1>
         
          <br>
        <center>
            <form action="Upload" method="post" enctype="multipart/form-data">
        <table style="width:600px; height:auto; " >
            <input type="hidden" name="keyy" value="<%=keyy%>">
            <input type="hidden" name="pname" value="<%=pname%>">
           <tr><td>Patient name</td><td><input type="text" class="form-control item" name="patient" value=""></td></tr>
           <tr><td>Date of Birth</td><td> <input type="text" class="form-control item"  name="dob" ></td></tr>
           <tr><td>Gender</td><td> 
                   <select name="gen"  class="form-control item" ><option >--Choose--</option>
            <option>Female</option>
            <option>Male</option>
            <option>Others</option>
            </select></td></tr>
           <tr><td>Diseases</td><td> <input type="text" class="form-control item"  name="diseas" ></td></tr>
          <tr><td>Age</td><td> <input type="text" class="form-control item"  name="age" ></td></tr>
          <tr><td>Blood Group</td><td> <input type="text" class="form-control item"  name="blood" ></td></tr>
          <tr><td>Email</td><td> <input type="text" class="form-control item"  name="email" ></td></tr>
          <tr><td>Address</td><td> <input type="text" class="form-control item"  name="addr" ></td></tr>
          <tr><td>Contact</td><td> <input type="text" class="form-control item"  name="con" ></td></tr>
          <tr><td>Doctor Name</td><td> 
                   <select name="dname"  class="form-control item" ><option>--Choose--</option>
                       <% PreparedStatement query1=con.prepareStatement("select * from dreg where hname='"+hname+"' group by dname");
                        System.out.println(query1);
                       ResultSet rs1=query1.executeQuery();
                        
	            	while(rs.next())
	            	{
                         
                        %>
                      
            <option><%=rs.getString("dname")%></option>
           <%}%>
            </select></td></tr>
        
         <tr><td>Patient File</td><td> <input type="file" class="form-control item"  name="file" ></td></tr>
        
         <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;background-color: #d63384; ">Submit</button></td></tr>
                    
          
         <%}%></table>
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