
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<%
    System.out.println("jdljakjfkjakjfakkkkkkkkkkkkkkkkkkkkkkkk");
                    String name=session.getAttribute("name").toString();
                    String id=session.getAttribute("id").toString();
                    String email=session.getAttribute("mail").toString();
                    String req=request.getParameter("p1");
                    session.setAttribute("type",req);
                    System.out.println(name+" "+id+" "+email);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/secureiot","root","root");
    PreparedStatement ps=con.prepareStatement("insert into reqreg(id,name,mail_id,type)values('"+id+"','"+name+"','"+email+"','"+req+"')");
    System.out.println(ps);
    ps.executeUpdate();
    RequestDispatcher rd=request.getRequestDispatcher("/Uploadrequest.jsp");
    rd.include(request, response); 

%>