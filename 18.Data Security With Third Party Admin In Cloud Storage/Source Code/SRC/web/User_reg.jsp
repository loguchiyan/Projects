<%@page import="java.sql.*"%>
<%
String name=request.getParameter("cname");
String addr=request.getParameter("addr");
String pass=request.getParameter("cpass");
String dob=request.getParameter("dob");
String email=request.getParameter("cemail");
String cont=request.getParameter("cont");

Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intergity","root","root");
                        PreparedStatement query=con.prepareStatement("insert into ureg(name,pass,dob,email,cont,address)values('"+name+"','"+pass+"','"+dob+"','"+email+"','"+cont+"','"+addr+"')");
                         System.out.println(query);
                         query.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Invalid Login\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("login-register.html");
            rd.include(request, response);  



%>