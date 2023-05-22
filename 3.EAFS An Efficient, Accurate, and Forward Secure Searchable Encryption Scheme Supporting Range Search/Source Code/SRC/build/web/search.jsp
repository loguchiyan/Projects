<%-- 
    Document   : search
    Created on : Aug 2, 2017, 3:35:54 PM
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
				<li>
					<span><a href="userhome.jsp">Home</a></span>
				</li>
				<li class="selected">
					<span><a href="search.jsp">Search</a></span>
				</li>
				<li>
					<span><a href="download.jsp">Download Request</a></span>
				</li>
				<li>
					<span><a href="logout.jsp">Logout</a></span>
				</li>
			</ul>
                        <center><h2>Search File Search With K</h2></center>
			<div>
                       <center>
                    <form action="search1.jsp">
                        <strong>Keyword &nbsp;&nbsp;</strong><input type="text" name="key" value="" /><br><br>
                        <strong>K Value &emsp;&nbsp;</strong><input type="text" name="k" value="" /><br><br>
                        <input type="submit" value="Search" />
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
