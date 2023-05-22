<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<a href="ahome.jsp">Click back</a>
 
<%
    
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
PreparedStatement p=con.prepareStatement(" Select count(rating)as cou,dname from cart group by rating");
System.out.println(p);
ResultSet r=p.executeQuery();
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
while(r.next()){
    String filename=r.getString("dname");
    int rank=r.getInt("cou");
    map = new HashMap<Object,Object>(); map.put("label", filename); map.put("y", rank); list.add(map);
}
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light3",
	title: {
		text: "Result Based on the Drug"
	},
	axisX: {
		title: "Topic"
	},
	axisY: {
		title: "Counts"
	},
	data: [{
		type: "line",
		yValueFormatString: "#,##0",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body style="background-color:lightgoldenrodyellow;">
<center>
<div id="chartContainer" style="height: 370px; width: 80%; margin-top: 80px;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script></center>
</body>
</html>

