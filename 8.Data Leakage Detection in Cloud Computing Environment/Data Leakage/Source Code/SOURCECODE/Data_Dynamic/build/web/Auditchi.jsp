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
    String fname=request.getParameter("fname");
    String fkey=request.getParameter("fkey");
    String trap=request.getParameter("trap");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Intergity","root","root");
    
    PreparedStatement pas=con.prepareStatement("select * from upload where name='"+name+"' and reg='"+id+"' and trapdoor='"+trap+"'  ");
    System.out.println(pas);
   ResultSet rs1=pas.executeQuery();
   
   System.out.println(pas);
    if(rs1.next()){
        String status=rs1.getString("Attack");
        if(status.equalsIgnoreCase("No")){
            
    PreparedStatement ps=con.prepareStatement("select * from ureg where name='"+name+"' and id='"+id+"'  ");
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    email=rs.getString("email");
    }
    mail m=new mail();
    String subject="Your File Is Safe";
    String message="File Key :  "+fkey;
    String m1="Trapdoor Key : "+trap;
    String m2="File NAme : "+fname;
    String mall=m2+" "+m1+" "+message;
    System.out.println(message);
    System.out.println(m1);
    System.out.println(m2);
    m.sendFromGMail("1cp.javateam2020", "java1cp2020@!",email, subject,mall);
   PreparedStatement p=con.prepareStatement("update audit set status='Nodify send' where id='"+id+"' and fkey='"+fkey+"'");
    p.executeUpdate();
    out.println("<script>"
                            +"alert('Auditing check nodity to User Mail Id.')"
                            +"</script>");        
    RequestDispatcher rd=request.getRequestDispatcher("Check.jsp");
    rd.include(request, response);
        }
        else{
            
    PreparedStatement ps=con.prepareStatement("select * from ureg where name='"+name+"' and id='"+id+"'  ");
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    email=rs.getString("email");
    }
    mail m=new mail();
    String subject="Your File is Attack soo be safe to another time";
    String message="File Key :  "+fkey;
    String m1="Trapdoor Key : "+trap;
    String m2="File NAme : "+fname;
    String mall=m2+" "+m1+" "+message;
    System.out.println(message);
    System.out.println(m1);
    System.out.println(m2);
    m.sendFromGMail("1cp.javateam2020", "1cpjava2020",email, subject,mall);
   PreparedStatement p=con.prepareStatement("update audit set status='Nodify send' where id='"+id+"' and fkey='"+fkey+"'");
    p.executeUpdate();
    out.println("<script>"
                            +"alert('Nodify send to User Mail Id.')"
                            +"</script>");        
    RequestDispatcher rd=request.getRequestDispatcher("Check.jsp");
    rd.include(request, response);
        }
    }
 
%>