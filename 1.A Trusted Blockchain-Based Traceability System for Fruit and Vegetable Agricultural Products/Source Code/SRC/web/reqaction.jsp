

<%@page import="java.sql.*"%>
<%
    String sno=request.getParameter("sno");
 
    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");

    PreparedStatement p1=con.prepareStatement("update ureq set status='Accpted' where sno='"+sno+"' ");
    p1.executeUpdate();
    out.println("<script>"
            +"alert('Request Accepted Successfully.')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("graph.jsp");
    rd.include(request, response);
%>