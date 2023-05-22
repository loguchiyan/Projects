<%@page import="java.sql.*"%>
<%
  String sno=request.getParameter("sno");
 
          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
   PreparedStatement ps=con.prepareStatement("Update ureg SET status='Activated' Where sno='"+sno+"' ");
   System.out.println(ps);
   ps.executeUpdate();

   out.println("<script>"); 			
   out.println("alert(\"Authorize User Successfully\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/auth.jsp");  
        rd.include(request, response);  
  

%>