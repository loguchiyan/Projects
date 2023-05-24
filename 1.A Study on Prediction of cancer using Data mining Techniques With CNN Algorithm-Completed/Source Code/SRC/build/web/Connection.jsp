<%@page import="java.sql.*"%>
<%
    Connection con=null;
    PreparedStatement query=null;
    ResultSet rs=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost/risk_prediction","root","root");
%>