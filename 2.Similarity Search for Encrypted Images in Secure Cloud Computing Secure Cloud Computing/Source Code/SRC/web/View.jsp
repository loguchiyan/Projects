<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Similarity Search for Encrypted Images in Secure Cloud Computing</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>

               <% String pic=session.getAttribute("pic").toString();
                  String name1=session.getAttribute("name").toString();%>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight img" style="background-image: url(images/cld1.jpg);">
			<h1 id="colorlib-logo" class="mb-4"><a href="index.html">  <h2 style="font-family: cambria;">&nbsp;&nbsp;&nbsp;&nbsp;<img src='profile/<%=pic%>' style='width: 50px; height: 50px; border-radius: 15px;'>&nbsp;&nbsp;<%=name1%></h2>
	</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
                         <ul style="">
					
                                <li class="colorlib-active"><a href="User_Home.jsp">Home</a></li>
					<li><a href="Search.jsp">Search File</a></li>
					<li><a href="Downloadstatus.jsp">Download Request</a></li>
					<li><a href="index.html">Logout</a></li>
				</ul>
			</nav>


			<div class="colorlib-footer">
	
				</div>
				</div>
		</aside> <!-- END COLORLIB-ASIDE -->
		<div id="colorlib-main">
		<section class="ftco-section ftco-no-pt ftco-no-pb bg-light">
	    	<div class="container px-0">
	    		<div class="row no-gutters">
		                <div class="text p-4">
                                    <h3 class="mb-2"><a href="single.html"></a>Similarity Search for Encrypted Images in Secure Cloud Computing</h3><br>
		                 <br><center><h2 style="font-family: cursive;">Search File Search With K</h2></center><br>
			<div>
                       <style>
                    table{
                        line-height: 25px;
                        width: 50%;
                        margin-left: 20%;
                    }
                    h3{
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                        margin-left: 50px;
                    }
                    td,input{
                        margin-bottom: 10px;
                    }
                    h4{
                        font-size: 20px;
                        color:navy;
                    }table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 5px;
                        font-size: 15px;
                    }
                    
                    
                </style>
                
            <%                         
            String oname=request.getParameter("oname");
            String fname=request.getParameter("reg");
            String name=request.getParameter("name");
            String id=request.getParameter("id");
            String image=request.getParameter("image");
            String trap=request.getParameter("trap");
                         String jspPath = session.getServletContext().getRealPath("/res");
            String txtFilePath = "C:\\files\\enc\\"+image;           
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;
            while((line = reader.readLine())!= null){
                 sb.append(line+"\n");
                }
            String book=sb.toString();
			

                        %>
                       <center>
                        <h3><%=image%></h3>
                        <form action="Search.jsp">
                        <input type="hidden" name="fname" value="<%=image%>">
                        <textarea rows="15" cols="40" style="width:400px;height: 250px;"><%=book%></textarea><br><br>
                        <input type="submit" value="Click to Back">
                        </form>
                        </center> </div>
                        </div>
                </div>
	    	</div>
	    </section>
		</div><!-- END COLORLIB-MAIN -->
	</div><!-- END COLORLIB-PAGE -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>