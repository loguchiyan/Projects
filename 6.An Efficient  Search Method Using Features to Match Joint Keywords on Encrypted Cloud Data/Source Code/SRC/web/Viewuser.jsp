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
        <div class=""> 
		
            <h2 style="font-family: cambria;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cloud Server</h2>
		
	        <ul class="list-unstyled components mb-5">
	          <li class="active">
	            <a href="Cloud_Home.jsp"><span class="fa fa-home mr-3"></span>Home</a>
	          </li>
	          <li>
	              <a href="Viewowner.jsp"><span class="fa fa-user mr-3"></span>View all Data owner</a>
	          </li>
	          <li>
              <a href="Viewuser.jsp"><span class="fa fa-sticky-note mr-3"></span> View all Data User</a>
	          </li>
	          <li>
              <a href="Viewresponse.jsp"><span class="fa fa-cogs mr-3"></span> View Response & send Key </a>
	          </li><li>
              <a href="Graph.jsp"><span class="fa fa-sticky-note mr-3"></span>Graph</a>
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
       
         <style>
                    table{
                        line-height: 25px;
                        width: 80%;
                        margin-left: 100px;
                    }
                    h3{
                        font-family: cursive;
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                        margin-left: 299px;
                    }
                    table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 5px;
                        font-size: 15px;
                    }
                    
                </style>
                <h3>View All User</h3><br><br>                
                <table>
                    <tr>
                        <td style='color:navy; font-weight: bold;'>Id</td>
                        <td style='color:navy; font-weight: bold;'>Name</td>
                        <td style='color:navy; font-weight: bold;'>Mail</td>
                        <td style='color:navy; font-weight: bold;'>DOB</td>
                        <td style='color:navy; font-weight: bold;'>Gender</td>
                        <td style='color:navy; font-weight: bold;'>Contact </td>
                        <td style='color:navy; font-weight: bold;'>Profile Picture</td>
                        <td style='color:navy; font-weight: bold;'>Address</td>

                    </tr>
                    
                        
                        <% 
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/imagecloud","root","root");
                        PreparedStatement query=con.prepareStatement("select * from reg ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next())
                        {
                        %>
                        <tr>
                        <td style='font-weight: bold;'><%=rs.getString("id")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("name")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("mail_id")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("dob")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("gender")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("cont")%></td>
                        <td style='font-weight: bold;'><img src='profile/<%=rs.getString("profile")%>' style='width: 70px; height: 70px;'></td>
                        <td style='font-weight: bold;'><%=rs.getString("address")%></td></tr><%}%>
                </table></div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>