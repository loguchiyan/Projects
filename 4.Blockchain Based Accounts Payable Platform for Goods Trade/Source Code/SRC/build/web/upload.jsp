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
                     <option>Mobile Products</option>
                     <option>Other Products</option>
            </select>
            </div>
              <div class="log">
            <label>Product Brand</label>&ensp;&ensp;
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