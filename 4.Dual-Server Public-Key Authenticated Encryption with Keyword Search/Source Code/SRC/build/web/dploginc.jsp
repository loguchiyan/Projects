<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    try{
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/preserving","root","root");
   PreparedStatement ps=con.prepareStatement("Select * from dpreg Where user='"+user+"'and pass='"+pass+"' and Status='Activated' ");
 
  System.out.println(ps);
   ResultSet d= ps.executeQuery();
  System.out.println(ps);
  if(d.next()){
      session.setAttribute("name", user);
      String id=d.getString("id");
      session.setAttribute("id", id);
out.println("<script>"
                    +"alert('Welcome Data Owner')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/dphome.jsp");
                    rd.include(request, response);
            }
    }
   catch(Exception e){
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("dplogaction.jsp");
     rd.include(request, response);
            }
    
    %>