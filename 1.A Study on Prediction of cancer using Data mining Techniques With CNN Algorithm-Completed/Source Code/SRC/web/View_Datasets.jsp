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
                                <li><a href="View_Datasets.jsp" id='des'>View Datasets</a></li>
				<li><a href="Search.jsp">Search ID</a></li>
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
    <style>
        tr,td{
            background-color:Gainsboro;
            padding: 5px;
        }
    </style>
	<div id="banner" class="container">
            <p align="center" style="font-size: larger;color: chartreuse;">View All Datasets</p>
            <table align="center"  style="width:70%;text-transform: uppercase;text-align: center;color: wheat;font-weight: bold;line-height: 2;background: purple;border-radius: 13px;">
                <tr style="color:darkblue;">
                    <td>id</td>
                    <td>age</td>
                    <td>gender</td>
                    <td>cp</td>
                    <td>trestbps</td>
                    <td>chol</td>
                    <td>fbs</td>
                    <td>restecg</td>
                    <td>thalach</td>
                    <td>exang</td>
                    <td>ca</td>
                    <td>thal</td>
                    <td>num</td>
                    <td>name</td>
                    <td>Cancer Name</td>
                </tr>
                <%@include file="Connection.jsp"%>
                <%
                    query=con.prepareStatement("select * from dataset");
                    rs=query.executeQuery();
                    while(rs.next())
                    {
                        %>
                            <tr style="font-size: 15px;color:black;">
                                <td>
                                    <%=rs.getString(1).substring(0, rs.getString(1).lastIndexOf("."))%>
                                </td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                <td><%=rs.getString(7)%></td>
                                <td><%=rs.getString(8)%></td>
                                <td><%=rs.getString(11)%></td>
                                <td><%=rs.getString(12)%></td>
                                <td><%=rs.getString(13)%></td>
                                <td><%=rs.getString(14)%></td>
                                <td><%=rs.getString(15)%></td>
                                <td>xxx</td>
                                <td style="color: orangered;"><%=rs.getString(17)%></td>
                            </tr>
                        <%
                    }
                %>
            </table>
            <br><br><br>
        </div>
</div>
</body>
</html>