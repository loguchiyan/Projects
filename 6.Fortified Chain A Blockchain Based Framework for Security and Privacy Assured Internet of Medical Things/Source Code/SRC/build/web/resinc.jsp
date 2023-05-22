<%@page import="java.sql.*"%>
<%
  String sno=request.getParameter("sno");
  
 
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
   PreparedStatement ps=con.prepareStatement(" update request1 set status='Permitted' where sno='"+sno+"' ");
   System.out.println(ps);
   ps.executeUpdate();
   out.print(" Request for Report  successfully ");
   out.println("<script>"); 			
   out.println("alert(\"Accepted for Report  successfully \")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/dreq.jsp");  
        rd.include(request, response);  
  

%>