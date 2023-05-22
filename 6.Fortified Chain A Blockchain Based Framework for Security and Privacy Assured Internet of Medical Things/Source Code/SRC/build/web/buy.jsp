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
  <style>
      .registration-form{
	padding: 50px 0;
}

.registration-form form{
    background-color: #fff;
    max-width: 600px;
    margin: auto;
    padding: 50px 70px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .form-icon{
	text-align: center;
    background-color: #5891ff;
    border-radius: 50%;
    font-size: 40px;
    color: white;
    width: 100px;
    height: 100px;
    margin: auto;
    margin-bottom: 50px;
    line-height: 100px;
}

.registration-form .item{
	border-radius: 20px;
    margin-bottom: 25px;
    padding: 10px 20px;
}

.registration-form .create-account{
    border-radius: 30px;
    padding: 10px 20px;
    font-size: 18px;
    font-weight: bold;
    background-color: #5791ff;
    border: none;
    color: white;
    margin-top: 20px;
}

.registration-form .social-media{
    max-width: 600px;
    background-color: #fff;
    margin: auto;
    padding: 35px 0;
    text-align: center;
    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;
    color: #9fadca;
    border-top: 1px solid #dee9ff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .social-icons{
    margin-top: 30px;
    margin-bottom: 16px;
}

.registration-form .social-icons a{
    font-size: 23px;
    margin: 0 3px;
    color: #5691ff;
    border: 1px solid;
    border-radius: 50%;
    width: 45px;
    display: inline-block;
    height: 45px;
    text-align: center;
    background-color: #fff;
    line-height: 45px;
}

.registration-form .social-icons a:hover{
    text-decoration: none;
    opacity: 0.6;
}

@media (max-width: 576px) {
    .registration-form form{
        padding: 50px 20px;
    }

    .registration-form .form-icon{
        width: 70px;
        height: 70px;
        font-size: 30px;
        line-height: 70px;
    }
}
  </style>
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
  <section class="main-banner" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center">
          <div class="header-text">
        <%
  String pid=request.getParameter("pid");
  String pname=request.getParameter("pname");
  %>
    <h2 style="color:darkslateblue;font-family:blink ;font-weight: bold; font-size: 30px;">Product Details: <%=pname%></h2><br>
    <form action="cart.jsp">
	            <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/designer","root","root");
                        PreparedStatement query=con.prepareStatement("select * from upload where pid='"+pid+"' ");
                        ResultSet rs=query.executeQuery();
	            	if(rs.next())
	            	{
                    %>
                    <table align="center">
                           
                            <tr align="center"><td>Product Id </td><td style="color:darkblue"><input type="text" class="form-control item" name="pid" value="<%=rs.getString("pid")%>" readonly=""></td><br></tr>
                            <tr align="center"><td>Owner Name </td><td style="color:darkblue"><input type="text" class="form-control item" name="oname" value="<%=rs.getString("oname")%>" readonly=""></td></tr>
                            <tr align="center"><td>Product Name </td><td style="color:darkblue"><input type="text" class="form-control item" name="pname" value="<%=rs.getString("pname")%>" readonly=""></td></tr>
                            <tr align="center"><td>Cost </td><td style="color:brown"><input type="text" class="form-control item"  name="cost" value="<%=rs.getString("cost")%>" readonly=""></td></tr>
                            <tr align="center"><td>Card No </td><td style="color:forestgreen"><input type="text" class="form-control item" name="card" value=""></td></tr>
                            <tr align="center"><td>IFSC </td><td style="color:lightseagreen"><input type="text"class="form-control item"  name="ifsc" value=""></td></tr>
                            <tr align="center"><td>CVV </td><td style="color:orange"><input type="text" class="form-control item" name="cvv" value=""></td></tr>
                            
                            <tr><td align="center" colspan="2">
                                    
                                <button type="submit" style="border-radius: 20px; height: 40px; width:80%; background-color:lavenderblush ; ">
                                   Make Payment
                                </button>
                            </td>
                        </tr>
                    
                        <%
                        }
                        %>
                        </table>	
                        <a href="vproduct.jsp">Click Back</a>
	        </table>
    </form>
    
     								
										
		</div>
		</div>                
            </em>
        
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