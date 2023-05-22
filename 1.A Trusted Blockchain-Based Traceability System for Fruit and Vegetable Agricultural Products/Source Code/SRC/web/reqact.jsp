<%@page import="algo.CipherHelper"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

  <title>Agricultural Products</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />


  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body>
  <div class="hero_area ">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href="index.html">
              <span style=" color: #ffc107;">
            Agricultural Products
            </span>
          </a>
          <div class="" id="">
              <style>
                  .nac{
                      color: #ffc107; 
                      padding:5px;
                  }
              </style>
            <div class="User_option">
                <div class="nac">
                    <a href="uhome.jsp" style=" color: #ffc107;">Home</a>&ensp;&ensp;
             
                <a href="acc.jsp" style=" color: #ffc107;">Add Account</a>&ensp;&ensp;
                <a href="proreq.jsp" style=" color: #ffc107;"> Products request</a>&ensp;&ensp;
                <a href="products.jsp" style=" color: #ffc107;">Purchase Products</a>&ensp;&ensp;
          
                <a href="index.html" style=" color: #ffc107;">Logout</a>&ensp;&ensp;
            </div>

            
            <div id="myNav" class="overlay">
              <div class="overlay-content">
                
              </div>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

    <!-- slider section -->
    
  <style>
        table,tr,td,th{
            border:2px solid #003333;
            border-collapse:collapse;
            width:600px;
        margin-left: 260px;
        background-color:  #86cfda;
            
            
        }
        </style>
    <section class="slider_section">
        <br>
        <br>
        <br>
      <div class="container">
          <style>
             .gallery {
	display: flex;
	flex-wrap: wrap;
	// Compensate for excess margin on outer gallery flex items /
	margin: -1rem -1rem;
}
.gallery-item {
	// Minimum width of 24rem and grow to fit available space /
	flex: 1 0 24rem;
	// Margin value should be half of grid-gap value as margins on flex items don't collapse /
	margin: 1rem;
	box-shadow: 0.3rem 0.4rem 0.4rem rgba(0, 0, 0, 0.4);
	overflow: hidden;
        border: 2px solid #003333;
}
p{
    color:  aqua;
    font-size:12px;
}
h6{
    font-size:13px;
}
     </style> 
     <h1 style=" text-align:center; color:white;font-size:20px; margin-top:-200px;">View status and Purchase Products</h1>
       
     
     <table>
         <tr> <th>Owner Name</th>
                <th>PID</th>
                <th>P.Name</th>
                <th>Cost</th>
                <th>Description</th>
                <th>HashKey</th>
                <th>Status</th>
               
                </tr> 
     
     
     <%    
                 
                        String uuser=session.getAttribute("uuser").toString();
      String pid=request.getParameter("pid");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
                        PreparedStatement query=con.prepareStatement("select DISTINCT pid,pname,ouser,uuser,cost,des,status,hashkey from ureq where uuser='"+uuser+"'  ");
                        System.out.println(query);
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                      
                         String ouser=rs.getString("ouser");   
                        String pname=rs.getString("pname");
                         String cost=rs.getString("cost");
                 
                         String des=rs.getString("des"); 
                   
                           String hashkey=rs.getString("hashkey");
                             String status=rs.getString("status");  
                   %>
                                         
        <tr>
                
                        <td><%= ouser%></td>
                      <td><%=rs.getString("pid") %></td>
                    <td><%=pname%></td>
                    <td><%=cost%></td>
                     <td><%=des%></td>
                  
                     <td style=" color: crimson"><%=hashkey%>   </td> 
                    <td style=" color: darkviolet"><%=status%></td>
       
        
        
        <%}%></table> <br>
                        <br>
                      
                        <br>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="img-box">
            <img src="images/about-img.png" alt="" />
          </div>
        </div>
        <div class="col-md-9">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                About Us
              </h2>
            </div>
            <p>
              Minima cupiditate fuga animi unde nesciunt esse, voluptas vitae culpa ut impedit quae, totam eum in quis non velit! Aliquid libero voluptas quisquam magnam porro hic atque at numquam vel.
              Veritatis, magni deleniti optio quod quo nisi repellat quasi quia.
            </p>
            <p>
              Voluptates ipsam et dicta nisi, totam impedit sapiente debitis voluptas unde soluta iusto facere molestiae tempore! Temporibus, delectus.
              Quidem, recusandae quasi.
            </p>
            <div class="btn-box">
              <a href="" class="btn-1">
                Contact Us
              </a>
              <a href="" class="btn-2">
                Read More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

  





  <!-- info section -->

  <section class="info_section  layout_padding2">
    <div class="container">
      <div class="social_container">
        <div class="social_box">
          <a href="">
            <i class="fa fa-facebook" aria-hidden="true"></i>
          </a>
          <a href="">
            <i class="fa fa-twitter" aria-hidden="true"></i>
          </a>
          <a href="">
            <i class="fa fa-linkedin" aria-hidden="true"></i>
          </a>
          <a href="">
            <i class="fa fa-instagram" aria-hidden="true"></i>
          </a>
          <a href="">
            <i class="fa fa-youtube" aria-hidden="true"></i>
          </a>
        </div>
      </div>
      <div class="contact_items">
        <a href="">
          <div class="item ">
            <div class="img-box ">
              <i class="fa fa-map-marker" aria-hidden="true"></i>
            </div>
            <div class="detail-box">
              <p>
                Location
              </p>
            </div>
          </div>
        </a>
        <a href="">
          <div class="item ">
            <div class="img-box ">
              <i class="fa fa-phone" aria-hidden="true"></i>
            </div>
            <div class="detail-box">
              <p>
                Call +01 1234567890
              </p>
            </div>
          </div>
        </a>
        <a href="">
          <div class="item ">
            <div class="img-box ">
              <i class="fa fa-envelope" aria-hidden="true"></i>
            </div>
            <div class="detail-box">
              <p>
                demo@gmail.com
              </p>
            </div>
          </div>
        </a>
      </div>
    </div>
    <div class="info_container ">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 ">
            <h6>
              About
            </h6>
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority havThere are many variations of passages of Lorem Ipsum available, but the majority hav </p>
          </div>
          <div class="col-md-6 col-lg-3 ">
            <h6>
              Useful Link
            </h6>
            <div class="info_link-box">
              <ul>
                <li class="active">
                  <a href="index.html">
                    Home
                  </a>
                </li>
                <li>
                  <a href="about.html">
                    About
                  </a>
                </li>
                <li>
                  <a href="service.html">
                    Service
                  </a>
                </li>
                <li>
                  <a href="contact.html">
                    Contact
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ">
            <h6>
              Products
            </h6>
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority havThere are many variations of passages of Lorem Ipsum available, but the majority hav
            </p>
          </div>
          <div class="col-md-6 col-lg-3 ">
            <div class="info_form ">
              <h5>
                Newsletter
              </h5>
              <form action="#">
                <input type="email" placeholder="Enter your email">
                <button>
                  Subscribe
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->


  <!-- footer section -->
  <footer class="container-fluid footer_section ">
    <p>
      &copy; <span id="displayDate"></span> All Rights Reserved. Design by
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </footer>
  <!-- end  footer section -->

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <!-- End Google Map -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>

</body>

</html>