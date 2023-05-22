<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>An Efficient Search Method Using Features to Match Joint Keywords on Encrypted Cloud Data</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
               
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar" class="order-last" class="img" style="background-image: url(images/bg_5.jpg);">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	        </button>
        </div>
        <div class="">
               <% String pic=session.getAttribute("pic").toString();
                  String name1=session.getAttribute("name").toString();%>
		
            <h2 style="font-family: cambria;">&nbsp;&nbsp;&nbsp;&nbsp;<img src='profile/<%=pic%>' style='width: 50px; height: 50px; border-radius: 15px;'>&nbsp;&nbsp;<%=name1%></h2>
		  		
	        <ul class="list-unstyled components mb-5">
	          <li class="active">
	            <a href="User_Home.jsp"><span class="fa fa-home mr-3"></span> Home</a>
	          </li>
	               <li>
	              <a href="Search.jsp"><span class="fa fa-search mr-3"></span>Search File & Make Request</a>
	          </li>
	          <li>
              <a href="Download.jsp"><span class="fa fa-download mr-3"></span> Download File</a>
	          </li>
	          <li>
              <a href="index.html"><span class="fa fa-sign-out mr-3"></span> Logout</a>
	          </li>
	        </ul>
            <div class="mb-5 px-4">
						
						<form action="#" class="subscribe-form">
	            <div class="form-group d-flex">
	            	<div class="icon"><span class="icon-paper-plane"></span></div>
	            
	            </div>
	          </form>
	    </div>

	    <div class="footer px-4">
	        	
	    </div>
        </div>
</nav>
 <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
        <!--<h2 class="mb-4"> An Efficient Search Method Using Features to Match Joint Keywords on Encrypted Cloud Data</h2>-->
                  
                  <style>
                    table{
                        line-height: 25px;
                        width: 80%;
                        margin-left: 100px;
                    }
                    h3{
                        font-family: cursive;
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                        margin-left: 299px;
                    }
                    table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 15px;
                        font-size: 15px;
                    }
                    
                </style>
                <h3>Search File & Send Request</h3><br><br>                
            <div class="header-text">
            <br>
            <br>
            <br>
            <br>
                   <h2 align="center" style=" color: blueviolet; font-family: monospace;font-weight: bold; font-size: 30px; margin-top:-180px;"></h2><br><br>
   <div class="container">
       <form action='Search1.jsp'>
           <table style="font-family:  monospace; font-size:20px;font-weight: bold;box-shadow: #117a8b; margin-bottom: 300px; color:#000; " align="center">
               <tr><td><storng>Search KeyWord &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </storng></td><td><input type="text"name="keyword" value="" style=" border-radius: 2px;"></td></tr>
           <tr><td align='center' colspan="2"><input type="submit" Value='Search' style="border-radius: 2px; width: 100px; height: 30px;padding: 5px; text-align: center;font-size:15px;background-color: lightblue; color: #000;"</td></tr>
                             
       </form>
                     
                </table> 

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>