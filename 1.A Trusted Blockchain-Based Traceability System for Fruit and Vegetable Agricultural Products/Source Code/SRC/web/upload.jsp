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
                  <a href="ohome.jsp" style=" color: #ffc107;">Home</a>&ensp;&ensp;
             
                <a href="upload.jsp" style=" color: #ffc107;">Uploaded Product</a>&ensp;&ensp;
                <a href="graph.jsp" style=" color: #ffc107;">User Request</a>&ensp;&ensp;
                <a href="vdown.jsp" style=" color: #ffc107;">Purchased Product</a>&ensp;&ensp;
                
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
       
                 input,select,option{
                     width: 200px;
                     border-radius:12px;
                 
                     font-size:16px;
                     border:2px solid  black;
                     text-align: center;
                    font-family: sans-serif;
                 }
                 .log{
                   padding:1px;  
                   
                 }
                 .log1 button{
                     margin-left:180px;
                        border-radius:12px;
                 }
                 label{
                     margin-left:400px;
                 }
                 </style>
    <section class="slider_section">
        <br>
        <br>
        <br>
      <div class="container">
           <h1 style=" text-align:center; color:white;font-size:20px; margin-top:-200px;">Upload the Products</h1>
         <br>
         <%
                    
               
                    Random r = new Random(); 
                      String x = Integer.toString(r.nextInt(10000));
                      String a="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghiiaifia";                      
                   CipherHelper cc = new CipherHelper();
                    String tkey=cc.cipher("12345678",x);
                  
                   long code   =(long)((Math.random()*9*Math.pow(10,15))+Math.pow(10,15));
  
String unique_password="";
for (long i=code;i!=0;i/=100)
    {
        long digit=i%100;
        if (digit<=90)
        digit=digit+32; 
       char ch=(char) digit;
       unique_password=ch+unique_password;
    }
    System.out.println("unique password ="+unique_password);
    
                  
                  %>
        <form action="upload" method="post" enctype="multipart/form-data">
                <div class="log">
                    <label>Product ID</label>&ensp;&ensp;&ensp;&ensp;&ensp;
                  <input type="text"  name="pid"  value="PID<%=x%>"/>
            </div>
            
            <div class="log">
            <label>Product Type</label>&ensp;&ensp;
            <select name="pcat" >
                     <option>--Choose--</option>
                     <option>Vegetables</option>
                     <option>Fruits</option>
            </select>
            </div>
            <div class="log">
            <label>Product Name</label>&ensp;
            <input type="text"   name="pname" value=""/>
            </div>
            <div class="log">
            <label>Cost</label>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            <input type="text"  name="cost"/>
            </div>
            <div class="log">
            <label>Description</label> &ensp;&ensp;&ensp;&ensp; 
            <input type="text"   name="dob"/>
            </div>
            <div class="log">
            <label>Image</label> &ensp;&ensp;&ensp;&ensp; &ensp;&ensp;&ensp;&ensp; 
            <input type="file"  name="image"/>
            </div>
            <div class="log">
            <label>Location</label>  &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            <input type="text"   name="loc"/>
            </div>
          
                <br>
            <div class="log1">
              <button >Submit</button>
            </div>  
    </form>
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