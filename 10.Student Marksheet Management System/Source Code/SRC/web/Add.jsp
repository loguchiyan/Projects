<%@page import="java.sql.*"%>
<%
String sid=request.getParameter("sid");
String name=request.getParameter("name");
String lname=request.getParameter("lname");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String dept=request.getParameter("dept");
String year=request.getParameter("year");
String sem=request.getParameter("sem");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
String city=request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/marksheet","root","root");
PreparedStatement ps=con.prepareStatement("insert into sreg(sid,name,lname,gender,dob,dept,year,sem,contact,address,city)values('"+sid+"','"+name+"','"+lname+"', '"+gender+"','"+dob+"','"+dept+"','"+year+"','"+sem+"','"+contact+"','"+address+"','"+city+"') ");
ps.executeUpdate();
                            out.println("<script>"
                            +"alert('Register Successfully')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/addwater.jsp");
                    rd.include(request, response);




%>