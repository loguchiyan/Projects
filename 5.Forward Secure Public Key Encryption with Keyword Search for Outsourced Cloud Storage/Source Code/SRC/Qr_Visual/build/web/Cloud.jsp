<%@page import="java.sql.ResultSet"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>QR_Code</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--
cleansed, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>

<body>

		<header>
			<div class="width">
				<h1><a href="#">Forward Secure Public Key Message Encryption in Cloud to using QR Code</a></h1>
			</div>
		</header>
		<nav>
			<div class="width">
					<ul>
        					<li class="start selected"><a href="index.jsp">Home</a></li>
                                              
        	    				
                                                <li class=""><a href="Cloud.jsp">Authorize all User</a></li>
                                                  <li class=""><a href="View.jsp">View Details</a></li>
         	   				
          	 				<li class="end"><a href="Logout.jsp">Logout</a></li>
				
        				</ul>
			</div>
		</nav>
    <br><br><br><br><br>
                        <div id="colorlib-main">
			<section class="colorlib-about" data-section="about">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-12">
							<div class="row row-bottom-padded-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="col-md-12">
									<div class="about-desc">
                                                                                 
                                                                            <h2 class="colorlib-heading" style="color:darkcyan;"><center>Authorize all User</center></h2><br>
                                                                            <br>
                                                                             <style>
                                                                            table{
                                                                            color:black;
                                                                            width: 80%;
                                                                            letter-spacing: 0.3px;
                                                                            margin-top: -30px;
                                                                            
                                                                            }
                                                                            table,td,th,tr{
                                                                                border-collapse: collapse;
                                                                                border: 1px solid black;
                                                                                text-align: center;
                                                                                padding: 5px;
                                                                            }
                                                                            th{
                                                                                color: lightseagreen;
                                                                                font-weight: bold;
                                                                            }
                                                                            td{
                                                                                color: black;
                                                                                font-weight: bold;
                                                                            }
                                                                         </style>
                                                                        <table>
                                                                            <tr>
                                                                                <th>User Id</th>
                                                                                <th>User Name</th>
                                                                                <th>Password</th>
                                                                                <th>Mail ID</th>
                                                                                <th>Mobile</th>
                                                                                <th>City</th>
                                                                                
                                                                                <th>Action</th>
                                                                            </tr>
                                                                            <%
                                                                                    Connection con=new DB().fun();
                                                                                    PreparedStatement p=con.prepareStatement("select * from reg where status='waiting' ");
                                                                                    ResultSet r=p.executeQuery();
                                                                                    while(r.next()){
                                                                            %>
                                                                            <tr>
                                                                                <td><%=r.getString("id")%></td>
                                                                                <td><%=r.getString("name")%></td>
                                                                                <td><%=r.getString("pass")%></td>
                                                                                <td><%=r.getString("email")%></td>
                                                                                <td><%=r.getString("mob")%></td>
                                                                                <td><%=r.getString("city")%></td>
                                                                            
                                                                                <td><a href="User_Action.jsp?ref=name&&id=<%=r.getString("id")%>&&name=<%=r.getString("name")%>" style="color:green;">Authorize</a></td>
                                                                            </tr>
                                                                            <%}%>
                                                                               
                                                                        </table>
                                                                    </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

	</section>
	
	<footer class="clear">
        <div class="footer-content width">
            
            
            <div class="clear"></div>
        </div>
        <div class="footer-bottom" style=" background-color: #004f9e; ">
            
         </div>
    </footer>
</body>
</html>
