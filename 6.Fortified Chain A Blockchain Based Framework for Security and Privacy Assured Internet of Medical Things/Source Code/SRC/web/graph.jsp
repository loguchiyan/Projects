

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
  
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
PreparedStatement paa= con.prepareStatement("SELECT diseas,COUNT(diseas)as positve FROM upload  GROUP BY diseas ");



ResultSet r=paa.executeQuery();
while(r.next()){
    String diseas=r.getString("diseas");
    int tot=r.getInt("positve");
  
   
    map = new HashMap<Object,Object>(); map.put("label",diseas); map.put("y",tot); map.put("exploded", true); list.add(map);
 
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
	theme: "light2",
	animationEnabled: true,
	exportFileName: "classification",
	exportEnabled: true,
	title:{
            text: "Classification Results based on Diseases"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		legendText: "{label}",
		toolTipContent: "{label}: <strong>{y}%</strong>",
		indexLabel: "{label} {y}%",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
 
chart.render();
 
}
</script>
<a href="chome.jsp">Click Back to Home</a>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html> 