<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String ouser,pass,sno;
sno=request.getParameter("sno");
ouser=request.getParameter("ouser");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","root");
PreparedStatement ps1=con.prepareStatement("select * from oreg where ouser='"+ouser+"'and pass='"+pass+"' and status='Activated'");
System.out.println(ps1);
ResultSet rs=ps1.executeQuery();
if(rs.next()){
    session.setAttribute("ouser", ouser);
     session.setAttribute("sno", sno);
out.println("<script>"
                            +"alert('WELCOME "+ouser+"')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/ohome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/owner.jsp");
                    rd.include(request, response);
}
%>

