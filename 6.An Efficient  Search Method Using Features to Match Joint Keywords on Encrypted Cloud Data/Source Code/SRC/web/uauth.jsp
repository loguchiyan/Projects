<%-- 
    Document   : uauth
    Created on : 19 Sep, 2022, 12:36:39 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.*"%>
<%
  String id=request.getParameter("id");
  String name=request.getParameter("name");
          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/imagecloud","root","root");
   PreparedStatement ps=con.prepareStatement("Update reg SET status='Activated' Where id='"+id+"' ");
   System.out.println(ps);
   ps.executeUpdate();

   out.println("<script>"); 			
   out.println("alert(\"Authorize User Successfully\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/Cloud_Home.jsp");  
        rd.include(request, response);  
  

%>