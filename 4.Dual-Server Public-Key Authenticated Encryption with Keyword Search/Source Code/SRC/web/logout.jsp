<%-- 
    Document   : logout
    Created on : Jul 31, 2017, 12:57:13 PM
    Author     : DLK 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            alert ( "Your Account is Logout" );
        </script>
    </head>
    <body>
        <%
        session.invalidate();    
       response.sendRedirect("index.html");
        %>
    </body>
</html>
