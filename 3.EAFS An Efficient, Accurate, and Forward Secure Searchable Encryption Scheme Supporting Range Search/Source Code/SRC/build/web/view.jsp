<%-- 
    Document   : view
    Created on : Jul 31, 2017, 1:05:52 PM
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
    <%
    String name=session.getAttribute("name").toString();
    %>
	<div class="header header-home">
		<div>
                    <center>
                    <h1 style="color:white;">AN EFFICIENT, ACCURATE, AND FORWARD SECURE SEARCHABLE ENCRYPTION SCHEME SUPPORTING RANGE SEARCH</h1>
		    </center>                    
                    <ul style="margin-left: -390px;">
				<li>
					<span><a href="ownerhome.jsp">Home</a></span>
				</li>
				<li>
					<span><a href="upload.jsp">Upload</a></span>
				</li>
				<li class="selected">
					<span><a href="view.jsp">View Files</a></span>
				</li>
				<li>
					<span><a href="logout.jsp">Logout</a></span>
				</li>
			</ul>
                    <div>
        <center>
                     <%
        try{        
    %>
  
     <table id="pro_display_table" border="0" cellspacing="1px"  style="border: 4px solid #FB9217; width:550px;height: auto;">
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
         <tr>  
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&nbsp;&nbsp;File Id</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;File Name</strong></b></td>
             <td  style="color:#0D72BD;font-weight: bold;font-size: 17px;"><b><strong>&emsp;View</strong>&emsp;</b></td>
                                   
                                </tr>
         <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
<% 
            String file=request.getParameter("file");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees", "root", "root");
                        String Query22="select * from file where name='"+name+"' ";
                        PreparedStatement ps22=con.prepareStatement(Query22);
                        ResultSet rs22=ps22.executeQuery();
                        while(rs22.next())
                        {           
                        %>
                                <tr>  
                                    <td  style="color:#080606;font-weight: bold;">&emsp;&emsp;<%=rs22.getString("id")%></td>
                                    <td  style="color:#080606;font-weight: bold;">&emsp;&emsp;<%=rs22.getString("fname")%></td>
                                    <td><a href="view1.jsp?id=<%=rs22.getString("id")%>">Click Here</a></td>
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
                    <center>
			 					
		    </center>
		</div>
	</div>
	<div class="footer">
		<div>
			
		</div>
	</div>
</body>
</html>
