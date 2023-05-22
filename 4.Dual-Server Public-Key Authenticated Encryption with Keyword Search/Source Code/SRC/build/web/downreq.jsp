<%@page import="java.sql.*"%>
<%
  String id=request.getParameter("id");
   String  user=request.getParameter("name");
   String  files=request.getParameter("file");
          String id1=session.getAttribute("id").toString();
  
          String name=session.getAttribute("name").toString();
          String email=session.getAttribute("email").toString();
          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/preserving","root","root");
   PreparedStatement ps=con.prepareStatement(" Insert into urequest(id,user,files,uid,uname,email)values('"+id+"','"+user+"','"+files+"','"+id1+"','"+name+"','"+email+"')");
   System.out.println(ps);
   ps.executeUpdate();
   out.print(" Send Request successfully ");
   out.println("<script>"); 			
   out.println("alert(\"Send Request to AS Successfully\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/ssendreq.jsp");  
        rd.include(request, response);  
  

%>