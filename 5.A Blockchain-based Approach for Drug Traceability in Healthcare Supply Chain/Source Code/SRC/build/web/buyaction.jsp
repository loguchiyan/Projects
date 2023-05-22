<%@page import="java.sql.*"%>
<%
try{
                   String did=request.getParameter("did");
                   String dprice=request.getParameter("dprice");
                   String dname=request.getParameter("dname");
                   String cate=request.getParameter("cate");
                   String sub=request.getParameter("sub");
                   String user=request.getParameter("user");
                   String bank=request.getParameter("bank");
                   String cno=request.getParameter("cno");
                   String cvv=request.getParameter("cvv");
                   String ifsc=request.getParameter("ifsc");
                   String qua=request.getParameter("qua");
                   String cost=request.getParameter("cost");
                   String image=request.getParameter("image");
                   String hashkey=request.getParameter("hashkey");
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
                    PreparedStatement ps=con.prepareStatement("insert into cart(user,did,dname,cate,sub,dprice,bank,cno,cvv,ifsc,qua,cost,image,hashkey)values('"+user+"','"+did+"','"+dname+"','"+cate+"','"+sub+"','"+dprice+"','"+bank+"','"+cno+"','"+cvv+"','"+ifsc+"','"+qua+"','"+cost+"','"+image+"','"+hashkey+"') ");
                    System.out.println(ps);  
                    ps.executeUpdate();
                    System.out.println("************");
                    System.out.println(ps);
                    out.println("<script>"); 			
                    out.println("alert(\" Order Successfully \")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("search.jsp");
                    rd.include(request,response);		
}
catch(Exception e)
{
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("search.jsp");
                    rd.include(request,response);
}

%>
