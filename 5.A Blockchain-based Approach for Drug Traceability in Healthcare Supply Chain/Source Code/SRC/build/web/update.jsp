<%@page import="java.sql.*"%>
<%
String sno=request.getParameter("sno");



  
try 
		{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
		    PreparedStatement query=con.prepareStatement("update cart set status='Order Confirmed' where sno='"+sno+"' ");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Order Confirmed  Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("aneworder.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("aneworder.jsp");
                    rd.include(request,response);
                }

       
                                   
























%>