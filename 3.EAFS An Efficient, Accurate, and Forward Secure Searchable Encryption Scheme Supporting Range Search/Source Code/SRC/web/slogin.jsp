<%-- 
    Document   : slogin
    Created on : Aug 2, 2017, 4:48:02 PM
    Author     : DLK 1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
if(name.equals("cloud")&&pass.equals("cloud"))
{
out.println("<script>"
        +"alert('Welcome Cloud')"
        +"</script>");
RequestDispatcher rd=request.getRequestDispatcher("serverhome.jsp");
rd.include(request, response); 
}
else
{
out.println("<script>"
        +"alert('Invalid Username & Password')"
        +"</script>");
RequestDispatcher rd=request.getRequestDispatcher("server.jsp");
rd.include(request, response); 
}
%>
