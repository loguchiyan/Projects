<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Achieving Keyword Search</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body id="reportsPage">
    <div class="" id="home">
        <nav class="navbar navbar-expand-xl">
            <div class="container h-100">
                <a class="navbar-brand" href="index.html">
                    <h1 class="tm-site-title mb-0">Achieving Keyword Search</h1>
                </a>
                <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                
                            </a>
                         <li class="nav-item">
                            <a class="nav-link" href="cloud.jsp">
                                <i class="fal fa-cloud"></i>
                              Cloud Server
                            </a>
                        </li>    
                        <li class="nav-item">
                            <a class="nav-link" href="owner.jsp">
                              <i class="far fa-user"></i>
                               Data Owner
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="user.jsp">
                                <i class="far fa-user"></i>
                                Data User
                            </a>
                        </li>
                      
                    </ul>
                </div>
            </div>

        </nav>
           <style>
            h2{
                font-family: inherit;
                font-size: 30px;
                color: darkblue;
                font-weight: bolder;
               
            }
            label{
                color: aqua;
            }
            table{
                margin-top: -120px;
                font-family: monospace;
               
                color: whitesmoke;
                font-size: 23px;
            }
            tr,td{
                 padding: 10px;
            }
            input{
                border-radius: 3px;
            }
            </style>
        
        <main >
          
               <div class="tm-section-half">  
                   <h3 align="center" style="font-family: monospace; font-weight: bold; color: #00cae3;" > Welcome User Register..... </h3><br>
              <form action="uregaction" method="post" enctype="multipart/form-data">
               <table align="center">
                   <tr><td><strong>ID&emsp; </strong></td><td> <input type="text" name="id" value=""  style="width: 230px; color:black; font-weight:bold;" /></td></tr>
                   <tr><td><strong>Username &emsp; </strong></td><td> <input type="text" name="username" value="" style="width: 230px; color:black; font-weight:bold;" /></td></tr>
                   <tr><td><strong>Password&emsp; </strong></td><td> <input type="password" name="password" value="" style="width: 230px; color:black; font-weight:bold;" /></td></tr>
                   <tr><td><strong>Email &emsp;</strong></td><td> <input type="email" name="email" value="" style="width: 230px; color:black; font-weight:bold;" /></td></tr>
                   <tr><td><strong>Date of Birth &emsp;</strong></td><td> <input type="text" name="date" value="" style="width: 230px; color:black; font-weight:bold;" /></td></tr>
                   <tr><td><strong>Gender&emsp; </strong></td><td>
                    <input type="radio" name="gender" value="male" style=" "> Male
                    <input type="radio" name="gender" value="female"> Female
                    <input type="radio" name="gender" value="other"> Other</td></tr>
                    <tr><td><strong>Select Profile &emsp; </strong></td><td> <input type="file" name="image" value="" style="width: 230px; color:black; font-weight:bold;" /></td></tr>
                   <tr><td><strong>Mobile&emsp; </strong></td><td> <input type="text" name="mobile" value="" style="width: 230px; color:black; font-weight:bold;" /></td></tr><br><br>
                   <tr><td><strong>Location &emsp; </strong></td><td> <input type="text" name="location" value="" style="width: 230px; color:black; font-weight:bold;" /></td></tr>
                   <br><br>
                  <tr align="center"><td colspan="2"><input style=" background-color: #9fcdff; "  type="submit" value="Register"/></td></tr>
                   </table></form><br><br>  
                </div> 
                   
                </main>
            <!-- row -->
            <br>
             <br>
              <br>
               <br>
                <br> <br>
                 <br>
                  <br>
                   <br>
                    <br>
                     <br>
                
        <footer class="tm-footer row tm-mt-small">
            <div class="col-12 font-weight-light">
                <p class="text-center text-white mb-0 px-4 small">
                  
                    
                    Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
                </p>
            </div>
        </footer>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="js/Chart.min.js"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="js/tooplate-scripts.js"></script>
    <script>
        Chart.defaults.global.defaultFontColor = 'white';
        let ctxLine,
            ctxBar,
            ctxPie,
            optionsLine,
            optionsBar,
            optionsPie,
            configLine,
            configBar,
            configPie,
            lineChart;
        barChart, pieChart;
        // DOM is ready
        $(function () {
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart

            $(window).resize(function () {
                updateLineChart();
                updateBarChart();                
            });
        })
    </script>
</body>

</html>
