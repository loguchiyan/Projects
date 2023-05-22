<%@page import="java.sql.*" %>
<%
String uuser=request.getParameter("uuser");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String dob=request.getParameter("dob");
String contact=request.getParameter("contact");
String loc=request.getParameter("loc");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","root");
PreparedStatement ps=con.prepareStatement("insert into ureg(uuser,pass,email,dob,contact,loc)value('"+uuser+"','"+pass+"','"+email+"','"+dob+"','"+contact+"','"+loc+"')");
System.out.println(ps);
ps.executeUpdate();
System.out.println(ps);
   out.println("<script type=\"text/javascript\">"); 			
   out.println("alert(\" '"+uuser+"' Register Successfully \")");
   out.println("</script>");   
   RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
   rd.include(request, response);
%>