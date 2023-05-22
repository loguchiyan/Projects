<%@page import="java.sql.*"%>
<%
 String pid=request.getParameter("pid");   
String pname=request.getParameter("pname");

String pass=request.getParameter("password");
String dob=request.getParameter("dob");
String location=request.getParameter("location");

String email=request.getParameter("email");
String contact=request.getParameter("contact");

Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/designer","root","root");
                        PreparedStatement query=con.prepareStatement("insert into dreg(name,password,dob,email,contact,location)values('"+name+"','"+pass+"','"+dob+"','"+email+"','"+contact+"','"+location+"')");
                         System.out.println(query);
                         query.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Register Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("areg.jsp");
            rd.include(request, response);  



%>