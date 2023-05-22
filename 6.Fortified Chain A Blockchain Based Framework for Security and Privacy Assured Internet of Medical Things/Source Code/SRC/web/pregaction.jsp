<%@page import="java.sql.*"%>
<%
String pname=request.getParameter("pname");
String pass=request.getParameter("pass");
String dob=request.getParameter("dob");
String location=request.getParameter("location");
String email=request.getParameter("email");
String contact=request.getParameter("contact");

Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
                        PreparedStatement query=con.prepareStatement("insert into preg(pname,pass,dob,email,contact,location)values('"+pname+"','"+pass+"','"+dob+"','"+email+"','"+contact+"','"+location+"')");
                         System.out.println(query);
                         query.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Register Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("patient.jsp");
            rd.include(request, response);  



%>