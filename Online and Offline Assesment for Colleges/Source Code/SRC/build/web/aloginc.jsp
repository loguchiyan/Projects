
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name,pass;
name=request.getParameter("user");
pass=request.getParameter("pass");
if(name.equals("staff")&&pass.equals("staff"))
{
out.println("<script>"
                            +"alert('Welcome Staff')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/ahome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/admin.jsp");
                    rd.include(request, response);
}
%>
