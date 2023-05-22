<%@page import="java.sql.*"%>
<%
try{
String uuser=request.getParameter("uuser");
String money=request.getParameter("money");

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
                        PreparedStatement ps=con.prepareStatement("update account set money='"+money+"' where uuser='"+uuser+"' ");
                        System.out.println(ps);  
                        ps.executeUpdate();
                        System.out.println("************");
                     System.out.println(ps);
    
                               out.println("<script>"); 			
                    out.println("alert(\" Add amount Successfully \")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("acc.jsp");
                    rd.include(request,response);		
}
catch(Exception e)
{
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("money.jsp");
                    rd.include(request,response);
}

%>
