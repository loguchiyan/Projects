<%@page import="java.sql.*"%>
<%

  
  String sid=request.getParameter("sid");

 
     String sem=request.getParameter("sem");
    String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");
String l1=request.getParameter("l1");
String l2=request.getParameter("l2");

try{
    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/marksheet","root","root");
PreparedStatement ps=con.prepareStatement("insert into sem1(sid,sem,s1,s2,s3,s4,s5,l1,l2)values('"+sid+"','"+sem+"','"+s1+"','"+s2+"','"+s3+"', '"+s4+"','"+s5+"','"+l1+"','"+l2+"') ");
System.out.println(ps);

ps.executeUpdate();
                       
System.out.println(ps);
out.println("<script>"
        
                            +"alert('Add Subject  Successfully')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/addsem.jsp");
                    rd.include(request, response);
}
catch(Exception e){
     out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("sem1.jsp");
                    rd.include(request,response);
    
}



%>