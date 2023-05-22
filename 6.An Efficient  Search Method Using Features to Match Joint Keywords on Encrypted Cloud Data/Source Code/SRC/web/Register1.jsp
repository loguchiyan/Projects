<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
		  		
	        <ul class="list-unstyled components mb-5">
	          <li class="active">
	            <a href="index.html"><span class="fa fa-home mr-3"></span> Home</a>
	          </li>
	          <li>
	              <a href="Admin_Login.jsp"><span class="fa fa-user mr-3"></span> Data owner</a>
	          </li>
	              <li>
	              <a href="Admin_Login.jsp"><span class="fa fa-user mr-3"></span> Data Owner</a>
	          </li>
	          <li>
              <a href="User_Login.jsp"><span class="fa fa-users mr-3"></span>Data  User</a>
	          </li>
	          <li>
              <a href="Cloud_Login.jsp"><span class="fa fa-cogs mr-3"></span> Cloud Server</a>
	          </li>
	          <li>
              <a href="#"><span class="fa fa-paper-plane mr-3"></span> Contacts</a>
	          </li>
             
	        </ul>

	        <div class="mb-5 px-4">
						
	            <div class="form-group d-flex">
	            	<div class="icon"><span class="icon-paper-plane"></span></div>
	              
	            </div>
	          </form>
					</div>

	        <div class="footer px-4">
	        	
	        </div>

	      </div>

    	</nav>
  <style>
      table{
          font-family: cambria;
          width: 50%;
          color: #e43c5c;
          margin-left: 25%;
          font-size: 20px;
      }
      tr,td{
          padding-bottom: 10px;
      }
     
  </style>
     <% 
         int i;
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost/imagecloud","root","root");
           PreparedStatement select=con.prepareStatement("select * from reg");
                            ResultSet r=select.executeQuery();
                            while(r.next())
                            {
                               
                                i=r.getInt("id");
                                if(i!=0){
                                    i=i++;
                                }
                                else{
                                    i=1;
                                }
                            
                            System.out.println(i);}
                            %>
              
        <!-- Page Content  -->
        <div class="img" style="background-color: whitesmoke;">
        <div id="content" class="p-4 p-md-5 pt-5" >
            <h2 class="mb-4" style="color:brown;"><b>An Efficient Search Method Using Features to Match Joint Keywords on Encrypted Cloud Data</b></h2>
           <br><br>
        <h2 style="margin-top: 20px; color:darkblue; margin-left: 250px;font-family: cambria;font-weight: bold; font-size: 30px;">Data User Registration Page</h2><br>
        <form action="Userreg_Login_Action" method='post' enctype="multipart/form-data">
        <table>
          <tr><td><strong>ID: </strong></td><td><input type="text" name="id" value="" style="border-radius: 2px;" required></td></tr>
          <tr><td><strong>Username: </strong></td><td><input type="text" name="user" required></td></tr>
          <tr><td><strong>Password: </strong></td><td><input type="password" name="password"  required></td></tr>
          <tr><td><strong>Mail ID: </strong></td><td><input type="email" name="email"  required></td></tr>
          <tr><td><strong>DOB: </strong></td><td><input type="text" name="dob"  style="border-radius: 2px;"  required></td></tr>
          <tr><td><strong>Profile: </strong></td><td><input type="file" name="file" style="border-radius: 2px;" required></td></tr>
          <tr><td><strong>Gender: </strong></td><td><input type="text" name="gen" style="border-radius: 2px;" required></td></tr>
          <tr><td><strong>Contact: </strong></td><td><input type="text" name="address" required></td></tr>
           <tr><td><strong>Address: </strong></td><td><input type="text" name="cont" required></td></tr>
         
          <tr><td align="center" colspan="2"><button type="submit">Register</button></td></tr>
         </table></form>
         <h1 style="font-family: cursive; font-size: 13px; color: red;margin-left: 400px; "><a href="User_Login.jsp" style="font-family: cursive; font-size: 28x;">Click here to back</a></h1>
    
  </div>
        </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>