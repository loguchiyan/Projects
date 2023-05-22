<%-- 
    Document   : download1
    Created on : Aug 2, 2017, 5:31:48 PM
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
    String id=request.getParameter("id");
    String fkey="",fname="";
    Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees", "root", "root");
                        String Query22="select * from filereq where id='"+id+"' ";
                        PreparedStatement ps22=con.prepareStatement(Query22);
                        ResultSet rs22=ps22.executeQuery();
                        if(rs22.next())
                        {                   
                        fkey=rs22.getString("fkey");
                        fname=rs22.getString("fname");
                        }
    %>
	<div class="header header-home">
		<div>
                    <center>
                    <h1 style="color:white;">AN EFFICIENT, ACCURATE, AND FORWARD SECURE SEARCHABLE ENCRYPTION SCHEME SUPPORTING RANGE SEARCH</h1>
		    </center>                    
                    <ul style="margin-left: -390px;">
				<li>
					<span><a href="userhome.jsp">Home</a></span>
				</li>
				<li>
					<span><a href="search.jsp">Search</a></span>
				</li>
				<li class="selected">
					<span><a href="download.jsp">Download Request</a></span>
				</li>
				<li>
					<span><a href="logout.jsp">Logout</a></span>
				</li>
			</ul>			
			<div>
                        <center>
                        <form action="keycheck.jsp" method="post">
                        <strong>Your File Key &nbsp;&nbsp;</strong>
                        <input type="text" name="key" value="" style="width: 250px;"/><br><br>
                                <input type="text" hidden="" name="k" value="<%=fkey%>" />
                                <input type="text" hidden="" name="fname" value="<%=fname%>" />
                                <input type="text" hidden="" name="name" value="<%=name%>" />
                        <input type="submit" value="Download" />
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
