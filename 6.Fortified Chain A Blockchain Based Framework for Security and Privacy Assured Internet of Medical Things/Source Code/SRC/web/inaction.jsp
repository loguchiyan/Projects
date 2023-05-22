<%@page import="java.sql.*"%>
<%
  String pname=request.getParameter("pname");
   String  sol=request.getParameter("sol");
  
  String file=request.getParameter("file");
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
   PreparedStatement ps=con.prepareStatement(" Update request1 set sol='"+sol+"' where pname='"+pname+"' and file='"+file+"'");
   System.out.println(ps);
   ps.executeUpdate();
   out.print(" Request for Report  successfully ");
   out.println("<script>"); 			
   out.println("alert(\"Request for Report  successfully \")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/grep.jsp");  
        rd.include(request, response);  
  

%>