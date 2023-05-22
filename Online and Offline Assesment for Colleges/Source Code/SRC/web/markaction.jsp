<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlinelearning","root","root");
    String user=session.getAttribute("user").toString();
    String mark=request.getParameter("mark");
  
    PreparedStatement query1=con.prepareStatement("update answer set mark='"+mark+"' where user='"+user+"' ");
    System.out.println(query1);
    query1.executeUpdate();
   
    
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Give mark Succesfully \")");
    out.println("</script>");
    RequestDispatcher rd=request.getRequestDispatcher("off.jsp");   
    rd.include(request, response);
%>








































































































 