<%-- 
    Document   : oauth
    Created on : 19 Sep, 2022, 12:15:23 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.*"%>
<%
  String id=request.getParameter("id");
  String name=request.getParameter("name");
          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/imagecloud","root","root");
   PreparedStatement ps=con.prepareStatement("Update oreg SET status='Activated' Where id='"+id+"' ");
   System.out.println(ps);
   ps.executeUpdate();

   out.println("<script>"); 			
   out.println("alert(\"Authorize Owner Successfully\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/Authorize_Owner.jsp");  
        rd.include(request, response);  
  

%>