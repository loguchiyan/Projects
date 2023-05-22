<%-- 
    Document   : viewowners
    Created on : Aug 2, 2017, 5:02:36 PM
    Author     : DLK 1
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>AN EFFICIENT, ACCURATE, AND FORWARD SECURE SEARCHABLE ENCRYPTION SCHEME SUPPORTING RANGE SEARCH</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div class="header header-home">
		<div>
                    <center>
                    <h1 style="color:white;">AN EFFICIENT, ACCURATE, AND FORWARD SECURE SEARCHABLE ENCRYPTION SCHEME SUPPORTING RANGE SEARCH</h1>
		    </center>                    
                    <ul style="margin-left: -400px; width:2200px;">
					<li class="selected">
					<span><a href="serverhome.jsp">Home</a></span>
				</li>
                               
				<li>
					<span><a href="viewusers.jsp">Users Authorize </a></span>
				</li>
				<li>
					<span><a href="viewowners.jsp">Owners Authorize</a></span>
				</li>
                                <li>
					<span><a href="viewreq.jsp">UserRequest</a></span>
				</li>
                                 <li>
					<span><a href="Result.jsp">Graph</a></span>
				</li>                               
				<li>
					<span><a href="logout.jsp">Logout</a></span>
				</li>
			</ul>			
			<div>
                           
                         <center>
                              <h4>View Owners</h4>
                                                              <%
        try{        
    %>
  
     <table id="pro_display_table" border="0" cellspacing="1px"  style="border: 4px solid #FB9217; width:500px;height: auto;">
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
         <tr> 
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;ID</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Username</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Mobile</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Email</strong>&emsp;</b></td>
                <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;Action</strong>&emsp;</b></td>
                    </tr>
         <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
<% 
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees", "root", "root");
                        String Query22="select * from oreg ";
                        PreparedStatement ps22=con.prepareStatement(Query22);
                        ResultSet rs22=ps22.executeQuery();
                        while(rs22.next())
                        {                                         
                        %>
                                <tr> 
                                      <td  style="color:lightseagreen;font-weight: bold;">&emsp;&emsp;<%=rs22.getString("id")%></td>
                                    <td  style="color:lightseagreen;font-weight: bold;">&emsp;&emsp;<%=rs22.getString("name")%></td>
                                    <td  style="color:lightseagreen;;font-weight: bold;"><%=rs22.getString("mobile")%></td>
                                    <td  style="color:lightseagreen;font-weight: bold;"><%=rs22.getString("email")%>&emsp;</td>
                                     <td  style="color:lightseagreen;font-weight: bold;"><a href="oauth.jsp?id=<%=rs22.getString("id")%>"><%=rs22.getString("status")%></a>&emsp;</td>
                                <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
                                    <%}%>
              </table>

               <%//}
                                     
   }catch(Exception e){
   System.out.println(e);
   }
   %>  
                                                    
                        </center>
                         </div>
		</div>
	</div>
	<div class="body">
		<div class="home">
                    <br><br>
                    
		</div>
	</div>
	<div class="footer">
		<div>
			
		</div>
	</div>
</body>
</html>
