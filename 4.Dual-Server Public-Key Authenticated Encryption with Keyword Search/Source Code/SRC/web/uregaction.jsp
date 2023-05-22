<%@page import="java.sql.*"%>
<%
    try{
        
   String id=request.getParameter("id");
   String user=request.getParameter("username");
   String pass=request.getParameter("password");
   String email=request.getParameter("email");
   String mobile=request.getParameter("mobile");
   String location=request.getParameter("location");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/preserving","root","root");
   PreparedStatement ps=con.prepareStatement("insert into ureg(id,user,pass,email,mobile,location)values ('"+id+"','"+user+"','"+pass+"','"+email+"','"+mobile+"','"+location+"')");
   System.out.println(ps);
   ps.executeUpdate();
   
   
   out.print(" Successfully Register");
   out.println("<script>"); 			
   out.println("alert(\"Successfully Register\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/datauser.jsp");  
        rd.include(request, response);  

 
            
    }   catch(Exception e){
        out.println("<script>"); 			
        out.println("alert(\"Please Try Again..\")");
        out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/datauser.jsp");  
        rd.include(request, response);  

        
    }
    %>