<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mail.mail"%>
<%@page import="java.util.Random"%>
<%
                 String key=request.getParameter("key");
                    String otp=(String)session.getAttribute("otp");
                    String name=(String)session.getAttribute("name");
                
                    if(key.equalsIgnoreCase(key)&&(otp.equalsIgnoreCase(otp))){
    out.println("<script>"
            +"alert('OTP Matched')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/Upload.jsp");
    rd.include(request, response); }
           else{
    out.println("<script>"
            +"alert('OTP not matched')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/uploadrequest.jsp");
    rd.include(request, response);
            }
            

%>