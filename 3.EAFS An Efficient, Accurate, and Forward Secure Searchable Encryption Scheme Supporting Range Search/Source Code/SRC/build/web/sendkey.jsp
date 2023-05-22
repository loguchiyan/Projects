<%-- 
    Document   : sendkey
    Created on : Aug 2, 2017, 5:14:33 PM
    Author     : DLK 1
--%>

<%@page import="algorithm.CipherHelper"%>
<%@page import="algorithm.mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id,fkey="",name="",email="";
    id=request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees", "root", "root");
    String Query22="select * from filereq where id='"+id+"' ";
    PreparedStatement ps22=con.prepareStatement(Query22);
    ResultSet rs22=ps22.executeQuery();
                        if(rs22.next())
                        {
                        fkey=rs22.getString("fkey");
                        name=rs22.getString("name");
                        }
                        PreparedStatement ps=con.prepareStatement("select * from ureg where name='"+name+"'  ");
                        ResultSet rs=ps.executeQuery();
                        if(rs.next())
                        {
                        email=rs.getString("email");
                        }
                        CipherHelper cc = new CipherHelper();
                        String ekey=cc.cipher("12345678", fkey);
                        mail m=new mail(); 
        String subject="Encryption Password";
        String message="File Key :  "+ekey;
        m.sendFromGMail("otpsendermessage", "nlpmpijkxkwwyhvx",email, subject,message);
        System.out.println(subject);
        System.out.println(message);
       PreparedStatement p=con.prepareStatement("update filereq set status='Active' where id='"+id+"' ");
        p.executeUpdate();
        out.println("<script>"
				+"alert('Key Generated to User Mail.')"
				+"</script>");        
        RequestDispatcher rd=request.getRequestDispatcher("viewreq.jsp");
        rd.include(request, response);
%>