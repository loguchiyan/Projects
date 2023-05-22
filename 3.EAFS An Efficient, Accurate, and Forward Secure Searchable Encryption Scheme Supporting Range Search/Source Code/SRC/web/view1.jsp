<%-- 
    Document   : view1
    Created on : Aug 2, 2017, 1:38:16 PM
    Author     : DLK 1
--%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
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
        String fname="";
    String name=session.getAttribute("name").toString();
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees", "root", "root");
    PreparedStatement ps22=con.prepareStatement("select * from file where id='"+id+"' ");
    ResultSet rss = ps22.executeQuery();
    if(rss.next())
    {
    fname=rss.getString("fname");
    }
        String jspPath = session.getServletContext().getRealPath("/res");
            String txtFilePath = "C://files//"+fname;           
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;
            while((line = reader.readLine())!= null){
                 sb.append(line+"\n");
                }
            String book=sb.toString();
			

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
                        <h3><%=fname%></h3>
                        <form action="down.jsp">
                        <input type="hidden" name="fname" value="<%=fname%>">
                        <textarea rows="15" cols="40"><%=book%></textarea><br><br>
                        <input type="submit" value="Download">
                        </form>
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