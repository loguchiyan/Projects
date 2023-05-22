<%-- 
    Document   : sendkey
    Created on : Aug 2, 2017, 5:14:33 PM
    Author     : DLK 1
--%>

<%@page import="java.util.Random"%>
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
    String fname=request.getParameter("image");
    String trap=request.getParameter("trap");
    String sno=request.getParameter("sno");
    String oname=request.getParameter("oname");
    String reg=request.getParameter("reg");
     String fkey="";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/secureiot","root","root");
   PreparedStatement pas=con.prepareStatement("select * from upload where name='"+oname+"' and reg='"+reg+"' and trapdoor='"+trap+"'  ");
    
   System.out.println(pas);
   ResultSet rs1=pas.executeQuery();
   
   System.out.println(pas);
    if(rs1.next()){
        fkey=rs1.getString("fkey");
        System.out.println(fkey);
    }
    PreparedStatement ps=con.prepareStatement("select * from reg where name='"+name+"' and id='"+id+"'  ");
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    email=rs.getString("mail_id");
    }
    mail m=new mail();
    String subject="File Private and Trapdoor Key && Genarate Key";
    String message="File Key :  "+fkey;
    String m1="Trapdoor Key : "+trap;
    String m2="File NAme : "+fname;
    Random r = new Random(); 
String xyz = Integer.toString(r.nextInt(1000000));  

    String mall=m2+" "+m1+" "+message+" "+xyz;
    System.out.println(message);
    System.out.println(m1);
    System.out.println(m2);
    session.setAttribute("skey",xyz);
    m.sendFromGMail("1cp.javateam2020", "1cpjava2020",email, subject,mall);
   PreparedStatement p=con.prepareStatement("update request set status='Send Key',fkey='"+fkey+"', skey='"+xyz+"' where id='"+id+"' and sno='"+sno+"'");
    p.executeUpdate();
    out.println("<script>"
                            +"alert('Key Generated to User Mail Id.')"
                            +"</script>");        
    RequestDispatcher rd=request.getRequestDispatcher("pr.jsp");
    rd.include(request, response);
%>