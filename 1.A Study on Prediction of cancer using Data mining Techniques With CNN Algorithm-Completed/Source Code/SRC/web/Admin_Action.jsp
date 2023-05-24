<%
    String username=request.getParameter("username");
    String pass=request.getParameter("pass");
    if(username.equals("admin")&&pass.equals("admin"))
        {
        out.println("<script>"
                +"alert('Welcome Admin')"
                +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("Admin_Home.jsp");
        rd.include(request, response); 
        }
        else
        {
        out.println("<script>"
                +"alert('Invalid Username & Password')"
                +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.include(request, response); 
}

%>