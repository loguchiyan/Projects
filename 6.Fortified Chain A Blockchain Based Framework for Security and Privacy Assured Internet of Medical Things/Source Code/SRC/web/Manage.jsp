<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>DESIGNER BIDDING WEBSITE</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--

TemplateMo 573 EduWell

https://templatemo.com/tm-573-eduwell

-->
  </head>

<body>
 <%
       
        String pid=(String)session.getAttribute("pid");
         String oname=(String)session.getAttribute("oname");
    %>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="index.html" class="logo">
                          <h2><em>Designer</em></h2>
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="dhome.jsp" class="active">Home</a></li>
                          <li><a href="dpage.jsp">Add Design</a></li>
                          <li><a href="Manage.jsp">View & Manage Products</a></li>
                          <li><a href="mrequest.jsp">Manufacture Request</a></li>
                           <li><a href="index.html">Logout</a></li>
                          
                
               
                      </ul>        
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <!-- ***** Main Banner Area Start ***** -->
     <style>
                    table{
                        line-height: 25px;
                        width: 80%;
                    }
                    h2{
                        font-family: cursive;
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                    }
                    table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 5px;
                        font-size: 15px;
                    }
                    
                </style>
                           
                <table>
                      <br><br>   <br><br>
                      <br><h2><center>Manage All Products</center></h2>
                     <br><br>   
                    <tr>
                         <td style='color:navy; font-weight: bold;'>Owner Name</td>
                        <td style='color:navy; font-weight: bold;'>Product Id</td>
                        <td style='color:navy; font-weight: bold;'>Product Name</td>
                        <td style='color:navy; font-weight: bold;'>Product Image</td>
                        <td style='color:navy; font-weight: bold;'>Date & Time</td>
                        <td style='color:navy; font-weight: bold;'>Cost</td>                        
                        <td style='color:navy; font-weight: bold;'>Betting Days</td>
                          <td style='color:navy; font-weight: bold;'>Action</td>
                    </tr>
                    <%
                        Connection con=new DB().Connect();
                        PreparedStatement ps=con.prepareStatement("select * from upload");
                        ResultSet r=ps.executeQuery();
                        while(r.next()){
                    %>
                    <tr>
                         <td style='font-weight: bold;'><%=r.getString("oname")%></td>
                        <td style='font-weight: bold;'><%=r.getString("pid")%></td>
                        <td style='font-weight: bold;'><%=r.getString("pname")%></td>
                      
                      <td> <img src="<%=r.getString("image") %>" alt="image" style="width:50px; height:50px;"></td>
                        <td style='font-weight: bold;'><%=r.getString("date")%></td>
                        <td style='font-weight: bold;'><%=r.getString("cost")%></td>
                         <td style='font-weight: bold;'><%=r.getString("bdate")%></td>
                                           
                         <td style='font-weight: bold;'><a href='DeleteFile.jsp? &&oname=<%=r.getString("oname")%> &&pid=<%=r.getString("pid")%> &&pname=<%=r.getString("pname")%> &&image=<%=r.getString("image")%>' style='color:Red;'>Delete</a></td>
                    </tr><%}%>
                </table>
               </center>
        </div>
    </section>
 
     
   

  <section class="testimonials" id="testimonials">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
          
          
          </div>
        </div>
        <div class="col-lg-12">
          <div class="owl-testimonials owl-carousel" style="position: relative; z-index: 5;">
            <div class="item">
             
        </div>
      </div>
    </div>
  </section>

  <section class="contact-us" id="contact-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div id="map">
          
            <!-- You just need to go to Google Maps for your own map point, and copy the embed code from Share -> Embed a map section -->
          
              <div class="col-lg-4 offset-lg-1">
                <div class="contact-info">
                  <div class="icon">
                    
                  </div>
                 
                </div>
              </div>
              <div class="col-lg-4">
                <div class="contact-info">
                  <div class="icon">
                  
                
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <form id="contact" action="" method="post">
            <div class="row">
              <div class="col-lg-12">
                <div class="section-heading">
                
        </div>
        <div class="col-lg-12">
          <ul class="social-icons">
        
        </div>
        <div class="col-lg-12">
          <p class="copyright"> 
          
          <br>Design: <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a></p>
        </div>
      </div>
    </div>
  </section>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>

</html>