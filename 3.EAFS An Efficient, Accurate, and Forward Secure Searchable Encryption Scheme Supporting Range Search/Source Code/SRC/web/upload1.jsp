<%-- 
    Document   : upload1
    Created on : Aug 2, 2017, 11:53:31 AM
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
    String sto=session.getAttribute("sto").toString();
    String ste=session.getAttribute("ste").toString();
    String tf=session.getAttribute("tf").toString();
    CipherHelper cc = new CipherHelper();
    String ste1=cc.cipher("12345678", ste);
    String tf1=cc.cipher("12345678", tf);
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
                                <h2>Stemming for Data &emsp;&emsp;&emsp;&emsp; Term Frequency for Data</h2>
                                <textarea rows="10" cols="30" ><%=ste%></textarea>
                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<textarea rows="10" cols="30" ><%=tf%></textarea>
                                
                        </div>
                        
		</div>
	</div>
	<div class="body">
		<div class="home">
                    <h2 style="color:white;">Stemming with Encryption &emsp;&emsp;&emsp;&emsp; Term Frequency with Encryption</h2>
                                <textarea rows="10" cols="30" style="margin-left: 46px;"><%=ste1%></textarea>
                                <textarea rows="10" cols="30" style="margin-left: 236px;"><%=tf1%></textarea>
                        <br>
                        <center>
                            <h3 ><a href="ownerhome.jsp" style="color:yellow;">Back</a></h3>
                        </center>
		</div>
	</div>
	<div class="footer">
		<div>
			
		</div>
	</div>
</body>
</html>
