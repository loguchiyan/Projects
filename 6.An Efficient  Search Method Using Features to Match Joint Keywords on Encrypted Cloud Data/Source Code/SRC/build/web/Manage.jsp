<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>An Efficient Search Method Using Features to Match Joint Keywords on Encrypted Cloud Data</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar" class="order-last" class="img" style="background-image: url(images/bg_5.jpg);">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	        </button>
        </div>
        <div class=""> <% String pic=session.getAttribute("pic").toString();
                  String name1=session.getAttribute("name").toString();%>
		
            <h2 style="font-family: cambria;">&nbsp;&nbsp;&nbsp;&nbsp;<img src='profile/<%=pic%>' style='width: 50px; height: 50px; border-radius: 15px;'>&nbsp;&nbsp;<%=name1%></h2>
		<ul class="list-unstyled components mb-5">
	          <li class="active">
	            <a href="#"><span class="fa fa-home mr-3"></span> Data Owner Home</a>
	          </li>
	          <li>
	              <a href="Upload.jsp"><span class="fa fa-user mr-3"></span> Upload</a>
	          </li>
	          <li>
              <a href="Viewfile.jsp"><span class="fa fa-sticky-note mr-3"></span> View File</a>
	          </li>
	          <li>
              <a href="Viewrequest.jsp"><span class="fa fa-cogs mr-3"></span> View Request</a>
	          </li><li>
              <a href="Manage.jsp"><span class="fa fa-sticky-note mr-3"></span> Manage File</a>
	          </li>
	          <li>
              <a href="index.html"><span class="fa fa-paper-plane mr-3"></span> Logout</a>
	          </li>
	        </ul>

	        <div class="mb-5 px-4">
						
						<form action="#" class="subscribe-form">
	            <div class="form-group d-flex">
	            	<div class="icon"><span class="icon-paper-plane"></span></div>
	             
	            </div>
	          </form>
					</div>

	        <div class="footer px-4">
	        	
	        </div>

	      </div>

    	</nav>

        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
       <!-- <h2 class="mb-4" >An Efficient Search Method Using Features to Match Joint Keywords on Encrypted Cloud Data</h2> -->
  <style>
                  
                    table{
                        line-height: 25px;
                        width: 50%;
                        margin-left: 20%;
                    }
                    h3{
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                        margin-left: 50px;
                    }
                    td,input{
                        margin-bottom: 10px;
                    }
                    h4{
                        font-size: 20px;
                        color:navy;
                    }table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 5px;
                        font-size: 15px;
                    }
                    
                    
                </style>
		
                <h3><center>Manage Files</center></h3><br><br>                
                <table>
                    <tr>
                        <td style='color:navy; font-weight: bold;'>Id</td>
                        <td style='color:navy; font-weight: bold;'>Name</td>
                        <td style='color:navy; font-weight: bold;'>File key</td>
                        <td style='color:navy; font-weight: bold;'>Trapdoor</td>
                        <td style='color:navy; font-weight: bold;'>File Name</td>
                        <td style='color:navy; font-weight: bold;'>Date & Time</td>
                        <td style='color:navy; font-weight: bold;'>Status</td>
                    </tr>
                    
                        
                        <% 
                        String id=session.getAttribute("id").toString();                            
                        String name=session.getAttribute("name").toString();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/imagecloud","root","root");
                        PreparedStatement query=con.prepareStatement("select * from upload where reg='"+id+"' and name='"+name+"'");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next())
                        {
                            String image=rs.getString("image");
                        %>
                        <tr>
                        <td style='font-weight: bold;'><%=rs.getString("reg")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("name")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("fkey")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("trapdoor")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("image")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("dates")%></td>
                         <td style='font-weight: bold; color: red;'><a href='Delete_File.jsp?name=<%=name%>&&fkey=<%=rs.getString("fkey")%>&&reg=<%=rs.getString("reg")%>' style='color:Red;'>Delete</a></td>
                     </tr><%}%>
                </table> </div>
                        </div>
                </div>
	    	</div>
	    
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>