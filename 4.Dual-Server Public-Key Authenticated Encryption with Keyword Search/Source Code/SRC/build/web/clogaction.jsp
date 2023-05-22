<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user.equals("ts")&&pass.equals("ts"))
    {
    out.println("<script>"
                    +"alert('Welcome Test Server')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/chome.jsp");
                    rd.include(request, response);
            }
    else{
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("clogaction.jsp");
     rd.include(request, response);
            }
    
    %>
