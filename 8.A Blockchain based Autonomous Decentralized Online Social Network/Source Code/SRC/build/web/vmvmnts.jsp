
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
   <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>A Blockchain based Autonomous Decentralized Online Social Network</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>

</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>User<span>Connecting</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
         
                
    </header>
   
    <aside >
          <div class="vertical">
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
      
        <ul class="sidebar-menu" id="nav-accordion">
          
         <li class="sub-menu">
            <a  href="profile.jsp">
             Profile
              </a>
          </li>
          
            <li class="sub-menu">
            <a href="friendreq.jsp">
             view Friends and Send request
              </a>
              </li>
           <li class="sub-menu">
            <a href="addpst.jsp">
             Add Post
              </a>
              </li>
          <li class="sub-menu">
            <a href="vpost.jsp">
             View all  post and Recommended to Group
              </a>
              </li>
          <li class="sub-menu">
            <a href="vrecmd.jsp">
             View all Recommended post
              </a>
              </li>
              <li class="sub-menu">
            <a href="vmvmnts.jsp">
             View own Movements
              </a>
              </li>
          <li class="sub-menu">
            <a href="index.html">
             Logout
              </a>
              </li>
          
          
          
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content" style=" background-color: #2f323a;">
      <section class="wrapper">
          <div class="row " style="margin-top: 200px;">
              <h2 style="font-size: 30px; font-weight:  bolder; font-family: serif; margin-left: 150px; color: #4ECDC4;  margin-top: -150px; 
                ">Dynamic Connection Based Social Group Recommendation</h2>
         
               <style>
                                                       table,tr,td{
                                                            padding: 10px;
                                                            color: white;
                                                            font-family: monospace;
                                                            margin-bottom: 200px;
                                                            margin-top: -350px;
                                                            margin-left: 290px;
                                                            font-size:20px; 
                                                        }h3{
                                                 
                                                        }
                                                    </style>
                   <h3 class="h4" align="center" style=" color: white;  font-size: 23px; margin-bottom: 400px; font-family: monospace; margin-top: 50px; margin-left: -100px;"> Movements of User.. </h3>
                   <%	 String id=(String)session.getAttribute("id");
      String user=(String)session.getAttribute("name");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group","root","root");
       PreparedStatement ps=con.prepareStatement("Select * from ureg where id='"+id+"' and user='"+user+"'");
      System.out.println(ps);
      ResultSet rs=ps.executeQuery();
      if(rs.next()){
%>
	
                                                    
                           <form action="movements.jsp"> 
                            <table align="center">
                            <tr><td><strong>ID &emsp; </strong></td><td><input type="text" name="id" value="<%=id%>" style="border-radius: 10px; color: #2f323a; background-color: #4ECDC4;" required></td></tr>
                            <tr><td><strong>Username&emsp; </strong></td><td><input type="text" name="user" value="<%=user%>" style=" border-radius: 10px; color: #2f323a; background-color: #4ECDC4; " required></td></tr>
                            <tr><td><strong>Email &emsp; </strong></td><td><input type="email" name="email" value="<%=rs.getString("email")%>" style="border-radius: 10px; color: #2f323a; background-color: #4ECDC4;" required></td></tr>
                             <tr><td><strong>Mobile &emsp; </strong></td><td><input type="text" name="mobile" value="<%=rs.getString("mobile")%>" style=" border-radius: 10px; color: #2f323a; background-color: #4ECDC4; " required></td></tr>
                            <tr><td><strong>Movements Location&emsp; </strong></td><td><input type="text" name="location" value="<%=rs.getString("location")%>" style="border-radius: 10px; color: #2f323a; background-color: #4ECDC4;" required></td></tr>
                            <tr><td><strong>From&emsp; </strong></td><td><input type="text" name="frm" value="" style="border-radius: 10px; color: #2f323a; background-color: #4ECDC4;" required></td></tr>
                            <tr><td><strong>To&emsp; </strong></td><td><input type="text" name="too" value="" style="border-radius: 10px; color: #2f323a; background-color: #4ECDC4;" required></td></tr>
                            
                             <tr><td align="center" colspan="2"><button type="submit" style=" color: #2f323a; font-size: 15px; background-color:  #4ECDC4; font-family:monospace; font-weight: bolder;">Movements</button> </td></tr>
                                                         <%}%>  </table></form>
                
            </div>
    </section>
    <!--main content end-->
    <!--footer start-->
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
        

    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with DLK template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
         </section>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>

  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to Dashio!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
        // (string | optional) the image to display on the left
        image: 'img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  </script>
</body>

</html>

      
 