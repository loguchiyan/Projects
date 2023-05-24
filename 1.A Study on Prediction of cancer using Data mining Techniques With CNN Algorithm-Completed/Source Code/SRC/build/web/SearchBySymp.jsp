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
				<li><a href="User_Home.jsp">Home</a></li>
				<li><a href="SearchBySymp.jsp"  id='des'>Search by Symptoms</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
</div>
    <br><br>
<div id="header-featured">
	<div id="banner" class="container">
            <p align="center" style="font-size: larger;color: chartreuse;">Disease Search By ID</p>
            <form action="Search_By_Action.jsp">
                <style>
                    table,td,tr{
                        padding: 10px;
                    }
                </style>
            <table align="center" border=1 style="width: 454px;text-transform: uppercase;text-align: center;color:navy;font-weight: bold;line-height: 2;background-color:Gainsboro;border-radius: 13px;">
                <tr>
                    <td>Search By Symptom1</td>
                        <td>
                            <select name="search">
                                <option selected="" disabled="">Choose One</option>
                                <%
                                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/risk_prediction", "root","root");
                                    PreparedStatement query=con.prepareStatement("select * from dis");
                                    ResultSet rs=query.executeQuery();
                                    while(rs.next())
                                    {
                                            String name=rs.getString("symp");
                                %>
                                <option><%=name%></option><%}%>
                            </select>
                        </td>
                </tr>
                <tr>
                    <td>Search By Symptom2 </td>
                        <td>
                            <select name="search1">
                                <option selected="" disabled="">Choose One</option>
                                <%
                                    PreparedStatement query1=con.prepareStatement("select * from dis");
                                    ResultSet rs1=query1.executeQuery();
                                    while(rs1.next())
                                    {
                                            String name=rs1.getString("symp1");
                                %>
                                <option><%=name%></option><%}%>
                            </select>
                        </td>
                </tr>
                <tr>
                    <td>Search By Symptom3</td>
                        <td>
                            <select name="search2">
                                <option selected="" disabled="">Choose One</option>
                                <%
                                    PreparedStatement query2=con.prepareStatement("select * from dis");
                                    ResultSet rs2=query2.executeQuery();
                                    while(rs2.next())
                                    {
                                            String name=rs2.getString("symp2");
                                %>
                                <option><%=name%></option><%}%>
                            </select>
                        </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Search" style="width: 111px;height: 37px;"></td>
                </tr>
            </table>
           </form>
        </div>
</div>
</body>
</html>