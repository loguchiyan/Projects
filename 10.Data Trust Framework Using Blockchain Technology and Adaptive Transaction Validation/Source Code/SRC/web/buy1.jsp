<%@page import="mail.mail"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%

String sno=request.getParameter("sno");
String email=request.getParameter("email");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/fake transcation","root","root");			
PreparedStatement query=con.prepareStatement("update product1 set status='OTP Send' where sno='"+ sno+"' ");
	query.executeUpdate();
Random r = new Random(); 
String xyz = Integer.toString(r.nextInt(10000));
mail m=new mail(); 
    String subject="One Time Password";
    String message="OTP :  "+xyz;
    m.sendFromGMail("otpsendermessage", "slhztdgcdwsxiwuz",email, subject,message);
   session.setAttribute("otp",xyz);
  System.out.println("Otp.."+xyz);
  response.sendRedirect("otp.jsp");



%>
