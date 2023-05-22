<%@page import="mail.mail"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%
System.out.println(" *************");
String id=request.getParameter("id");
String email=request.getParameter("email");

String user=request.getParameter("user");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/laundry","root","root");			
PreparedStatement query=con.prepareStatement("update ureg set status='Activated' where id='"+id+"' ");
System.out.println(query);	
query.executeUpdate();
Random r = new Random(); 
String xyz = Integer.toString(r.nextInt(10000));
mail m=new mail(); 
    String subject="One Time Password";
    String message="OTP :  "+xyz;
    m.sendFromGMail("1cp.javateam2020", "java1cp2020@!",email, subject,message);
   session.setAttribute("otp",xyz);
   session.setAttribute("user",user); System.out.println("Otp.."+xyz);
response.sendRedirect("uauth.jsp");



%>