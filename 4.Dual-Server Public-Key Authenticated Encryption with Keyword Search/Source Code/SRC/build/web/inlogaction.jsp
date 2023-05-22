<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user.equals("as")&&pass.equals("as"))
    {
    out.println("<script>"
                    +"alert('Welcome Assistant Server')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/inhome.jsp");
                    rd.include(request, response);
            }
    else{
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("inlogaction.jsp");
     rd.include(request, response);
            }
    
    %>
