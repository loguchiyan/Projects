<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name,pass;
name=request.getParameter("name");
pass=request.getParameter("pass");
if(name.equals("cloud")&&(pass.equals("cloud"))){
out.println("<script>"
                            +"alert('Welcome Cloud')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/chome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/cloud.jsp");
                    rd.include(request, response);
}
%>
