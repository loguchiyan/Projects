<%@page import="algo.CipherHelper"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Description">
    <meta name="author" content="Author">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
	<meta property="og:site_name" content="" /> <!-- website name -->
	<meta property="og:site" content="" /> <!-- website link -->
	<meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
	<meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
	<meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
	<meta property="og:url" content="" /> <!-- where do you want your post to link to -->
	<meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>Block based Drug Recommendation</title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
</head>
<body data-spy="scroll" data-target=".fixed-top">
    
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark">
        <div class="container">
            
            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Revo</a> -->

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="index.html" style=" text-decoration:none;"><p style=" color:#3dcac8; font-size:20px; font-weight:bolder;" >Drug Traceability</p></a> 

            <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll-active" href="ahome.jsp" style="color: #3dcac8; ">HOME <span class="sr-only">(current)</span></a>
                    </li>
                      <li class="nav-item">
                        <a class="nav-link page-scroll" href="acat.jsp" style=" color: #3dcac8;">Add Category</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="apro.jsp" style=" color: #3dcac8;">Add Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="amanage.jsp" style=" color: #3dcac8;">Manage Product</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link page-scroll" href="aneworder.jsp" style=" color: #3dcac8;">New Order</a>
                    </li>
                  <li class="nav-item">
                        <a class="nav-link page-scroll" href="apurchase.jsp" style=" color: #3dcac8;">Purchased Products</a>
                    </li>
                       <li class="nav-item">
                        <a class="nav-link page-scroll" href="atopk.jsp" style=" color: #3dcac8;">Top k Drugs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="adrug.jsp" style=" color: #3dcac8;">Drug Reviews</a>
                    </li>
                       <li class="nav-item">
                        <a class="nav-link page-scroll" href="index.html" style=" color: #3dcac8;">Logout</a>
                    </li>
                </ul>
               
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Header -->
    <header id="header" class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
 
<style>
     h1.hover{
          color:#3dcac8;
           margin-bottom:200px;
                                                        
             }
     h1{
          font-size:25px;
          margin-top:-50px;
         }
         table,tr,td{
             padding:5px;
             margin-left:130px;
         }      
 </style>

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
System.out.println("unique password ="+tkey);
      
                          
                           
        %>

                        <h1 style=" text-align:center;">Add Drug  Details</h1>
                        <form action="uploadfile1" method="post"  enctype="multipart/form-data">
                                <center>
                                <table>
                                    
                            <tr><td>Drug ID:</td><td><input type="text" name="did" value="DID<%=x%>"></td></tr>
                         
                            <tr><td>Drug Cate:</td><td><select name="cate" style=" width:195px; height:34px;"><option selected="disabled">Choose One</option>
                                    <%
                                             Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
                        PreparedStatement query=con.prepareStatement("select * from category group by cate");
                        System.out.println(query);
                        ResultSet rs=query.executeQuery();
	            	while(rs.next()){
                                      %>
                                                
                                                <option value="<%=rs.getString("cate")%>" ><%=rs.getString("cate")%></option>
                                                <%}%>
                                    
                                    
                                    </select></td> </tr>
                             <tr><td>Sub Category:</td><td><input type="text" name="sub" value=""></td></tr>
                            <tr><td>Drug Name:</td><td><input type="text" name="dname" value=""></td></tr>
                            <tr><td>Drug Price:</td><td><input type="text" name="dprice" value=""></td></tr>
                           <tr><td>Description:</td><td><input type="text" name="des" value=""></td></tr>
                           <tr><td>Drug Image:</td><td><input type="file" name="image" value=""></td></tr>
                            <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;background-color: #3dcac8;  ">ADD</button></td></tr>
         
                                 </table>
                                   </center>             
                             </form>
                    
                    
                    

                </div> <!-- end of col -->
            </div> <!-- end of row -->
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
        </div> <!-- end of container -->
    </header> <!-- end of header -->
    <!-- end of header -->


 


  
    <!-- end of details 1 -->


   



   

    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © <a href="#your-link">Drug</a></p>
                </div> <!-- end of col -->
               <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright --> 
    <!-- end of copyright -->
    
    	
    <!-- Scripts -->
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>