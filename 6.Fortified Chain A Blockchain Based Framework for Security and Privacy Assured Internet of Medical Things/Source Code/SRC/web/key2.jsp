<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>

<%

String sno=request.getParameter("sno");
    
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
      PreparedStatement p1=con.prepareStatement("UPDATE request1 SET status='Permitted' WHERE sno='"+sno+"' ");
   System.out.println(p1);
    p1.executeUpdate();
    System.out.println(p1);
    out.println("<script>"
            +"alert('Premission give Successfully.')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("dreq.jsp");
    rd.include(request, response);

%>

