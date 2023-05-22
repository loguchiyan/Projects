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
                    table{
                        line-height: 25px;
                        width: 80%;
                        margin-left: 100px;
                    }
                    h3{
                        font-family: cursive;
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                        margin-left: 299px;
                    }
                    table,td,tr{
                        border-collapse: collapse;
                        border: 2px solid #0056b3;
                        text-align: center;
                        padding: 5px;
                        font-size: 15px;
                    }
                    
                </style>
                <br>
                <br>
                <h3  style=" font-family: cambria; font-size:30px; "> View Status and Download file</h3>               
                <table style=" color: #000">
                    <br>
                    <br>
                    <tr>
                        <td style='color:#e83e8c; font-weight: bolder;'>Id</td>
                        <td style='color: #e83e8c; font-weight: bolder;'>Name</td>
                        <td style='color:#e83e8c; font-weight: bolder;'>File Name</td>
                           <td style='color:#e83e8c; font-weight: bolder;'>File Key</td>
                           <td style='color:#e83e8c; font-weight: bolder;'>Secret Key</td> 
                            <td style='color:#e83e8c; font-weight: bolder;'>Trapdoor Key</td>
                        <td style='color:#e83e8c; font-weight: bolder;'>View File</td>
                        
                        <td style='color:#e83e8c; font-weight: bolder;'>Action</td>
                    </tr>
                    
                        
                        <% 
                        String id=session.getAttribute("id").toString();                            
                        String name=session.getAttribute("name").toString();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/preserving","root","root");
                        PreparedStatement query=con.prepareStatement("select * from urequest where uid='"+id+"' and uname='"+name+"'and cloud='Accept' and internal='Accept' ");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next())
                        {
                        %>
                        <tr>
                        <td style='font-weight: bold;'><%=rs.getString("uid")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("uname")%></td>
                        <td style='font-weight: bold;'><%=rs.getString("files")%></td>
                          <td style='font-weight: bold;'><%=rs.getString("fkey")%></td>
                             <td style='font-weight: bold;'><%=rs.getString("skey")%></td>
                               <td style='font-weight: bold;'><%=rs.getString("tkey")%></td>
                        <td><a  style=" color: darkmagenta; font-weight: bold;"href="viewfile.jsp?file=<%=rs.getString("files")%>">view</a></td>    
                        <td style='font-weight: bold;'><a href='Download1.jsp?id=<%=rs.getString("id")%>&&user=<%=rs.getString("user")%>&&file=<%=rs.getString("files")%>&&fkey=<%=rs.getString("fkey")%>&&tkey=<%=rs.getString("tkey")%>&&skey=<%=rs.getString("skey")%>' style='color:green;'>Download</a></td>
                     </tr><%}%>
                </table> 
                         </div>   
                    
                  
                
                   
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
