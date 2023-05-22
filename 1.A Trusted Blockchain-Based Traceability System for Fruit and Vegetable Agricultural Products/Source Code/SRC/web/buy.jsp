

<%@page import="java.sql.*"%>
<%
    String sno=request.getParameter("sno");

 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
 int i=0;
 
    PreparedStatement p1=con.prepareStatement("update ureq set status1='Product Purchased', purchased='1' where sno='"+sno+"' ");
    p1.executeUpdate();
    out.println("<script>"
            +"alert('Product delivered within Today')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("products.jsp");
    rd.include(request, response);
%>