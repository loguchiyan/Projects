    <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%><%@page import="java.sql.*"%><!DOCTYPE html>
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
<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight img" style="background-image: url(images/cld1.jpg);">
			 <nav id="colorlib-main-menu" style="text-align: center" role="navigation">
                            <ul style="margin-top: 20px; text-align: left; display: inline-block">					
                                <li class="colorlib"><span style="color: white" class="fa fa-home mr-3"></span><a href="Cloud_Home.jsp">Home</a></li>
					<li><span style="color: white" class="fa fa-eye mr-3"></span><a href="Viewowner.jsp">View all Owner</a></li>
                                        <li><span style="color: white" class="fa fa-eye mr-3"></span><a href="Viewuser.jsp">View all Users</a></li>
		                         <li><span style="color: white" class="fa fa-paper-plane mr-3"></span><a href="ownerreq.jsp">Owner Uploaded Request</a></li>
                                       	<li><span style="color: white" class="fa fa-database mr-3"></span><a href="Graph.jsp">Count of the User Request</a></li>
                                        
					<li><span style="color: white" class="fa fa-file mr-3"></span><a href="ViewFile.jsp">View all Files</a></li>
					<li><span style="color: white" class="fa fa-list mr-3"></span><a href="aadetail.jsp">Attribute Details</a></li>
					<li><span style="color: white" class="fa fa-bar-chart mr-3"></span><a href="Graph1.jsp">Graph</a></li>
					<li><span style="color: white" class="fa fa-sign-out mr-3"></span><a href="index.html">Logout</a></li>
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
		             <%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 String plan="";
 int a=0;
 Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/policy","root","root");              
            PreparedStatement ps = con.prepareStatement("select count(request) as count, image from request group by image ");
                   
                                ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
              plan = rs.getString("image");
               a = rs.getInt("count");
map = new HashMap<Object,Object>(); map.put("label", plan); map.put("y", a); list.add(map);}
 
String dataPoints = gsonObj.toJson(list);
%>
 
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	title: {
		text: "No.of.Request Count Attribute"
	},
	axisX: {
		title: "File Name"
	},
	axisY: {
		title: "Range ( point-wise )"
	},
	data: [{
		type: "line",
		yValueFormatString: "#,##0mn tonnes",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}


</script>
<div id="chartContainer" style="height: 570px;  margin-left: 220px;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
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