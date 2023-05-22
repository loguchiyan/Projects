<%@page import="java.sql.*"%>

<%
       
try 
{
    String user=request.getParameter("user");
    String pass=request.getParameter("pass");
    String email=request.getParameter("email");
    String location=request.getParameter("location");
    String contact=request.getParameter("contact");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","root");
		    PreparedStatement query=con.prepareStatement("insert into register(user,pass,email,contact,location)values ('"+user+"','"+pass+"','"+email+"','"+contact+"','"+location+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Register Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("register.html");
                    rd.include(request,response);
                }


%>