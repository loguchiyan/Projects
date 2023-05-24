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
				<li><a href="Search.jsp">Search ID</a></li>
				<li><a href="MissingData.jsp"  id='des'>Missing Data</a></li>
                                <li><a href="Cluster.jsp">Clustering</a></li>
				<li><a href="OverallAnalysis.jsp">Analysis</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="header-featured">
    <p align=center style="margin-top: 90px;color: springgreen;font-size: -webkit-xxx-large;">Some Data is Missing if you Want Add Here</p> 
	<!--<div id=readfile align=center>-->

        <form action="MissingAction.jsp">
           <table align="center" border=1 style="width: 432px;text-transform: uppercase;text-align: center;color: black;font-weight: bold;line-height: 2;background: aliceblue;border-radius: 13px;">
            <%@include file="Connection.jsp"%>
            <%
                String uid=request.getParameter("id");
                query=con.prepareStatement("select * from dataset where id='"+uid+"' ");
                rs=query.executeQuery();
                String id="";
                if(rs.next())
                {
                    %>
                        <tr><td>id</td><td><%=rs.getString(1).substring(0, rs.getString(1).lastIndexOf("."))%></td></tr>
                        <tr><td>age</td><td><input type="text" name="a1" value="<%=rs.getString(2)%>"></td></tr>    
                        <tr><td>gender</td><td><input type="text" name="a2" value="<%=rs.getString(3)%>"></td></tr>
                        <tr><td>cp</td><td><input type="text" name="a3" value="<%=rs.getString(4)%>"></td></tr>
                        <tr><td>trestbps</td><td><input type="text" name="a4" value="<%=rs.getString(5)%>"></td></tr>
                        <tr><td>chol</td><td><input type="text" name="a5" value="<%=rs.getString(6)%>"></td></tr>
                        <tr><td>fbs</td><td><input type="text" name="a6" value="<%=rs.getString(7)%>"></td></tr>
                        <tr><td>restecg</td><td><input type="text" name="a7" value="<%=rs.getString(8)%>"></td></tr>
                        <tr><td>thalach</td><td><input type="text" name="a8" value="<%=rs.getString(9)%>"></td></tr>
                        <tr><td>exang</td><td><input type="text" name="a9" value="<%=rs.getString(10)%>"></td></tr>
                        <tr><td>oldpeak</td><td><input type="text" name="a10" value="<%=rs.getString(11)%>"></td></tr>
                        <tr><td>slope</td><td><input type="text" name="a11" value="<%=rs.getString(12)%>"></td></tr>
                        <tr><td>ca</td><td><input type="text" name="a12" value="<%=rs.getString(13)%>"></td></tr>
                        <tr><td>thal</td><td><input type="text" name="a13" value="<%=rs.getString(14)%>"></td></tr>
                        <tr><td>num</td><td><input type="text" name="a14" value="<%=rs.getString(15)%>"></td></tr>
                        <tr><td>name</td><td><input type="text" name="a15" value="<%=rs.getString(16)%>"></td></tr>
                        <input type="hidden" name="id" value="<%=rs.getString(1)%>">
                        <td colspan="2"><input type="submit" value="Update" style="width: 111px;height: 37px;"><input type="reset" value="Reset" style="width: 111px;height: 37px;"></td>
                    <%
                }
                    %>
            </table>
        </form>
	<div id="banner" class="container">
	
	</div>
	</div>
</div>
</body>
</html>