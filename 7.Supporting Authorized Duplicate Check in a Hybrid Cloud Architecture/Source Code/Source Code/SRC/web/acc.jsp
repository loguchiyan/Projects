<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mail.mail"%>
<%@page import="java.util.Random"%>
<%
                    String name=request.getParameter("name");
                    String id=request.getParameter("id");
                    String email=request.getParameter("mail");
                    String sno=request.getParameter("sno");
Random r = new Random(); 
String xyz = Integer.toString(r.nextInt(10000));  
    mail m=new mail(); 
    String subject="One Time Password";
    String message="OTP :  "+xyz;
    m.sendFromGMail("1cp.javateam2020", "1cpjava2020",email, subject,message);
    session.setAttribute("name", name);
    session.setAttribute("otp",xyz);
    System.out.println("Otp.."+xyz);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/secureiot","root","root");
    PreparedStatement ps=con.prepareStatement("update reqreg set statua='Access Sent',keyy='"+xyz+"' where sno='"+sno+"'");
             System.out.println(ps);
  ps.executeUpdate();
    out.println("<script>"
            +"alert('OTP Sent to mail id')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/Accreq.jsp");
    rd.include(request, response); 

%>