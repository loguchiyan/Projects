<%-- 
    Document   : ologin
    Created on : Jul 31, 2017, 10:57:12 AM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees", "root", "root");
PreparedStatement ps22=con.prepareStatement("select * from oreg where name='"+name+"' and pass='"+pass+"' ");
ResultSet rs = ps22.executeQuery();
if(rs.next())
{
session.setAttribute("name", name);
out.println("<script>"
        +"alert('Welcome Data Owner')"
        +"</script>");
RequestDispatcher rd=request.getRequestDispatcher("ownerhome.jsp");
rd.include(request, response); 
}
else
{
out.println("<script>"
        +"alert('Invalid Username & Password')"
        +"</script>");
RequestDispatcher rd=request.getRequestDispatcher("owner.jsp");
rd.include(request, response); 
}
%>
