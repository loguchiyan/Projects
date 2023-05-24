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
				<li><a href="Admin_Home.jsp">Home</a></li>
				<li><a href="UploadDataSet.jsp" >Upload</a></li>
                                <li><a href="View_Datasets.jsp">View Datasets</a></li>
				<li><a href="Search.jsp"  id='des'>Search ID</a></li>
				<li><a href="MissingData.jsp">Missing Data</a></li>
                                <li><a href="Cluster.jsp">Clustering</a></li>
				<li><a href="OverallAnalysis.jsp">Analysis</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
</div>
    <br><br>
<div id="header-featured">
	<div id="banner" class="container">
            <p align="center" style="font-size: larger;color: chartreuse;">Disease Search Result By ID</p>
            <table align="center" border=1 style="width: 432px;text-transform: uppercase;text-align: center;color: black;font-weight: bold;line-height: 2;background: aliceblue;border-radius: 13px;">
                
            <%@include file="Connection.jsp"%>
            <!--<p align="center"><a href="Risk.jsp">Click Risk Prediction</a></p>-->
            <%
                String uid=request.getParameter("id");
                query=con.prepareStatement("select * from dataset where id='"+uid+"' ");
                rs=query.executeQuery();
                String id="";
                if(rs.next())
                {
                    id=rs.getString(1);
                    if(rs.getString(2)==null||rs.getString(3)==null||rs.getString(4)==null||rs.getString(5)==null||rs.getString(6)==null
                            ||rs.getString(7)==null||rs.getString(8)==null||rs.getString(9)==null||rs.getString(10)==null||rs.getString(11)==null
                            ||rs.getString(12)==null||rs.getString(13)==null||rs.getString(14)==null||rs.getString(15)==null 
                            
                            || rs.getString(2).equals("")||rs.getString(3).equals("")||rs.getString(4).equals("")||rs.getString(5).equals("")||rs.getString(6).equals("")
                            ||rs.getString(7).equals("")||rs.getString(8).equals("")||rs.getString(9).equals("")||rs.getString(10).equals("")||rs.getString(11).equals("")
                            ||rs.getString(12).equals("")||rs.getString(13).equals("")||rs.getString(14).equals("")||rs.getString(15).equals("")
                            
                            || rs.getString(2).equals(" ")||rs.getString(3).equals(" ")||rs.getString(4).equals(" ")||rs.getString(5).equals(" ")||rs.getString(6).equals(" ")
                            ||rs.getString(7).equals(" ")||rs.getString(8).equals(" ")||rs.getString(9).equals(" ")||rs.getString(10).equals(" ")||rs.getString(11).equals(" ")
                            ||rs.getString(12).equals(" ")||rs.getString(13).equals(" ")||rs.getString(14).equals(" ")||rs.getString(15).equals(" ")
                            
                            )
                    {
                        String temp="MissingData.jsp?id="+rs.getString(1);
                        response.sendRedirect(temp);
                    }
                    %>
                        <tr><td>id</td><td><%=rs.getString(1).substring(0, rs.getString(1).lastIndexOf("."))%></td></tr>
                        <tr><td>age</td><td><%=rs.getString(2)%></td></tr>    
                        <tr><td>gender</td><td><%=rs.getString(3)%></td></tr>
                        <tr><td>cp</td><td><%=rs.getString(4)%></td></tr>
                        <tr><td>trestbps</td><td><%=rs.getString(5)%></td></tr>
                        <tr><td>chol</td><td><%=rs.getString(6)%></td></tr>
                        <tr><td>fbs</td><td><%=rs.getString(7)%></td></tr>
                        <tr><td>restecg</td><td><%=rs.getString(8)%></td></tr>
                        <tr><td>thalach</td><td><%=rs.getString(9)%></td></tr>
                        <tr><td>exang</td><td><%=rs.getString(10)%></td></tr>
                        <tr><td>oldpeak</td><td><%=rs.getString(11)%></td></tr>
                        <tr><td>slope</td><td><%=rs.getString(12)%></td></tr>
                        <tr><td>ca</td><td><%=rs.getString(13)%></td></tr>
                        <tr><td>thal</td><td><%=rs.getString(14)%></td></tr>
                        <tr><td>num</td><td><%=rs.getString(15)%></td></tr>
                        <tr><td>name</td><td>xxx</td></tr>
                    <%
                }
                    %>
            </table>
            <br><br>
            <p align="center"><a href="Risk.jsp?id=<%=id%>">Click Risk Prediction</a></p>
            <br><br><br>
        </div>
    </div>
</body>
</html>