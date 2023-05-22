<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Efficient and Privacy-Preserving Similarity Range Query over Encrypted Time Series Data
</title>

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
    <header class="header-area">
        <!-- Main Header Start -->
        <div class="main-header-area">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between" id="hamiNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="index.html"></a>

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
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="Provider_Login.jsp">Data Owner</a></li>                                    
                                    <li><a href="User_Login.jsp">Data User</a></li>
                                    <li><a href="Proxy_Login.jsp">Cloud Server-1</a></li>
                                    <li><a href="Cloud_Login.jsp">Cloud Server-2</a></li>
                                   
                                </ul>

                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Price Plan Area Start -->
    <section class="hami-price-plan-area section-padding-100-0">
        <div>
            <center>                
                <style>
                    table{
                        line-height: 25px;
                        width: 50%;
                        margin-left: 20%;
                    }
                    h2{
                        font-family: cursive;
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                    }
                    td,input{
                        margin-bottom: 10px;
                    }
                    h4{
                        font-size: 20px;
                        color:navy;
                    }
                    
                </style>
                <h2>Data User Registration</h2><br><br>
                <form action='User_Register_Action' method='post' enctype="multipart/form-data">
                <table>
                    <tr><td style='color:blue; font-size: 20px;'><strong>Username: </strong></td><td><input type="text" name="user" style="border-radius: 2px;" required=""></td></tr>
                    <tr><td style='color:blue; font-size: 20px;'><strong>Password: </strong></td><td><input type="password" name="pass" style="border-radius: 2px;" required=""></td></tr>
                    <tr><td style='color:blue; font-size: 20px;'><strong>Mobile: </strong></td><td><input type="text" name="mobile" pattern="[0-9]{10}" title='Enter 10-digits' style="border-radius: 2px;" required=""></td></tr>
                    <tr><td style='color:blue; font-size: 20px;'><strong>Mail Id: </strong></td><td><input type="email" name="mail" style="border-radius: 2px;" required=""></td></tr>
                    <tr><td style='color:blue; font-size: 20px;'><strong>City: </strong></td><td><input type="text" name="city" style="border-radius: 2px;" required=""></td></tr>
                    <tr><td style='color:blue; font-size: 20px;'><strong>Profile Picture: </strong></td><td><input type="file" name="file" style="border-radius: 2px;" required=""></td></tr>
                    <tr><td align='center' colspan="2"><input type="submit" Value='Register' style="border-radius: 2px; width: 100px; height: 30px;padding: 5px; text-align: center; background-color: lightblue; color:darkblue;"</td></tr>
                </table></form><br>
                <h4>If Existing User?<a href="User_Login.jsp" style='color:brown; font-size: 15px;'>  Login</a></h4>
            </center>
        </div>
    </section>
 
       
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