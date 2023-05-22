<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>EduWell - Education HTML5 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
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
                          <h2><em>Designer</em></h2>
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="mhome.jsp" class="active">Home</a></li>
                          <li><a href="vproduct.jsp">View Products</a></li>
                          <li><a href="log.jsp">Manufactures</a></li>
                
               
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
   <style>
                    table{
                        line-height: 25px;
                        width: 80%;
                    }
                    h2{
                        font-family: cursive;
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                    }
                    table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 5px;
                        font-size: 15px;
                    }
                    
                </style>
                           
                <table>
                      <br><br>   <br><br>
                      <br><h2><center>View All Products</center></h2>
                     <br><br>   
                    <tr>
                         <td style='color:navy; font-weight: bold;'>Owner Name</td>
                        <td style='color:navy; font-weight: bold;'>Product Id</td>
                        <td style='color:navy; font-weight: bold;'>Product Name</td>
                        <td style='color:navy; font-weight: bold;'>Product Image</td>
                        <td style='color:navy; font-weight: bold;'>Date & Time</td>
                        <td style='color:navy; font-weight: bold;'>Cost</td>                        
                        <td style='color:navy; font-weight: bold;'>Betting Days</td>
                          <td style='color:navy; font-weight: bold;'>Action</td>
                    </tr>
                    <%
                        Connection con=new DB().Connect();
                        PreparedStatement ps=con.prepareStatement("select * from upload");
                        ResultSet r=ps.executeQuery();
                        while(r.next()){
                    %>
                    <tr>
                         <td style='font-weight: bold;'><%=r.getString("oname")%></td>
                        <td style='font-weight: bold;'><%=r.getString("pid")%></td>
                        <td style='font-weight: bold;'><%=r.getString("pname")%></td>
                        <td> <img src="<%=r.getString("image") %>" alt="image" style="width:50px; height:50px;"></td>
                        <td style='font-weight: bold;'><%=r.getString("date")%></td>
                        <td style='font-weight: bold;'><%=r.getString("cost")%></td>
                         <td style='font-weight: bold;'><%=r.getString("bdate")%></td>
                                           
                         <td style='font-weight: bold;'><a href='buy.jsp? &&oname=<%=r.getString("oname")%> &&pid=<%=r.getString("pid")%> &&pname=<%=r.getString("pname")%> &&image=<%=r.getString("image")%>' style='color:Red;'>Buy</a></td>
                    </tr><%}%>
                </table>
               </center>
        </div>
    </section>
 
     
   
  <section class="main-banner" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center">
          <div class="header-text">
       
            
            
        
          </div>
        </div>
        <div class="col-lg-6">
          <div class="right-image">
            <img src="assets/images/alog.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>