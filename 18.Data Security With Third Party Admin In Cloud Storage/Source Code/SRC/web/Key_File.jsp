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
    String id,email="";
    id=request.getParameter("id");
    String name=request.getParameter("name");
    String fname=request.getParameter("file");
    String trap=request.getParameter("trap");
    String fkey=request.getParameter("fkey");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Intergity","root","root");
    PreparedStatement ps=con.prepareStatement("select * from ureg where name='"+name+"' and id='"+id+"'  ");
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    email=rs.getString("email");
    }
    mail m=new mail();
    String subject="File Private and Trapdoor Key";
    String message="File Key :  "+fkey;
    String m1="Trapdoor Key : "+trap;
    String m2="File NAme : "+fname;
    String mall=m2+" "+m1+" "+message;
    System.out.println(message);
    System.out.println(m1);
    System.out.println(m2);
    m.sendFromGMail("otpsendermessage", "mghkgnutfsybjkxe",email, subject,mall);
   PreparedStatement p=con.prepareStatement("update request set status='Send Key',fkkey='"+fkey+"' where id='"+id+"' and trap='"+trap+"'and fkey='"+fkey+"'");
   System.out.println(p);
   p.executeUpdate();
    out.println("<script>"
                            +"alert('Key Generated to User Mail Id.')"
                            +"</script>");        
    RequestDispatcher rd=request.getRequestDispatcher("vReq.jsp");
    rd.include(request, response);
%>