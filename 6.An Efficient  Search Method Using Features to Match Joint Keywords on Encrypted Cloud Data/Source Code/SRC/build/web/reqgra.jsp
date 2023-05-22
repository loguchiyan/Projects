<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<a href="Graph.jsp">Click Back</a>
<%
    
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 String plan="";
 int a=0;
 Class.forName("com.mysql.jdbc.Driver");
 String id=request.getParameter("id");
 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/imagecloud","root","root"); 
             
            String x="select count(request) as count, image from request group by image ";
                                System.out.println(x);
                                PreparedStatement ps = con.prepareStatement(x);
                                
                                ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
              plan = rs.getString("image");
               a = rs.getInt("count");
map = new HashMap<Object,Object>(); map.put("label", plan); map.put("y", a); list.add(map);}
 
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
	title: {
		text: "Request Percentage"
	},
	axisX: {
		title: "Image Name"
	},
	axisY: {
		title: "Range ( point-wise )"
	},
	data: [{
		type: "line",
		yValueFormatString: "#,##0mn tonnes",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}

</script>
</head>

<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>