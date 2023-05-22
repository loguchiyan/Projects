<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mail.mail"%>
<%@page import="java.util.Random"%>
<%
                    String key=request.getParameter("key");
                    String sskey=request.getParameter("skey");
                    String otp=(String)session.getAttribute("otp");
                    String skey=(String)session.getAttribute("skey");
                    String name=(String)session.getAttribute("name");
                    int a=Integer.parseInt(key);
                    int b=Integer.parseInt(otp);
                    int c=Integer.parseInt(skey);
                    int d=Integer.parseInt(sskey);
                    if((a==b)&&(c==d)){
    out.println("<script>"
            +"alert('Private && Secret Key is Matched')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/Upload.jsp");
    rd.include(request, response); }
           else{
    out.println("<script>"
            +"alert('try later')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/Uploadrequest.jsp");
    rd.include(request, response);
            }
            

%>