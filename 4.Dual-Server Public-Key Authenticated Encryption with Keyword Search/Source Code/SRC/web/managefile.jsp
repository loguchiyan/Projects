<%@page import="java.sql.*"%>
<%
  String id=request.getParameter("id");
   String  user=request.getParameter("name");
  
          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/preserving","root","root");
   PreparedStatement ps=con.prepareStatement(" Delete from upload Where id='"+id+"' and user='"+user+"' ");
   System.out.println(ps);
   ps.executeUpdate();
   out.print(" Delete File successfully ");
   out.println("<script>"); 			
   out.println("alert(\"Delete File successfully \")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/viewmangefile.jsp");  
        rd.include(request, response);  
  

%>