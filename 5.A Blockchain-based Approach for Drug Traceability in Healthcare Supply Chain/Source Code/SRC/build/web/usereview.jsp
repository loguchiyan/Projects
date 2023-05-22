<%@page import="java.sql.*"%>
<%
String sno=request.getParameter("sno");

String review=request.getParameter("review");
String rating=request.getParameter("rating");

  
try 
		{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
		    PreparedStatement ps=con.prepareStatement("update cart set review='"+review+"', rating='"+rating+"' where sno='"+sno+"' ");
                    System.out.println(ps);
                    ps.executeUpdate();
                 System.out.println("****");
                 System.out.println(ps);
                    out.println("<script>"); 			
                    out.println("alert(\"Give Review and Rating Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("review.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("review.jsp");
                    rd.include(request,response);
                }

       
                                   
























%>