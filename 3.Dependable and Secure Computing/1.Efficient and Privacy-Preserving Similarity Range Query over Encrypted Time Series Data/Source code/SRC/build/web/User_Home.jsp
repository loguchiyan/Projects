<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Efficient and Privacy-Preserving Similarity Range Query over Encrypted Time Series Data</title>

    <!-- Favicon -->
    <link rel="icon" href="./img/core-img/favicon.png">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- /Preloader -->

    <!-- Header Area Start -->
    <%
        String pic=(String)session.getAttribute("pic");
        String name=(String)session.getAttribute("name");
    %>
    <header class="header-area">
             <!-- Main Header Start -->
        <div class="main-header-area">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between" id="hamiNav">
                        <a class="nav-brand" href="#"><img src="dataset/<%=pic%>" alt="" style='border-radius: 40px; margin-top: 10px; height: 50px; width: 60px;'><label  style='margin-left: 10px; color:yellow;'><%=name%></label></a>
                     <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">
                            <!-- Menu Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>
                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul id="nav" style="color:black;">
                                    <li class="active"><a href="User_Home.jsp">Home</a></li>
                                    <li><a href="Send_Keyword.jsp">Search Files</a></li>
                                    <li><a href="View_Request_Status.jsp">View Request Status</a></li>
                                    <li><a href="index.jsp">Logout</a></li>
                                </ul>

                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- Welcome Area Start -->
    <section class="welcome-area">

        <!-- Welcome Pattern -->
        <div class="welcome-pattern">
            <img src="img/core-img/welcome-pattern.png" alt="">
        </div>

        <!-- Welcome Slide -->
        <div class="welcome-slides owl-carousel">

            <!-- Single Welcome Slide -->
            <div class="single-welcome-slide">
                <!-- Welcome Content -->
                <div class="welcome-content h-100">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <!-- Welcome Text -->
                            <div class="col-12 col-md-9 col-lg-7">
                                 <div class="welcome-text mb-50">
                                      <h2 data-animation="fadeInLeftBig" data-delay="200ms" data-duration="1s">Efficient and Privacy-Preserving</h2>
                                    <h3 data-animation="fadeInLeftBig" data-delay="400ms" data-duration="1s">Similarity Range Query over Encrypted Time Series Data</h3>
                                    <a href="#" class="btn hami-btn btn-2" data-animation="fadeInLeftBig" data-delay="800ms" data-duration="1s">Read More!</a>
                                </div>
                        </div>
                    </div>
                </div>
                <!-- Welcome Thumbnail -->
                <div class="welcome-thumbnail">
                    <img src="img/bg-img/1.png" alt="">
                </div>
            </div>

            <!-- Single Welcome Slide -->
            <div class="single-welcome-slide">
                <!-- Welcome Content -->
                <div class="welcome-content h-100">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <!-- Welcome Text -->
                            <div class="col-12 col-md-9 col-lg-7">
                                <div class="welcome-text mb-50">
                                     <h2 data-animation="fadeInLeftBig" data-delay="200ms" data-duration="1s">Efficient and Privacy-Preserving</h2>
                                    <h3 data-animation="fadeInLeftBig" data-delay="400ms" data-duration="1s">Similarity Range Query over Encrypted Time Series Data</h3>
                                    <a href="#" class="btn hami-btn btn-2" data-animation="fadeInLeftBig" data-delay="800ms" data-duration="1s">Read More!</a>
                                   </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Welcome Thumbnail -->
                <div class="welcome-thumbnail">
                    <img src="img/bg-img/2.png" alt="">
                </div>
            </div>

        </div>

        <!-- Clouds -->
        <div class="clouds">
            <img src="img/core-img/cloud-1.png" alt="" class="cloud-1">
            <img src="img/core-img/cloud-2.png" alt="" class="cloud-2">
            <img src="img/core-img/cloud-3.png" alt="" class="cloud-3">
            <img src="img/core-img/cloud-4.png" alt="" class="cloud-4">
            <img src="img/core-img/cloud-5.png" alt="" class="cloud-5">
        </div>
    </section>
    <!-- Welcome Area End -->

   
        <!-- Bottom Footer Area -->
       
    <!-- Footer Area End -->

    <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- All Plugins -->
    <script src="js/hami.bundle.js"></script>
    <!-- Active -->
    <script src="js/default-assets/active.js"></script>

</body>

</html>