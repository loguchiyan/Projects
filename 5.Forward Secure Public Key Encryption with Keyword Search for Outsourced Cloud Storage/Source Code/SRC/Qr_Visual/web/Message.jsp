<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>QR_Code</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--
cleansed, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>

<body>

		<header>
			<div class="width">
				<h1><a href="#">Forward Secure Public Key Message Encryption in Cloud to using QR Code</a></h1>
			</div>
		</header>
		<nav>
			<div class="width">
					<ul>
        					<li><a href="Userhome.jsp">Home</a></li>
        	    				<li class="start selected"><a href="Message.jsp">Message</a></li>
         	   				<li class=""><a href="Receive.jsp">Receive</a></li>
          	 				<li class="end"><a href="Logout.jsp">Logout</a></li>
				
        				</ul>
			</div>
		</nav>
		

		<section id="body" class="width clear">
                    <center>
                        <br><br>
                        <%
                        String name=(String)session.getAttribute("name");
                        %>
			
           
                        <h1>Enter the Text you want to Send</h1><br>
           
        <form action="Message" >
            Your Message:<input type="text" name="text" required="required" style="width: 425px;height: 50px;"><br><br>
            
            <input type="submit" value="Enter">
        </form>
                       
                       
                    </center>         
                    <br><br><br><br><br><br><br><br><br><br><br><br>

                </section>
	
	<footer class="clear" style=" background-color: #004f9e; ">
        <div class="footer-content width">
            
         
    </footer>
</body>
</html>
