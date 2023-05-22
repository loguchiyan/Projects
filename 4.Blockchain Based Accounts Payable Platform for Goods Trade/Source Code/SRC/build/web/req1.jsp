<%@page import="java.sql.*" %>
<%
String ouser=request.getParameter("ouser");
String uuser=request.getParameter("uuser");
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String cost=request.getParameter("cost");
String des=request.getParameter("des");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","root");
PreparedStatement ps=con.prepareStatement("insert into ureq(uuser,ouser,pid,pname,cost,des)value('"+uuser+"','"+ouser+"','"+pid+"', '"+pname+"','"+cost+"','"+des+"')");
System.out.println(ps);
ps.executeUpdate();
System.out.println(ps);
   out.println("<script type=\"text/javascript\">"); 			
   out.println("alert(\" Make a request Successfully \")");
   out.println("</script>");   
   RequestDispatcher rd=request.getRequestDispatcher("proreq.jsp");
   rd.include(request, response);
%>