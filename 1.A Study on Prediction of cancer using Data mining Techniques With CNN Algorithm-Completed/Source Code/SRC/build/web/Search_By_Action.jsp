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
				<li><a href="User_Home.jsp" >Home</a></li>
				<li><a href="SearchBySymp.jsp" id='des'>Search by Symptoms</a></li>
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
            String s1=request.getParameter("search");
            String s2=request.getParameter("search1");
            String s3=request.getParameter("search2");
        %>
	<p style="margin-top:20px;color: springgreen;font-size: 20;">View Search Result</p> 
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
                PreparedStatement p=con.prepareStatement("select * from dis where symp='"+s1+"' or symp1='"+s2+"' or symp2='"+s3+"' ");
                ResultSet  r=p.executeQuery();
                if(r.next()){
            %>
            <tr><td><strong style="color:orangered;">Search Result</strong></td><td style="color:darkred;"><%=r.getString("disease")%></td></tr>
            <tr><td><strong style="color:orangered;">Symptom1</strong></td><td><%=r.getString("symp")%></td></tr>
            <tr><td><strong style="color:orangered;">Symptom2</strong></td><td><%=r.getString("symp1")%></td></tr>
            <tr><td><strong style="color:orangered;">Symptom3</strong></td><td><%=r.getString("symp2")%></td></tr>
            <tr><td><strong style="color:orangered;">Symptom4</strong></td><td><%=r.getString("symp3")%></td></tr>
            <tr><td><strong style="color:orangered;">Drugs</strong></td><td><%=r.getString("drugs")%></td></tr>
            <tr><td><strong style="color:orangered;">Reference Link</strong></td><td><a herf="<%=r.getString("lin")%>"><%=r.getString("lin")%></a></td></tr>
            <%}%>
        </table></center>
	</div>
</div>
</body>
</html>