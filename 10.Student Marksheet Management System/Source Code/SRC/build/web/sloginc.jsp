<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String sid,name;
sid=request.getParameter("sid");
name=request.getParameter("name");
System.out.println(name);
System.out.println(sid);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/marksheet","root","root");
PreparedStatement ps1=con.prepareStatement("select * from sreg where sid='"+sid+"'and name='"+name+"' ");
System.out.println(ps1);
ResultSet rs=ps1.executeQuery();
if(rs.next()){
    session.setAttribute("sid",sid);
    session.setAttribute("name",name);
out.println("<script>"
                            +"alert('WELCOME "+name+"')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/shome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/shop.jsp");
                    rd.include(request, response);
}
%>
