<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user.equals("kgc")&&pass.equals("kgc"))
    {
    out.println("<script>"
                    +"alert('Welcome Key Generation Center')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/kgchome.jsp");
                    rd.include(request, response);
            }
    else{
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("kgclogaction.jsp");
     rd.include(request, response);
            }
    
    %>