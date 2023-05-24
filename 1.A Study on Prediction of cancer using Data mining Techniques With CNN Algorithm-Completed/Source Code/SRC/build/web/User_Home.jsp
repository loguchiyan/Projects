<%@page import="java.sql.*"%>
<html>
<head>
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<title>
</title>
<style>
a#des
{
    background: #c70707;border-radius: 12px;height: 27px;border-style: double;
}
div#readfile
{
    margin-left: 296px;
    margin-top: 0px;
    border-style: groove;
    width: 400px;
    height: 100px;
}
</style>
</head>
<body style='background-color:steelBlue;'>
<div id="header-wrapper" style="
    background: url('Images/backbanner.jpg');
    background-repeat:no-repeat;
    background-size: cover;
    background-position:center;
    height: 89px; 
    border-radius: 20px;
    border-style: double;
    border-color: aliceblue;
    border-radius: 18px;">
	<div id="header" class="container"> 
		<div id="menu">
			<ul>
				<li><a href="User_Home.jsp" id='des'>Home</a></li>
				<li><a href="SearchBySymp.jsp">Search by Symptoms</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
</div>
    <br><br>
<div id="header-featured">
	<div id="banner" class="container">
        <%
            String username=(String)session.getAttribute("name");
        %>
	<p style="margin-top:20px;color: springgreen;font-size: 20;">Welcome <%=username%></p> 
        <center>
            <style>
                table{
                    width: 60%;
                }
                table,td,tr{
                    border-collapse: collapse;
                    border: 2px solid mediumvioletred;
                    padding: 5px;
                }
                tr,td{
                    color:white;
                    font-size: 20px;
                }
            </style>
        <table>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/risk_prediction", "root","root");
                PreparedStatement p=con.prepareStatement("select * from register where name='"+username+"' ");
                ResultSet  r=p.executeQuery();
                if(r.next()){
            %>
            <tr><td><strong style="color:orangered;">Id</strong></td><td><%=r.getString("id")%></td></tr>
            <tr><td><strong style="color:orangered;">Username</strong></td><td><%=username%></td></tr>
            <tr><td><strong style="color:orangered;">Mail</strong></td><td><%=r.getString("mail")%></td></tr>
            <tr><td><strong style="color:orangered;">Mobile</strong></td><td><%=r.getString("mobile")%></td></tr>
            <tr><td><strong style="color:orangered;">City</strong></td><td><%=r.getString("city")%></td></tr>
            <%}%>
        </table></center>
	</div>
</div>
</body>
</html>