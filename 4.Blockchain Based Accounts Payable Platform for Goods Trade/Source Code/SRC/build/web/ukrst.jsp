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

  <title>Accounts Payable</title>

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
         Accounts Payable
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
             
                <a href="upload1.jsp" style=" color: #ffc107;">Uploaded Product</a>&ensp;&ensp;
                <a href="view1.jsp" style=" color: #ffc107;">View Products</a>&ensp;&ensp;
                <a href="graph.jsp" style=" color: #ffc107;">User Request</a>&ensp;&ensp;
                <a href="has.jsp" style=" color: #ffc107;">Send Hashkey</a>&ensp;&ensp;
                <a href="vdown.jsp" style=" color: #ffc107;">Purchased Product</a>&ensp;&ensp;
                 <a href="ukrst.jsp" style=" color: #ffc107;">View Top K Results</a>&ensp;&ensp;
                  <a href="Graph2.jsp" style=" color: #ffc107;">Graph</a>&ensp;&ensp;
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
                   
                   
                    table{
                              height: auto;
                        }
                      
                        
                        tr,td{
                   padding: 8px;
                            }
                       input{
                border-radius: 3px;
                    }
                        	
                        	
                </style>

  
        <div class="header-text">
         
           
            <h3 class="h4" align="center" style=" color:white; font-size: 22px; font-weight: bolder; font-family: sans-serif; margin-top:100px; margin-left: -20px; ">  View Top K results </h3>
	    <br>
            <br><br>
            
            
            <form action='result.jsp'>
           <table style="font-family:  sans-serife; font-size:15px;font-weight: bold;box-shadow: #117a8b; margin-bottom: 300px; color:white; " align="center">
               <tr align="center"><td>Top K Results</td><td>
               <select name ="rank" style="border-radius: 5px; height: 50px; width: 100px; color: black;" required>
                                <option>1 </option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                </select>
                   </td>
           <tr><td align='center' colspan="2"><input type="submit" Value='View Results' style="border-radius: 2px;  width: 100px; height: 30px;text-align: center;font-size:15px;background-color:  #01bacf; color: #000;"</td></tr>
            </table>
       </form>
    
                   
  <!-- about section -->

  <!-- end about section -->


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