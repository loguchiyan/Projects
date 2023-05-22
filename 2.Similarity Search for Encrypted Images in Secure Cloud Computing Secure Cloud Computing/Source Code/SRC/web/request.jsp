
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<%
                    String name=session.getAttribute("name").toString();
                    String id=session.getAttribute("id").toString();
                    String email=session.getAttribute("mail").toString();
Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/policy","root","root");
    PreparedStatement ps=con.prepareStatement("insert into reqreg(id,name,mail_id)values('"+id+"','"+name+"','"+email+"')");
             System.out.println(ps);
  ps.executeUpdate();
    RequestDispatcher rd=request.getRequestDispatcher("/uploadrequest.jsp");
    rd.include(request, response); 

%>