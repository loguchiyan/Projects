<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>FOOD NETWORK BLOCKCHAIN</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-fns.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
<!--[if IE 6]><link rel="stylesheet" href="css/ie.css" type="text/css" media="all" /><![endif]-->
<style type="text/css">
<!--
.style1 {color: #1F73A5}
.style5 {font-size: 16}
.style6 {font-size: 16px}
.style8 {font-weight: bold}
.style10 {color: #196EA0}
.style12 {color: #1F73A5; font-size: 16px; font-weight: bold; }
.style13 {color: #585F63; }
.style14 {
	font-size: large;
	color: #003300;
}
.style15 {color: #126698}
.style21 {font-size: medium; font-weight: bold; }
.style22 {color: #1B6FA1}
.style20 {color: #FFFFFF; }
.style23 {font-size: large}
.style24 {font-size: x-large}
.style23 {color: #E1EAF1;
	font-size: 24px;
}
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div id="shell">
  <div id="header">
    <h1 id="logo"><a href="#">FOOD NETWORK BLOCKCHAIN</a></h1>
    <div id="social">
      <ul>
       
      </ul>
    </div>
  </div>
  <div id="navigation">
    <ul>
     
      <li><a href="buycrop.jsp">BuyCrop</a></li>
      <li><a href="processorstatus.jsp">ViewStatus</a></li>
      <li><a href="processorlogin.jsp">Logout</a></li>
	  
    </ul>
  </div>
  <div id="main">
    <div id="featured">
      <div class="post-image"> <span class="tl round">&nbsp;</span> <span class="tr round">&nbsp;</span> <span class="bl round">&nbsp;</span> <span class="br round">&nbsp;</span> <a href="#"><img src="css/images/featured.jpg" alt="" /></a></div>
      <div class="post-info">
        <h2>FOOD NETWORK </h2>
        <p>innovation management and social constructionism to investigate interrelationships of food  service provisions and innovations in waste management. It is based on the evaluation of food  waste solutions and innovations that combine strategic dimensions of waste management with  practice-driven initiatives, including incremental (processes and technologies) and radical  innovations. </p>
       
      </div>
      <div class="cl">&nbsp;</div>
    </div>
    <div id="content">
      <div class="holder">
        <div class="cl">&nbsp;</div>
      </div>
      <div class="gallery">
        <div class="projects">
          <div align="center">
            <table width="604" height="250" border="0" >
              <tr>
                <td height="67" colspan="7" bgcolor="#3C9BEB"><div align="center"><span class="style23">VIEW STATUS </span></div></td>
              </tr>
              <%
                                        try {
                                            //String username = "username";
											String username=session.getAttribute("username").toString();
											String status = "no";
							
        PreparedStatement ps;
        ResultSet rs,rs2;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
                                            
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodnetworkblockchain","root","password");
									  
									   
                                            String query = "select * from cropdetails where processor='"+username+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                
                                                String s1 = rs.getString(2);
                                                String s2 = rs.getString(3);
												
												String s3 = rs.getString(4);
                                               String s4 = rs.getString(8);
											  String s5 = rs.getString(9);
                                           
                                    %>
              <tr>
                <td><div align="center" class="style21">Product name </div></td>
                <td><div align="center" class="style21">Quantity</div></td>
                <td><div align="center" class="style21">Price</div></td>
                <td><div align="center" class="style21">Distributor</div></td>
                <td><div align="center" class="style21">Hash Key </div></td>
              </tr>
              <tr>
                <td width="141"><div align="center"><%=s1%></div></td>
                <td width="126"><div align="center">
                    <label></label>
                    <%=s2%></div></td>
                <td width="119"><div align="center"><%=s3%></div></td>
                <td width="96"><div align="center"><%=s4%></div></td>
                <td width="100"><div align="center"><%=s5%></div></td>
              </tr>
              <p>
                <%

                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
              </p>
            </table>
          </div>
        </div>
      </div>
      <div class="gallery-info">
        <div class="box-head">
          <h3>&nbsp;</h3>
          <h3>&nbsp;</h3>
          <p class="style1"><span class="style5"><span class="style6"><span class="style1"><span class="style8"><span class="style10"><span class="style1"><a href="buycrop.jsp">Buy Product </a></span></span></span></span></span></span></p>
          <p class="style12">&nbsp;</p>
          <p><span class="style12"><a href="processorstatus.jsp">View status </a></span></p>
          <p>&nbsp;</p>
          <p class="style1"><span class="style5"><span class="style6"><span class="style8"><span class="style10"><a href="processorlogin.jsp">Logout</a></span></span></span></span></p>
          <p>&nbsp;</p>
          <p>&nbsp; </p>
        </div>
      </div>
      <div class="cl">&nbsp;</div>
    </div>
  </div>
  <div class="footer">
    <p class="lf"><a href="#"></a> -   </p>
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
<div align=center></div>
</body>
</html>