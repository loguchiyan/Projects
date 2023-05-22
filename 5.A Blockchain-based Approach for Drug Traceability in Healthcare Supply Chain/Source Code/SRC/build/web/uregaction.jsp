<%@page import="java.sql.*" %>
<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String dob=request.getParameter("dob");
String contact=request.getParameter("contact");
String location=request.getParameter("location");
System.out.println(user);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/block","root","root");
PreparedStatement ps=con.prepareStatement("insert into ureg(user,pass,email,contact,location)value('"+user+"','"+pass+"','"+email+"','"+contact+"','"+location+"')");
System.out.println(ps);
ps.executeUpdate();
System.out.println(ps);
   out.println("<script type=\"text/javascript\">"); 			
   out.println("alert(\" '"+user+"' Register Successfully \")");
   out.println("</script>");   
   RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
   rd.include(request, response);
%>