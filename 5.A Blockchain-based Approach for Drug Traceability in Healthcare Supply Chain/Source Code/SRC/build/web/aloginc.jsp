<html>
<head>
  <script src="alert/dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>
<button onclick="JSalert()">Show an Alert</button>
<%
    String  user, pass;
    user=request.getParameter ("user");
    pass=request.getParameter("pass");
    if(user.equals("admin")&&pass.equals("admin")){
       out.println("<script>"
     
                    +"alert('Welcome Admin  !!!!!')"
                    +"</script>");
       
           RequestDispatcher rd=request.getRequestDispatcher("ahome.jsp");
           rd.include(request, response);
    }
    else{
       out.println("<script>"
                    +"alert('Enter the Valid Credentails')"
                    +"</script>");
       RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
       rd.include(request,response);
    }    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 %>
 </body>
 </html>