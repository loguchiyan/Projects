<%-- 
    Document   : sendkey
    Created on : Aug 2, 2017, 5:14:33 PM
    Author     : DLK 1
--%>

<%@page import="mail.mail"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String dname=request.getParameter("dname");
    String pname=request.getParameter("pname");
    String patient=request.getParameter("patient");
    String keyy=request.getParameter("keyy");
    String sno=request.getParameter("sno");
    String email="";

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
   PreparedStatement pas=con.prepareStatement("select * from upload  where pname='"+pname+"'   ");
   System.out.println(pas);
    ResultSet rs1=pas.executeQuery();
    if(rs1.next()){
        keyy=rs1.getString("keyy");
    }
    PreparedStatement ps=con.prepareStatement("select * from dreg where dname='"+dname+"'  ");
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    email=rs.getString("email");
    }
    mail m=new mail();
    String subject="Key for Report" ;
    String message="Reporter Name:  "+pname;
    String m1="Patient : "+patient;
    String m2="File Key : "+keyy;
    String mall=m2+" "+m1+" "+message;
    System.out.println(message);
    System.out.println(m1);
    System.out.println(m2);
    m.sendFromGMail("1cp.java01", "DLK@!dlk",email, subject,mall);
   PreparedStatement p=con.prepareStatement("update request1 set estatus='Key Sent',keyy='"+keyy+"' where  sno='"+sno+"'");
   System.out.println(p);
   p.executeUpdate();
    out.println("<script>"
                            +"alert('Key Generated for Report.')"
                            +"</script>");        
    RequestDispatcher rd=request.getRequestDispatcher("send.jsp");
    rd.include(request, response);
%>