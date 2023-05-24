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
				<li><a href="UploadDataSet.jsp"  id='des'>Upload</a></li>
                                <li><a href="View_Datasets.jsp">View Datasets</a></li>
				<li><a href="Search.jsp">Search ID</a></li>
				<li><a href="MissingData.jsp">Missing Data</a></li>
                                <li><a href="Cluster.jsp">Clustering</a></li>
				<li><a href="OverallAnalysis.jsp">Analysis</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="header-featured">
	<div id="banner" class="container">
	<p style="margin-top: 90px;color: springgreen;font-size: -webkit-xxx-large;">Upload Cancer Related DataSets</p> 
	<div id=readfile align=center>
	<br>
        <form action="Patient_Record" name="form1" method="post" enctype="multipart/form-data">
            <table align="center" style="
                color: PapayaWhip;
                font-size: 20px;
            ">
                <tr><td>Upload Patients Datasets</td><td><input type="file" name="data" required=""></td></tr>
            <tr align="center"><td colspan="2"><input type="submit" value="Upload"></td></tr>
        </table>
            <br>
        </form>
	</div>
        <div id=readfile align=center style="margin-top:15px;">
            <form action="Upload" name="form1" method="post" enctype="multipart/form-data">
            <table align="center" style="
                color: PapayaWhip;
                font-size: 20px;
            ">
            <tr><td>Upload Cancer Datasets</td><td><input type="file" name="file"></td></tr>
            <tr align="center"><td colspan="2"><input type="submit" value="Upload"></td></tr>
            </table>
        </form>
        </div>
	</div>
</div>
</body>
</html>