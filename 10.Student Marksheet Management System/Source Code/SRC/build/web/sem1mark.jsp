<%@page import="java.sql.*"%>
<%

 String sem=request.getParameter("sem");
 System.out.println(sem);
 String sid=request.getParameter("sid");             	 
    String m1=request.getParameter("m1");
String m2=request.getParameter("m2");
String m3=request.getParameter("m3");
String m4=request.getParameter("m4");
String m5=request.getParameter("m5");
String lm1=request.getParameter("lm1");
String lm2=request.getParameter("lm2");
String cgpa=request.getParameter("cgpa");
try{
    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/marksheet","root","root");
PreparedStatement ps=con.prepareStatement("update sem1 set m1='"+m1+"',m2='"+m2+"',m3='"+m3+"',m4='"+m4+"',m5='"+m5+"',lm1='"+lm1+"',lm2='"+lm2+"', cgpa='"+cgpa+"' where sid='"+sid+"' and sem='"+sem+"' ");
System.out.println(ps);

ps.executeUpdate();
                       
System.out.println(ps);
out.println("<script>"
        
                            +"alert('Add Semster Mark  Successfully')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/give.jsp");
                    rd.include(request, response);
}
catch(Exception e){
     out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("addmark1.jsp");
                    rd.include(request,response);
    
}



%>