<%@page import="java.sql.*"%>
<%try{
String sno=request.getParameter("sno");
Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/water","root","root");
                        PreparedStatement query=con.prepareStatement("Update orders set status='Order Delivered' where sno='"+sno+"'");
                        System.out.println(query);
                        query.executeUpdate();
                        System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Order Delivered Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("new1.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("new1.jsp");
                    rd.include(request,response);
                }





%>