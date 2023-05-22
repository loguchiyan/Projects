<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dual-Server Public-Key Authenticated Encryption with Keyword Search</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    
    <body class="sb-nav-fixed">
        
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Keyword Search</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                
            </ul>
           
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                                <nav class="sb-sidenav-menu-nested nav" style=" font-size:20px;margin-top:39px;font-family: cambria;font-weight: bold;">
                                   
                                    <a class="nav-link" href="uprofile.jsp">Profile</a>
                                    <a class="nav-link" href="ssendreq.jsp">View files  and Send Request</a>
                                    <a class="nav-link" href="download.jsp">View File status and Download file</a>
                                    <a class="nav-link" href="logout.jsp">Logout</a>
                                </nav> 
                            </div>
                            
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                   
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            
                    </div>
                    
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main >
                <style>
                    table
                    {
                        line-height: 25px;
                        margin-left: -190px;
                    }
                    h3{
                        font-family: cursive;
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                        margin-left: 299px;
                    }
                 td,tr{
                        border-collapse: collapse;
                        text-align: center;
                        padding: 10px;
                        font-size: 15px;
                    }
                    
                    form,tr,td {
                        margin-left:47px;
                        padding: 10px;
                        border-collapse: separate;
                        border-spacing: 5px;
                        
                    }
               
                </style>
                <br>
                <br>
                <%
                String tkey=request.getParameter("tkey");
                String fkey=request.getParameter("fkey");
                String skey=request.getParameter("skey");   
                session.setAttribute("t",tkey);
                session.setAttribute("s",skey);
                session.setAttribute("f",fkey);
                String id=request.getParameter("id");
                String user=request.getParameter("user"); 
                String file=request.getParameter("file");    
                session.setAttribute("file",file);        
                System.out.println("Welocme"+file+" "+fkey);
                %>
                <h3  style=" font-family: cambria; font-size:30px; ">Enter Key and Download File</h3>               
                <form action='Download3.jsp'>
                <table>
                    <input type="hidden" name="file" values="<%=file%>">
                    <br> <tr><td style='color:blue; font-size: 20px;margin-left: 100px;'><strong style=" margin-left: 400px;">&ensp; &ensp;File Key: </strong></td><td><input type="text" name="fkey"  style="padding: 5px; border-radius: 2px;"></td></tr>
                    <br> <tr><td style='color:blue; font-size: 20px;'><strong style=" margin-left: 400px;"> &ensp; Trapdoor Key: </strong></td><td><input type="text" name="tkey"  style="border-radius: 2px; padding: 5px;"></td></tr>
                    <br> <tr><td style='color:blue; font-size: 20px;'><strong style=" margin-left: 400px;">&ensp; &ensp;Secret Key: </strong></td><td><input type="text" name="skey"  style="border-radius: 2px; padding: 5px;"></td></tr>
                   <br> <tr><td align='center' colspan="2"><input type="submit" Value='Download' style="border-radius: 2px; width: 100px; height: 30px; padding: 2px; text-align: center; margin-left:540px ;background-color: lightblue; color:darkblue;"></td></tr>
         <br>
                </table>       </form>
                  
                
                   
                </main>
                
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>

