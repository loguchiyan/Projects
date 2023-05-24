<%@page import="algorithm.CART"%>
<%@page import="algorithm.CNN"%>
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
				<li><a href="Search.jsp" id='des'>Search ID</a></li>
				<li><a href="MissingData.jsp"  >Missing Data</a></li>
                                <li><a href="Cluster.jsp">Clustering</a></li>
				<li><a href="OverallAnalysis.jsp">Analysis</a></li>
                                <li><a href="index.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
</div>
    <br><br>
<div id="header-featured">
    <p align="center" style="font-size: 30px;color: chartreuse;">Risk Based on Structured / UnStructured Data</p>
    <%@include file="Connection.jsp"%>    
        <table align="center" border=1 style="width: 609px;height: 280px;text-transform: capitalize;text-align: center;color: black;font-weight: bold;line-height: 2;background: aliceblue;">
            <tr align="center" style="color: navy; background: yellow;">
                <td colspan="4">Structured /  UnStructured Data Risk Result</td>
            </tr>
            <tr align="center">
                <td colspan="2" style="color: navy; background: skyblue;">S_Data Result_Count</td>
                <td colspan="2" style="color: navy; background: sandybrown;">US_Data Result_Count</td>
            </tr>
                <tr style="background: bisque;"><td>High Level</td><td>Low Level</td><td>High Level</td><td>Low Level</td></tr>
            <%
                //UnStructure Data Values
                String usn=request.getParameter("usn");
                String usl=request.getParameter("usl");
                String ush=request.getParameter("ush");
                //Structured Data Values
                String sn=request.getParameter("sn");
                String sl=request.getParameter("sl");
                String sh=request.getParameter("sh");
                //Type casting for all data values
                int USH=Integer.parseInt(ush);
                int USL=Integer.parseInt(usl);
                
                int SH=Integer.parseInt(sh);
                int SL=Integer.parseInt(sl);
                
                //Calculation for Structured and unstructured data's
                //Structured Data Risk Result
                String S_Result="",US_Result="";
                if(SH!=0)
                {
                    S_Result="High Level Risk";
                }
                else if (SL!=0)
                {
                    S_Result="Low Level Risk";
                }
                else
                {
                    S_Result="Low Level Risk";
                }
                //UnStructured Data Risk Result
                if(USH>=6)
                {
                    US_Result="High Level Risk";
                }
                else if(USL!=0)
                {
                    US_Result="Low Level Risk";
                }
                else
                {
                    US_Result="Low Level Risk";
                }
            %>
            <tr><td><%=SH%></td><td><%=SL%></td><td><%=USH%></td><td><%=USL%></td></tr>
            <tr align="center">
                <td colspan="2" style="color: navy; background: skyblue;">Risk Result</td>
                <td colspan="2" style="color: navy; background: sandybrown;">Risk Result</td>
            </tr>
            <tr align="center">
                <td colspan="2" style="color: navy;">( <%=S_Result%> )</td>
                <td colspan="2" style="color: navy;">( <%=US_Result%> )</td>
            </tr>
            </table>
            <br>
            <h1 align="center" style="color: thistle;font-family: cursive;"><u>Over all Result Prediction</u></h1>
            <%
                String Final_Result="";
                if(S_Result.equalsIgnoreCase("High Level Risk")&&US_Result.equalsIgnoreCase("High Level Risk"))// H + H = H
                {
                    System.out.println(Final_Result="Your Disease Result (High Risk)");
                }
                else if(S_Result.equalsIgnoreCase("Low Level Risk")&&US_Result.equalsIgnoreCase("Low Level Risk"))// L + L = L
                {
                    System.out.println(Final_Result="Your Disease Result (Low Risk)");
                }
                else if(S_Result.equalsIgnoreCase("High Level Risk")&&US_Result.equalsIgnoreCase("Low Level Risk"))// H + L = H
                {
                    System.out.println(Final_Result="Your Disease Result (High Risk)");
                }
                else if(S_Result.equalsIgnoreCase("Low Level Risk")&&US_Result.equalsIgnoreCase("High Level Risk"))// L + H = H
                {
                    System.out.println(Final_Result="Your Disease Result (High Risk)");
                }
                else
                {
                    System.out.println(Final_Result="Your Disease Result (Low Risk)");
                }
            %>
            <h2 align="center" style="color: gold;font-family: monospace;"><%=Final_Result%></h2>
            
            <div id="banner" class="container">
            <br><br><br>
        </div>
    </div>
</body>
</html>