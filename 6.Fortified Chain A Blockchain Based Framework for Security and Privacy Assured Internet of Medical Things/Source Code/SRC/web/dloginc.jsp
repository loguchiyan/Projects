<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String dname,pass,id;
id=request.getParameter("id");
dname=request.getParameter("dname");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/blockhealthcare","root","root");
PreparedStatement ps1=con.prepareStatement("select * from dreg where dname='"+dname+"'and pass='"+pass+"' and status='Activated' ");
System.out.println(ps1);
ResultSet rs=ps1.executeQuery();
if(rs.next()){
    session.setAttribute("dname", dname);
     session.setAttribute("id", id);
out.println("<script>"
            +"alert('WELCOME "+dname+"')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("/dhome.jsp");
            rd.include(request, response);
}
else
{
out.println("<script>"
            +"alert('Please Enter Valid Username and Password')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("/doctor.jsp");
            rd.include(request, response);
}
%>

