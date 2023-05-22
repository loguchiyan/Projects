<%-- 
    Document   : upload
    Created on : Jul 31, 2017, 1:05:44 PM
    Author     : DLK 1
--%>
<%@page import="algorithm.CipherHelper"%>
<%@page import="java.util.Random"%>
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
        Random r = new Random(); 
       String xyz = Integer.toString(r.nextInt(100000000));   
       CipherHelper c=new CipherHelper();
       String ekey=c.cipher("12345678", xyz);
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
				<li class="selected">
					<span><a href="upload.jsp">Upload</a></span>
				</li>
				<li>
					<span><a href="view.jsp">View Files</a></span>
				</li>
				<li>
					<span><a href="logout.jsp">Logout</a></span>
				</li>
			</ul>			
			<div>
                            <center>
                                <h1 style="color:yellow;">Upload File</h1><br>
                                        <form action="Upload" method="POST" enctype="multipart/form-data" >
                                            <input type="hidden" name="name" value="<%=name%>" />                                          
                                            <strong>Private Key:&nbsp;&nbsp;</strong><input type="text" name="pkey" value="<%=xyz%>" /><br><br>
                                            <strong>Trapdoor Key:&nbsp;&nbsp;</strong><input type="text" name="tkey" value="<%=ekey%>" /><br><br>
                                            <strong>&emsp;&emsp;&emsp;Upload Your File:</strong>
                                            <input type="file" name="file"><br><br>          
                                            <input type="submit" name="Submit" value="Upload" style="background-color: #ffffff; font-weight: bold;"/>
                                        </form>
                            </center>
                        </div>
		</div>
	</div>
	<div class="body">
		<div class="home">
                    <br><br>
                    <center>
			 <img src="images/h-cloud.gif" style="width: 400px;" >					
		    </center>
		</div>
	</div>
	<div class="footer">
		<div>
			
		</div>
	</div>
</body>
</html>
