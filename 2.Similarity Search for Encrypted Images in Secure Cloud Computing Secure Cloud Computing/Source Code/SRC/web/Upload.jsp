<!DOCTYPE html>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<html lang="en">
  <head>
    <title>Similarity Search for Encrypted Images in Secure Cloud Computing</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
 <% 
                  String name1=session.getAttribute("name").toString();%>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight img" style="background-image: url(images/cld1.jpg);">
			<h1 id="colorlib-logo" class="mb-4"><a href="index.html">  <h2 style="font-family: cambria; color: white; padding-left: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=name1%></h2>
	</a></h1>
			 <nav id="colorlib-main-menu" style="text-align: center" role="navigation">
                            <ul style="margin-top: 20px; text-align: left; display: inline-block">		
                             <li class="colorlib"><span style="color: white" class="fa fa-home mr-3"></span><a href="Owner_Home.jsp">Home</a></li>
			    <li><span style="color: white" class="fa fa-cloud-upload mr-3"></span><a href="uploadrequest.jsp">Upload File</a></li>
                            <li><span style="color: white" class="fa fa-tasks mr-3"></span><a href="Manage.jsp">Manage File</a></li>
                                                                                       
                            <li><span style="color: white" class="fa fa-paper-plane mr-3"></span><a href="userreq.jsp">User Request</a></li>                           

					<li> <span style="color: white" class="fa fa-sign-out mr-3"></span><a href="index.html">Logout</a></li>
				</ul>
			</nav>
        

			<div class="colorlib-footer">
				<div class="mb-4">
				
					
            </div>
          </form>
				</div>
				</div>
		</aside> <!-- END COLORLIB-ASIDE -->
		<div id="colorlib-main">
		<section class="ftco-section ftco-no-pt ftco-no-pb bg-light">
	    	<div class="container px-0">
	    		<div class="row no-gutters">
		        <div class="text p-4">
		              <h3 class="mb-2" style="color:brown;"><a href="single.html"></a>Similarity Search for Encrypted Images in Secure Cloud Computing</h3>
		        						 <center>                
                <style>
                    table{
                        line-height: 25px;
                        width: 50%;
                        margin-left: 20%;
                    }
                    h3{
                        font-weight: bold;
                        font-size: 28px;
                        color:darkblue;
                       
                    }
                    td,input{
                        margin-bottom: 10px;
                    }
                    h4{
                        font-size: 20px;
                        color:navy;
                    }
                    
                </style>
		
                <b> <h2 style="font-family: cambria; color: darkblue;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Upload file to <%=name1%></h2><b/>
		 <%
                    
                    String name=session.getAttribute("name").toString();
                    String id=session.getAttribute("id").toString();
                    System.out.println(name+"  "+id);
                    Random r = new Random(); 
                    String x = Integer.toString(r.nextInt(10000));
                    CipherHelper cc = new CipherHelper();
                    String tkey=cc.cipher("12345678",x);
                    DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
                    Calendar calobj = Calendar.getInstance();
                    String d=df.format(calobj.getTime());
                    System.out.println(d);
                %>
                <form action='Upload' method="post" enctype="multipart/form-data">
                <table>
                    <input type='hidden' name='id' value='<%=id%>'>
                    <input type='hidden' name='name' value='<%=name%>'>
                    <tr><td style='color:blue; font-size: 20px;'><strong>File key: </strong></td><td><input type="text" name="pkey" value='<%=x%>' style="border-radius: 2px;"></td></tr>
                    <tr><td style='color:blue; font-size: 20px;'><strong>Date: </strong></td><td><input type="text" name="date" value="<%=d%>" style="border-radius: 2px;"></td></tr>
                    <tr><td style='color:blue; font-size: 20px;'><strong>Trapdoor: </strong></td><td><input type="text" name="tkey" value="<%=tkey%>" style="border-radius: 2px;"></td></tr>
                    <tr><td style='color:blue; font-size: 20px;'><strong>Upload Image:</strong></td><td><input type="file" name="file" style="border-radius: 2px;"></td></tr>
                    <tr><td align='center' colspan="2"><input type="submit" Value='Upload' style="border-radius: 2px; width: 100px; height: 30px;padding: 5px; text-align: center; background-color: lightblue; color:darkblue;"</td></tr>
                </table></form><br>    
                        </div>
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