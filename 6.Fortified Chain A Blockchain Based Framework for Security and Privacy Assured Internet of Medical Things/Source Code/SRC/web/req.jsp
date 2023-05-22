<%@page import="java.sql.*"%>
<%
  String pname=request.getParameter("pname");
   String  patient=request.getParameter("patient");
  String  dname=request.getParameter("dname"); 
  String keyy=request.getParameter("keyy");
  String file=request.getParameter("file");
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
   PreparedStatement ps=con.prepareStatement(" insert into request1(pname,patient,dname,keyy,file)values('"+pname+"','"+patient+"','"+dname+"','"+keyy+"','"+file+"') ");
   System.out.println(ps);
   ps.executeUpdate();
   out.print(" Request for Report  successfully ");
   out.println("<script>"); 			
   out.println("alert(\"Request for Report  successfully \")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/vreq.jsp");  
        rd.include(request, response);  
  

%>