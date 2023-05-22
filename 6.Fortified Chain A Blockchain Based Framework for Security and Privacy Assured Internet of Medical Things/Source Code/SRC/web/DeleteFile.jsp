<%@page import="java.sql.*"%>
<%
  String pid=request.getParameter("pid");
   String  oname=request.getParameter("oname");
  
          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/designer","root","root");
   PreparedStatement ps=con.prepareStatement(" Delete from upload Where pid='"+pid+"' and oname='"+oname+"' ");
   System.out.println(ps);
   ps.executeUpdate();
   out.print(" Delete File successfully ");
   out.println("<script>"); 			
   out.println("alert(\"Delete File successfully \")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/Manage.jsp");  
        rd.include(request, response);  
  

%>