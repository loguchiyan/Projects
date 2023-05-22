<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%try{
    

String pname;

pname=request.getParameter("pname");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/blockhealthcare","root","root");
PreparedStatement ps1=con.prepareStatement("insert into request(pname)values('"+pname+"') ");
 System.out.println(ps1);
                         ps1.executeUpdate();
                         System.out.println(ps1);

  
out.println("<script>"
            +"alert(' "+pname+" Send Key Request Successfully')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("/keyreq.jsp");
            rd.include(request, response);
}
catch(Exception e)
{
out.println("<script>"
            +"alert('Please Try Again')"
            +"</script>");
            RequestDispatcher rd=request.getRequestDispatcher("/keyreq.jsp");
            rd.include(request, response);
}
%>

