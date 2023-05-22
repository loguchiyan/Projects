<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
                    String cname=request.getParameter("cname");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelearning","root","root");
                    PreparedStatement query=con.prepareStatement("delete from  upload where cname='"+cname+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Course Details Deleted Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("manage.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("manage.jsp");
                    rd.include(request,response);
                }

%>