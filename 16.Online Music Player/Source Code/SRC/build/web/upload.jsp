<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>One Music - Modern Music HTML5 Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="index.html" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                           <li><a href="upload.jsp">Upload</a></li>
                                         <li><a href="search.jsp">Search Music </a></li>
                                         <li><a href="play.jsp">Your Playlist</a></li>
                                         <li><a href="index.html">logout</a></li>
                                   
                                </ul>
                                    

                                <!-- Login/Register & Cart Button -->
                              
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
       <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/mu.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <style>
                                table{
                                  width:300px;
                                   line-height: normal;
                                   padding:3px;
                                   font-size: 18px;
                                   
                                }
                                input{
                                    border:1px solid black;
                                }
                                td{
                                    white-space:  nowrap;
                                    padding:5px;
                                }
                                table,tr,td{
                                 padding-bottom: 10px;
                              color: white;
                              border-collapse: collapse;
                              margin-left: 400px;
                           font-weight:  700;
      }
                                
                                </style>
                            <div class="hero-slides-content text-center">
                                <h1 style="margin-top:-600px; font-size:25px; color:white;  ">Upload Music</h1>
                               <br>
                               <br>
                                <form action="Upload"method="post" enctype="multipart/form-data" >
                            <table algin="center">  
<!--                                        <tr><td> <select style=" width:140px; border:1px solid black;"><strong>---Music Directors----</strong>
                                
                                     <opiton> A. R. Rahman </option>
                                      <opiton>Anirudh Ravichander </option>
                                       <opiton> Harris Jayaraja </option>
                                       <opiton>Sid Sriram </option>
                                       <opiton>GV Prakesh</option>
                                     </select>
                                    </td></tr>-->
 <tr ><td style='text-align: left;'>Music Directors</td><td style="width:130px; "><select  name="music" value=" " required="" style=" text-align:center; border: 1px solid black;"><option>---Choose--</option>
                                                <option> A. R. Rahman</option>
                                                <option>Anirudh Ravichander</option>
                                                <option> Harris Jayaraja</option>
                                                <option>Sid Sriram</option>
                                                <option>GV Prakesh</option>
                                            </select>      
                                           </td ></tr>
                             <tr><td style='text-align: left;'><strong>Signer name </strong></td> <td><input type="text" name="singer" value="" required=""> </td></tr> 
                             <tr><td style='text-align: left;'><strong>Song Name</strong></td><td> <input type="text" name="song" value="" required=""></td></tr>
                             <tr><td style='text-align: left;'><strong>Movie</strong></td> <td> <input type="text" name="movie" value="" required=""></td></tr>
                             <tr><td style='text-align: left;'><strong>Year </strong></td>  <td><input type="text" name="year" value="" required=""> </td></tr> 
<!--                             <tr><td style='text-align: left;' > <strong>Image</strong></td>  <td><input type="file" name="image" value="" required="" style=" width:140px;"> </td></tr>-->
                             <tr><td style='text-align: left;' > <strong>Audio File</strong></td>  <td><input type="file" name="audio" value="" required="" style=" width:140px;"> </td></tr>
                            
                             <tr ><td style='text-align: left;'>Rating</td><td style="width:180px; "><select  name="rate" value=" " required="" style=" width:140px; text-align: center; border:1px solid black"><option>---Choose--</option>
                                                <option>5</option>
                                                <option>4</option>
                                                <option>3</option>
                                                <option>2</option>
                                                <option>1</option>
                                            </select>      
                                   </td ></tr>
                                   <tr><td align="center" colspan="2"><button type="submit" style=" margin-left: 50px; color: black; font-size: 18px; width: 80px;  "> Submit</button> </td></tr>
                               
                            </table>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            
        </div>
    </section>
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>
