
<%@page import="java.util.Random"%>
<%@page import="mail.mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String sno=request.getParameter("sno");
    String user=session.getAttribute("user").toString();
   String email=request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fake ", "root", "root");    
    String Query22="select * from ureg where name='"+name+"'";
    PreparedStatement ps22=con.prepareStatement(Query22);
    ResultSet rs22=ps22.executeQuery();
    if(rs22.next())
    {
        email=rs22.getString("email");
    }
     dname=request.getParameter("dname");
     fname=request.getParameter("fname");
     skey=request.getParameter("skey");
     session.setAttribute("dname", dname);
     session.setAttribute("fname", fname);
     session.setAttribute("skey", skey);
     
     String Query="select * from req where dname='"+dname+"' and fname='"+fname+"' and fr='"+name+"' and skey='"+skey+"'";
     PreparedStatement ps=con.prepareStatement(Query);
     ResultSet rs=ps.executeQuery();
     Random rr = new Random();
     int aa=rr.nextInt(1000000);
     session.setAttribute("aa", aa);
     if(rs.next())
     {
        mail m=new mail(); 
        String subject="One Time Password";
        String message="File OTP Key :  "+(Integer.toString(aa));
        m.sendFromGMail("1cp.javateam2021", "2021java@!12345",email, subject,message);
        System.out.println(Integer.toString(aa));
        out.println("<script>"
				+"alert('OTP Key Generated. Check Your Mail.')"
				+"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("key1.jsp");
        rd.include(request, response);
     }
     else
     {
         out.println("<script>"
				+"alert('please enter correct details..')"
				+"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("uhome.jsp");
        rd.include(request, response);
     }
%>
