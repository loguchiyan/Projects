
<%@page import="algo.CipherHelper"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
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
                                   
                                    <a class="nav-link" href="dpprofile.jsp">Profile</a>
                                    <a class="nav-link" href="uploadreq.jsp">Upload file Request</a>
                                     <a class="nav-link" href="viewupstatus.jsp">View Status </a>
                                    <a class="nav-link" href="uploadfile.jsp">Upload Files </a>
                                    <a class="nav-link" href="viewmangefile.jsp">View and Manage Files</a>
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
                            table,tr,td{
                                margin-top: -100px;
                                padding:7px;
                                
                            }
                            h2{
                                font-weight: bold;
                                font-family: cambria;
                            
                            }
                        </style>
                        <br><br><h2 align="center" style="color:brown"> Upload Files</h2>
                             <%
                    
                    String name=session.getAttribute("name").toString();
                    String id=session.getAttribute("id").toString();
                    System.out.println(name+"  "+id);
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
                      <form action='Upload' method="post" enctype="multipart/form-data">       
                          
                             <table style="font-family: cambria; font-size:20px;font-weight: bold;box-shadow: #117a8b;" align="center">
                                 <input type="hidden" name="id"value='<%=id%>'style=" border-radius: 2px;">
                                 <input type="hidden" name="user" value='<%=name%>'style=" border-radius: 2px;">
                            <br><br> <tr><td><storng>File Key  &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :</storng></td><td><input type="text"name="x" value='<%=x%>'style=" border-radius: 2px;"></td></tr>
                            <br><br> <tr><td><storng>Trapdoor key&nbsp;:</storng></td><td><input type="text" name="tkey"value='<%=tkey%>'style=" border-radius: 2px;"></td></tr>
                            <br><br> <tr><td><storng>Secret Key &emsp;&nbsp;&nbsp; :</storng></td><td><input type="text"name="skey" value='<%=unique_password%>'style=" border-radius: 2px;"></td></tr>
                            <br><br> <tr><td><storng>Upload Files &nbsp;&nbsp;&nbsp;&nbsp;:</storng></td><td><input type="file"  name="upload" value="file" style=" border-radius: 2px;"></td></tr>
                            <tr><td align='center' colspan="2"><input type="submit" Value='Upload' style="border-radius: 2px; width: 100px; height: 30px;padding: 5px; text-align: center;font-size:15px;background-color: lightblue; color:darkblue;"</td></tr>
                             </table>
                        </form>   
                      
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

