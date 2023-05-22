<%-- 
    Document   : userhome
    Created on : Jul 31, 2017, 12:09:26 PM
    Author     : DLK 1
--%>
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
				<li class="selected">
					<span><a href="userhome.jsp">Home</a></span>
				</li>
				<li>
					<span><a href="search.jsp">Search</a></span>
				</li>
				<li>
					<span><a href="download.jsp">Download Request</a></span>
				</li>
				<li>
					<span><a href="logout.jsp">Logout</a></span>
				</li>
			</ul>
                        <center><h2>Data Reader Home Page</h2></center>
			<div>
                            <center>
                        <img src="images/reader.gif" style="margin-top: -18px;" > 
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
