<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mail.mail"%>
<%@page import="java.util.Random"%>
<%
                 String key=request.getParameter("key");
                    String otp=(String)session.getAttribute("otp");
                    String name=(String)session.getAttribute("name");
                    int a=Integer.parseInt(key);
                    int b=Integer.parseInt(otp);
                    if(a==b){
    out.println("<script>"
            +"alert('OTP Matched')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/Upload.jsp");
    rd.include(request, response); }
           else{
    out.println("<script>"
            +"alert('OTP Sent to mail id')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/Uploadrequest.jsp");
    rd.include(request, response);
            }
            

%>