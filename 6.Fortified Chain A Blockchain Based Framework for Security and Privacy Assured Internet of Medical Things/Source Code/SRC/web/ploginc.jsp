<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pname,pass,id;
id=request.getParameter("id");
pname=request.getParameter("pname");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/blockhealthcare","root","root");
PreparedStatement ps1=con.prepareStatement("select * from preg where pname='"+pname+"'and pass='"+pass+"' and status='Activated'  ");
System.out.println(ps1);
ResultSet rs=ps1.executeQuery();
if(rs.next()){
    session.setAttribute("pname", pname);
     session.setAttribute("id", id);
out.println("<script>"
            +"alert('WELCOME "+pname+"')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("/phome.jsp");
            rd.include(request, response);
}
else
{
out.println("<script>"
            +"alert('Please Enter Valid Username and Password')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("/patient.jsp");
            rd.include(request, response);
}
%>

