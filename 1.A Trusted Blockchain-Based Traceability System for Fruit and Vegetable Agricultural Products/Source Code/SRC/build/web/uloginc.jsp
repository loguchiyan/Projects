<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uuser,pass,sno;
sno=request.getParameter("sno");
uuser=request.getParameter("uuser");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/agri","root","root");
PreparedStatement ps1=con.prepareStatement("select * from ureg where uuser='"+uuser+"'and pass='"+pass+"' and status='Activated' ");
System.out.println(ps1);
ResultSet rs=ps1.executeQuery();
if(rs.next()){
    session.setAttribute("uuser", uuser);
     session.setAttribute("sno", sno);
out.println("<script>"
            +"alert('WELCOME "+uuser+"')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("/uhome.jsp");
            rd.include(request, response);
}
else
{
out.println("<script>"
            +"alert('Please Enter Valid Username and Password')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("/user.jsp");
            rd.include(request, response);
}
%>

