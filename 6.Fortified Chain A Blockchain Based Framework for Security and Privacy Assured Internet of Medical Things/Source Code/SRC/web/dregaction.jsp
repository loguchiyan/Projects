<%@page import="java.sql.*"%>
<%
String dname=request.getParameter("dname");
String pass=request.getParameter("pass");
String hname=request.getParameter("hname");
String des=request.getParameter("des");
String spec=request.getParameter("spec");
String dob=request.getParameter("dob");
String location=request.getParameter("location");
String email=request.getParameter("email");
String contact=request.getParameter("contact");

Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
                        PreparedStatement query=con.prepareStatement("insert into dreg(dname,pass,hname,des,spec,dob,email,contact,location)values('"+dname+"','"+pass+"','"+hname+"','"+des+"','"+spec+"','"+dob+"','"+email+"','"+contact+"','"+location+"')");
                         System.out.println(query);
                         query.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Register Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("doctor.jsp");
            rd.include(request, response);  



%>