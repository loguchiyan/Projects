
<%@page import="mail.mail"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    String id=request.getParameter("id");
    String user=request.getParameter("user");
    String files=request.getParameter("files");
    String l=request.getParameter("mail");
    System.out.println(id+""+user+""+files+""+l);
    
     String fkey="";
     String tkey="";
     String skey="";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/preserving","root","root");
   PreparedStatement pas=con.prepareStatement("select * from upload where  id='"+id+"' and user='"+user+"' and files='"+files+"'   ");
   System.out.println(pas);
   ResultSet rs1=pas.executeQuery();
   System.out.println(pas);
    if(rs1.next()){
        
        fkey=rs1.getString("fkey");
        tkey=rs1.getString("tkey");
        skey=rs1.getString("skey");
        System.out.println(fkey);
    PreparedStatement ps=con.prepareStatement("Update urequest SET fkey='"+fkey+"',tkey='"+tkey+"',skey='"+skey+"' where  id='"+id+"' and user='"+user+"' and files='"+files+"'   "); 
    ps.executeUpdate();
    System.out.println(ps);
    mail m=new mail();
    String subject="File Private and Trapdoor Key";
    String message="File Key :  "+fkey;
    String m1="Trapdoor Key : "+tkey;
    String m2="Secret Key: "+skey;
    String m3="File NAme : "+files;
    String mall=m2+" "+m1+" "+m3+" "+message;
    System.out.println(message);
    System.out.println(m1);
    System.out.println(m2);
    m.sendFromGMail("otpsendermessage", "vnebvabcebvvrypi",l, subject,mall);
    }
    out.println("<script>"
                            +"alert('Key Generated to User Mail Id.')"
                            +"</script>");        
    RequestDispatcher rd=request.getRequestDispatcher("sendkey.jsp");
    rd.include(request, response);
%>