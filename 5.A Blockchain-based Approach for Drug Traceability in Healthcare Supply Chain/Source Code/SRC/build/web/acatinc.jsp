<%@page import="java.sql.*"%>
<%
try{
                   String cate=request.getParameter("cate");
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
                    PreparedStatement ps=con.prepareStatement("insert into category(cate)values('"+cate+"') ");
                    System.out.println(ps);  
                    ps.executeUpdate();
                    System.out.println("************");
                    System.out.println(ps);
                    out.println("<script>"); 			
                    out.println("alert(\" Add Category Successfully \")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("acat.jsp");
                    rd.include(request,response);		
}
catch(Exception e)
{
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("acat.jsp");
                    rd.include(request,response);
}

%>
