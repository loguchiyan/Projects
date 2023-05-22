<%-- 
    Document   : authowner
    Created on : 19 Sep, 2022, 12:10:39 PM
    Author     : ADMIN
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>An Efficient Search Method Using Features to Match Joint Keywords on Encrypted Cloud Data</title>
    </head>
    <body>
       <div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar" class="order-last" class="img" style="background-image: url(images/bg_5.jpg);">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	        </button>
        </div>
        <div class="">
		  		<h1><a href="index.html" class="logo"> Content-Based Image Retrieval<span></span></a></h1>
	        <ul class="list-unstyled components mb-5">
	          <li class="active">
	            <a href="index.html"><span class="fa fa-home mr-3"></span> Home</a>
	          </li>
	          <li>
	              <a href="Admin_Login.jsp"><span class="fa fa-user mr-3"></span> Data owner</a>
	          </li>
	          <li>
              <a href="User_Login.jsp"><span class="fa fa-sticky-note mr-3"></span> User</a>
	          </li>
	          <li>
              <a href="Cloud_Login.jsp"><span class="fa fa-cogs mr-3"></span> Cloud Server</a>
	          </li>
	          <li>
              <a href="#"><span class="fa fa-paper-plane mr-3"></span> Contacts</a>
	          </li>
	        </ul>

	        <div class="mb-5 px-4">
						
	          </form>
			

  <!-- ======= Hero Section ======= -->
  <section >

   

         <br>
         <br>
      
                    <style>
                        table,tr,th,td{
                            border: 1px solid black;
                            border-collapse:collapse;
                            padding:5px;
                        }
                        
                        </style>
                          <h2 style="  color:#3498db ; text-align: center; font-size: 25px; font-weight: bolder; margin-left:-180px; "> Authorize Owner!!</h2>
                          <br>
                          <table style=" margin-left: 400px; margin-bottom: 100px;">
                              <tr>
                            <th>ID</th>
                            <th>Username</th>
                            <th>Email</th>
                               <th>Action</th>
                           
                               </tr>
                      <%   
                         
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/imagecloud","root","root");
                        PreparedStatement query=con.prepareStatement("select * from oreg  ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                         %>
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("name")%></td>  
                             <td><%=rs.getString("mail_id")%></td> 
                             <td><%=rs.getString("action")%></td> 
                             <td ><a href="oauth.jsp?id=<%=rs.getString("id")%>" style="color:  #0dcaf0; "><%=rs.getString("action")%></a></td></tr>
                             
                        <%}%></table> </form>  
                    <br><br>  
                                 

      <br>     
<br><br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br></div>
      </div>
    </div>

    </div>
    </body>
</html>
